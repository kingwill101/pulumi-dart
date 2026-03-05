import 'package:pulumi/pulumi.dart' as pulumi;
import 'kubernetes_permission_args.dart';
import 'kubernetes_permission_state.dart';

/// This resource will help you implement RBAC authorization for the kubernetes cluster, see [What is kubernetes permissions](https://www.alibabacloud.com/help/en/ack/ack-managed-and-ack-dedicated/developer-reference/api-grantpermissions).
///
/// &gt; **NOTE:** Please make sure that the target RAM user has been granted a RAM policy with at least read-only permission of the target cluster in the RAM console. Otherwise, the `ErrorRamPolicyConfig` error will be returned.
/// For more information about how to authorize a RAM user by attaching RAM policies, see [Create a custom RAM policy](https://www.alibabacloud.com/help/doc-detail/86485.htm).
///
/// &gt; **NOTE:** If you call this operation as a RAM user, make sure that this RAM user has the permissions to grant other RAM users the permissions to manage ACK clusters. Otherwise, the `StatusForbidden` or `ForbiddenGrantPermissions` errors will be returned. For more information, see [Use a RAM user to grant RBAC permissions to other RAM users](https://www.alibabacloud.com/help/faq-detail/119035.htm).
///
/// &gt; **NOTE:** This operation overwrites the permissions that have been granted to the specified RAM user. When you call this operation, make sure that the required permissions are included.
///
/// &gt; **NOTE:** Available since v1.122.0.
///
/// ## Example Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as random from "@pulumi/random";
/// import * as std from "@pulumi/std";
///
/// const defaultInteger = new random.index.Integer("default", {
///     max: 99999,
///     min: 10000,
/// });
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// // The cidr block used to launch a new vpc when 'vpc_id' is not specified.
/// const vpcCidr = config.get("vpcCidr") || "10.0.0.0/8";
/// // List of cidr blocks used to create several new vswitches when 'vswitch_ids' is not specified.
/// const vswitchCidrs = config.getObject<Array<string>>("vswitchCidrs") || [
///     "10.1.0.0/16",
///     "10.2.0.0/16",
/// ];
/// // The kubernetes service cidr block. It cannot be equals to vpc's or vswitch's or service's and cannot be in them.
/// const podCidr = config.get("podCidr") || "172.16.0.0/16";
/// // The kubernetes service cidr block. It cannot be equals to vpc's or vswitch's or pod's and cannot be in them.
/// const serviceCidr = config.get("serviceCidr") || "192.168.0.0/16";
/// const enhanced = alicloud.vpc.getEnhancedNatAvailableZones({});
/// const _default = alicloud.cs.getKubernetesVersion({
///     clusterType: "ManagedKubernetes",
/// });
/// const vpc = new alicloud.vpc.Network("vpc", {cidrBlock: vpcCidr});
/// // According to the vswitch cidr blocks to launch several vswitches
/// const defaultSwitch: alicloud.vpc.Switch[] = [];
/// for (const range = {value: 0}; range.value < vswitchCidrs.length; range.value++) {
///     defaultSwitch.push(new alicloud.vpc.Switch(`default-${range.value}`, {
///         vpcId: vpc.id,
///         cidrBlock: vswitchCidrs[range.value],
///         zoneId: enhanced.then(enhanced => enhanced.zones[range.value].zoneId),
///     }));
/// }
/// // Create a new RAM cluster.
/// const defaultManagedKubernetes = new alicloud.cs.ManagedKubernetes("default", {
///     name: `${name}-${defaultInteger.result}`,
///     clusterSpec: "ack.pro.small",
///     version: _default.then(_default => _default.metadatas?.[0]?.version),
///     workerVswitchIds: std.joinOutput({
///         separator: ",",
///         input: defaultSwitch.map(__item => __item.id),
///     }).apply(invoke => std.splitOutput({
///         separator: ",",
///         text: invoke.result,
///     })).apply(invoke => invoke.result),
///     newNatGateway: false,
///     podCidr: podCidr,
///     serviceCidr: serviceCidr,
///     slbInternetEnabled: false,
/// });
/// // Create a new RAM user.
/// const user = new alicloud.ram.User("user", {name: `${name}-${defaultInteger.result}`});
/// // Create a cluster permission for user.
/// const defaultKubernetesPermission = new alicloud.cs.KubernetesPermission("default", {
///     uid: user.id,
///     permissions: [{
///         cluster: defaultManagedKubernetes.id,
///         roleType: "cluster",
///         roleName: "admin",
///         namespace: "",
///         isCustom: false,
///         isRamRole: false,
///     }],
/// });
/// const attach = new alicloud.cs.KubernetesPermission("attach", {
///     uid: user.id,
///     permissions: [{
///         cluster: defaultManagedKubernetes.id,
///         roleType: "namespace",
///         roleName: "cs:dev",
///         namespace: "default",
///         isCustom: true,
///         isRamRole: false,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
/// import pulumi_std as std
///
/// default_integer = random.index.Integer("default",
///     max=99999,
///     min=10000)
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// # The cidr block used to launch a new vpc when 'vpc_id' is not specified.
/// vpc_cidr = config.get("vpcCidr")
/// if vpc_cidr is None:
///     vpc_cidr = "10.0.0.0/8"
/// # List of cidr blocks used to create several new vswitches when 'vswitch_ids' is not specified.
/// vswitch_cidrs = config.get_object("vswitchCidrs")
/// if vswitch_cidrs is None:
///     vswitch_cidrs = [
///         "10.1.0.0/16",
///         "10.2.0.0/16",
///     ]
/// # The kubernetes service cidr block. It cannot be equals to vpc's or vswitch's or service's and cannot be in them.
/// pod_cidr = config.get("podCidr")
/// if pod_cidr is None:
///     pod_cidr = "172.16.0.0/16"
/// # The kubernetes service cidr block. It cannot be equals to vpc's or vswitch's or pod's and cannot be in them.
/// service_cidr = config.get("serviceCidr")
/// if service_cidr is None:
///     service_cidr = "192.168.0.0/16"
/// enhanced = alicloud.vpc.get_enhanced_nat_available_zones()
/// default = alicloud.cs.get_kubernetes_version(cluster_type="ManagedKubernetes")
/// vpc = alicloud.vpc.Network("vpc", cidr_block=vpc_cidr)
/// # According to the vswitch cidr blocks to launch several vswitches
/// default_switch = []
/// for range in [{"value": i} for i in range(0, len(vswitch_cidrs))]:
///     default_switch.append(alicloud.vpc.Switch(f"default-{range['value']}",
///         vpc_id=vpc.id,
///         cidr_block=vswitch_cidrs[range["value"]],
///         zone_id=enhanced.zones[range["value"]].zone_id))
/// # Create a new RAM cluster.
/// default_managed_kubernetes = alicloud.cs.ManagedKubernetes("default",
///     name=f"{name}-{default_integer['result']}",
///     cluster_spec="ack.pro.small",
///     version=default.metadatas[0].version,
///     worker_vswitch_ids=std.join_output(separator=",",
///         input=[__item.id for __item in default_switch]).apply(lambda invoke: std.split_output(separator=",",
///         text=invoke.result)).apply(lambda invoke: invoke.result),
///     new_nat_gateway=False,
///     pod_cidr=pod_cidr,
///     service_cidr=service_cidr,
///     slb_internet_enabled=False)
/// # Create a new RAM user.
/// user = alicloud.ram.User("user", name=f"{name}-{default_integer['result']}")
/// # Create a cluster permission for user.
/// default_kubernetes_permission = alicloud.cs.KubernetesPermission("default",
///     uid=user.id,
///     permissions=[{
///         "cluster": default_managed_kubernetes.id,
///         "role_type": "cluster",
///         "role_name": "admin",
///         "namespace": "",
///         "is_custom": False,
///         "is_ram_role": False,
///     }])
/// attach = alicloud.cs.KubernetesPermission("attach",
///     uid=user.id,
///     permissions=[{
///         "cluster": default_managed_kubernetes.id,
///         "role_type": "namespace",
///         "role_name": "cs:dev",
///         "namespace": "default",
///         "is_custom": True,
///         "is_ram_role": False,
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var defaultInteger = new Random.Index.Integer("default", new()
///     {
///         Max = 99999,
///         Min = 10000,
///     });
///
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     // The cidr block used to launch a new vpc when 'vpc_id' is not specified.
///     var vpcCidr = config.Get("vpcCidr") ?? "10.0.0.0/8";
///     // List of cidr blocks used to create several new vswitches when 'vswitch_ids' is not specified.
///     var vswitchCidrs = config.GetObject<string[]>("vswitchCidrs") ?? new[]
///     {
///         "10.1.0.0/16",
///         "10.2.0.0/16",
///     };
///     // The kubernetes service cidr block. It cannot be equals to vpc's or vswitch's or service's and cannot be in them.
///     var podCidr = config.Get("podCidr") ?? "172.16.0.0/16";
///     // The kubernetes service cidr block. It cannot be equals to vpc's or vswitch's or pod's and cannot be in them.
///     var serviceCidr = config.Get("serviceCidr") ?? "192.168.0.0/16";
///     var enhanced = AliCloud.Vpc.GetEnhancedNatAvailableZones.Invoke();
///
///     var @default = AliCloud.CS.GetKubernetesVersion.Invoke(new()
///     {
///         ClusterType = "ManagedKubernetes",
///     });
///
///     var vpc = new AliCloud.Vpc.Network("vpc", new()
///     {
///         CidrBlock = vpcCidr,
///     });
///
///     // According to the vswitch cidr blocks to launch several vswitches
///     var defaultSwitch = new List<AliCloud.Vpc.Switch>();
///     for (var rangeIndex = 0; rangeIndex < vswitchCidrs.Length; rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         defaultSwitch.Add(new AliCloud.Vpc.Switch($"default-{range.Value}", new()
///         {
///             VpcId = vpc.Id,
///             CidrBlock = vswitchCidrs[range.Value],
///             ZoneId = enhanced.Apply(getEnhancedNatAvailableZonesResult => getEnhancedNatAvailableZonesResult.Zones)[range.Value].ZoneId,
///         }));
///     }
///     // Create a new RAM cluster.
///     var defaultManagedKubernetes = new AliCloud.CS.ManagedKubernetes("default", new()
///     {
///         Name = $"{name}-{defaultInteger.Result}",
///         ClusterSpec = "ack.pro.small",
///         Version = @default.Apply(@default => @default.Apply(getKubernetesVersionResult => getKubernetesVersionResult.Metadatas[0]?.Version)),
///         WorkerVswitchIds = Std.Join.Invoke(new()
///         {
///             Separator = ",",
///             Input = defaultSwitch.Select(__item => __item.Id).ToList(),
///         }).Apply(invoke => Std.Split.Invoke(new()
///         {
///             Separator = ",",
///             Text = invoke.Result,
///         })).Apply(invoke => invoke.Result),
///         NewNatGateway = false,
///         PodCidr = podCidr,
///         ServiceCidr = serviceCidr,
///         SlbInternetEnabled = false,
///     });
///
///     // Create a new RAM user.
///     var user = new AliCloud.Ram.User("user", new()
///     {
///         Name = $"{name}-{defaultInteger.Result}",
///     });
///
///     // Create a cluster permission for user.
///     var defaultKubernetesPermission = new AliCloud.CS.KubernetesPermission("default", new()
///     {
///         Uid = user.Id,
///         Permissions = new[]
///         {
///             new AliCloud.CS.Inputs.KubernetesPermissionPermissionArgs
///             {
///                 Cluster = defaultManagedKubernetes.Id,
///                 RoleType = "cluster",
///                 RoleName = "admin",
///                 Namespace = "",
///                 IsCustom = false,
///                 IsRamRole = false,
///             },
///         },
///     });
///
///     var attach = new AliCloud.CS.KubernetesPermission("attach", new()
///     {
///         Uid = user.Id,
///         Permissions = new[]
///         {
///             new AliCloud.CS.Inputs.KubernetesPermissionPermissionArgs
///             {
///                 Cluster = defaultManagedKubernetes.Id,
///                 RoleType = "namespace",
///                 RoleName = "cs:dev",
///                 Namespace = "default",
///                 IsCustom = true,
///                 IsRamRole = false,
///             },
///         },
///     });
///
/// });
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetEnhancedNatAvailableZonesArgs;
/// import com.pulumi.alicloud.cs.CsFunctions;
/// import com.pulumi.alicloud.cs.inputs.GetKubernetesVersionArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.cs.ManagedKubernetes;
/// import com.pulumi.alicloud.cs.ManagedKubernetesArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.JoinArgs;
/// import com.pulumi.std.inputs.SplitArgs;
/// import com.pulumi.alicloud.ram.User;
/// import com.pulumi.alicloud.ram.UserArgs;
/// import com.pulumi.alicloud.cs.KubernetesPermission;
/// import com.pulumi.alicloud.cs.KubernetesPermissionArgs;
/// import com.pulumi.alicloud.cs.inputs.KubernetesPermissionPermissionArgs;
/// import com.pulumi.codegen.internal.KeyedValue;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var config = ctx.config();
///         var defaultInteger = new Integer("defaultInteger", IntegerArgs.builder()
///             .max(99999)
///             .min(10000)
///             .build());
///
///         final var name = config.get("name").orElse("terraform-example");
///         final var vpcCidr = config.get("vpcCidr").orElse("10.0.0.0/8");
///         final var vswitchCidrs = config.get("vswitchCidrs").orElse(List.of(
///             "10.1.0.0/16",
///             "10.2.0.0/16"));
///         final var podCidr = config.get("podCidr").orElse("172.16.0.0/16");
///         final var serviceCidr = config.get("serviceCidr").orElse("192.168.0.0/16");
///         final var enhanced = VpcFunctions.getEnhancedNatAvailableZones(GetEnhancedNatAvailableZonesArgs.builder()
///             .build());
///
///         final var default = CsFunctions.getKubernetesVersion(GetKubernetesVersionArgs.builder()
///             .clusterType("ManagedKubernetes")
///             .build());
///
///         var vpc = new Network("vpc", NetworkArgs.builder()
///             .cidrBlock(vpcCidr)
///             .build());
///
///         // According to the vswitch cidr blocks to launch several vswitches
///         for (var i = 0; i < vswitchCidrs.length(); i++) {
///             new Switch("defaultSwitch-" + i, SwitchArgs.builder()
///                 .vpcId(vpc.id())
///                 .cidrBlock(vswitchCidrs[range.value()])
///                 .zoneId(enhanced.zones()[range.value()].zoneId())
///                 .build());
///
///
/// }
///         // Create a new RAM cluster.
///         var defaultManagedKubernetes = new ManagedKubernetes("defaultManagedKubernetes", ManagedKubernetesArgs.builder()
///             .name(String.format("%s-%s", name,defaultInteger.result()))
///             .clusterSpec("ack.pro.small")
///             .version(default_.metadatas()[0].version())
///             .workerVswitchIds(StdFunctions.join(JoinArgs.builder()
///                 .separator(",")
///                 .input(defaultSwitch.stream().map(element -> element.id()).collect(toList()))
///                 .build()).applyValue(_invoke -> StdFunctions.split(SplitArgs.builder()
///                 .separator(",")
///                 .text(_invoke.result())
///                 .build())).applyValue(_invoke -> _invoke.result()))
///             .newNatGateway(false)
///             .podCidr(podCidr)
///             .serviceCidr(serviceCidr)
///             .slbInternetEnabled(false)
///             .build());
///
///         // Create a new RAM user.
///         var user = new User("user", UserArgs.builder()
///             .name(String.format("%s-%s", name,defaultInteger.result()))
///             .build());
///
///         // Create a cluster permission for user.
///         var defaultKubernetesPermission = new KubernetesPermission("defaultKubernetesPermission", KubernetesPermissionArgs.builder()
///             .uid(user.id())
///             .permissions(KubernetesPermissionPermissionArgs.builder()
///                 .cluster(defaultManagedKubernetes.id())
///                 .roleType("cluster")
///                 .roleName("admin")
///                 .namespace("")
///                 .isCustom(false)
///                 .isRamRole(false)
///                 .build())
///             .build());
///
///         var attach = new KubernetesPermission("attach", KubernetesPermissionArgs.builder()
///             .uid(user.id())
///             .permissions(KubernetesPermissionPermissionArgs.builder()
///                 .cluster(defaultManagedKubernetes.id())
///                 .roleType("namespace")
///                 .roleName("cs:dev")
///                 .namespace("default")
///                 .isCustom(true)
///                 .isRamRole(false)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
class KubernetesPermission extends pulumi.CustomResource {
  /// A list of user permission. See `permissions` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> permissions;
  /// The ID of the Ram user, and it can also be the id of the Ram Role. If you use Ram Role id, you need to set `is_ram_role` to `true` during authorization.
  late final pulumi.Output<String> uid;

  /// Creates a new [KubernetesPermission].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [KubernetesPermission]. {@macro pulumi_cs_kubernetes_permission_kubernetes_permission_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  KubernetesPermission(
    String name, {
    KubernetesPermissionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cs/kubernetesPermission:KubernetesPermission',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    permissions = registerOutput<List<Map<String, dynamic>>?>('permissions');
    uid = registerOutput<String>('uid');
  }

  /// Gets an existing [KubernetesPermission] resource's state with the given [name] and [id].
  static KubernetesPermission get(
    String name,
    pulumi.Input<String> id, {
    KubernetesPermissionState? state,
  }) {
    return KubernetesPermission._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  KubernetesPermission._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cs/kubernetesPermission:KubernetesPermission',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    permissions = registerOutput<List<Map<String, dynamic>>?>('permissions');
    uid = registerOutput<String>('uid');
  }
}
