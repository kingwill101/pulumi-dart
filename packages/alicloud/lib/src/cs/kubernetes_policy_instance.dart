import 'package:pulumi/pulumi.dart' as pulumi;
import 'kubernetes_policy_instance_args.dart';

/// Provides a Container Service for Kubernetes (ACK) Policy Instance resource.
///
/// For information about Container Service for Kubernetes (ACK) Policy Instance and how to use it, see [What is Policy Instance](https://next.api.alibabacloud.com/document/CS/2015-12-15/DeployPolicyInstance).
///
/// > **NOTE:** Available since v1.266.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as random from "@pulumi/random";
/// import * as std from "@pulumi/std";
///
/// const config = new pulumi.Config();
/// const vpcCidr = config.get("vpcCidr") || "10.0.0.0/8";
/// const vswitchCidrs = config.getObject<Array<string>>("vswitchCidrs") || [
///     "10.1.0.0/16",
///     "10.2.0.0/16",
/// ];
/// const clusterName = config.get("clusterName") || "example-create-cluster";
/// const podCidr = config.get("podCidr") || "172.16.0.0/16";
/// const serviceCidr = config.get("serviceCidr") || "192.168.0.0/16";
/// const policyName = config.get("policyName") || "ACKPSPHostNetworkingPorts";
/// const enhanced = alicloud.vpc.getEnhancedNatAvailableZones({});
/// const _default = new random.index.Integer("default", {
///     max: 99999,
///     min: 10000,
/// });
/// const createVPC = new alicloud.vpc.Network("CreateVPC", {cidrBlock: vpcCidr});
/// // According to the vswitch cidr blocks to launch several vswitches
/// const createVSwitch: alicloud.vpc.Switch[] = [];
/// for (const range = {value: 0}; range.value < vswitchCidrs.length; range.value++) {
///     createVSwitch.push(new alicloud.vpc.Switch(`CreateVSwitch-${range.value}`, {
///         vpcId: createVPC.id,
///         cidrBlock: vswitchCidrs[range.value],
///         zoneId: enhanced.then(enhanced => enhanced.zones[range.value].zoneId),
///     }));
/// }
/// const createCluster = new alicloud.cs.ManagedKubernetes("CreateCluster", {
///     name: `${clusterName}-${_default.result}`,
///     clusterSpec: "ack.pro.small",
///     profile: "Default",
///     vswitchIds: std.joinOutput({
///         separator: ",",
///         input: createVSwitch.map(__item => __item.id),
///     }).apply(invoke => std.splitOutput({
///         separator: ",",
///         text: invoke.result,
///     })).apply(invoke => invoke.result),
///     podCidr: podCidr,
///     serviceCidr: serviceCidr,
///     isEnterpriseSecurityGroup: true,
///     ipStack: "ipv4",
///     proxyMode: "ipvs",
///     deletionProtection: false,
///     addons: [
///         {
///             name: "gatekeeper",
///         },
///         {
///             name: "loongcollector",
///         },
///         {
///             name: "policy-template-controller",
///         },
///     ],
///     operationPolicy: {
///         clusterAutoUpgrade: {
///             enabled: false,
///         },
///     },
///     maintenanceWindow: {
///         enable: false,
///     },
/// });
/// const defaultKubernetesPolicyInstance = new alicloud.cs.KubernetesPolicyInstance("default", {
///     clusterId: createCluster.id,
///     policyName: policyName,
///     action: "deny",
///     namespaces: ["test"],
///     parameters: {
///         hostNetwork: "true",
///         min: "20",
///         max: "200",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
/// import pulumi_std as std
///
/// config = pulumi.Config()
/// vpc_cidr = config.get("vpcCidr")
/// if vpc_cidr is None:
///     vpc_cidr = "10.0.0.0/8"
/// vswitch_cidrs = config.get_object("vswitchCidrs")
/// if vswitch_cidrs is None:
///     vswitch_cidrs = [
///         "10.1.0.0/16",
///         "10.2.0.0/16",
///     ]
/// cluster_name = config.get("clusterName")
/// if cluster_name is None:
///     cluster_name = "example-create-cluster"
/// pod_cidr = config.get("podCidr")
/// if pod_cidr is None:
///     pod_cidr = "172.16.0.0/16"
/// service_cidr = config.get("serviceCidr")
/// if service_cidr is None:
///     service_cidr = "192.168.0.0/16"
/// policy_name = config.get("policyName")
/// if policy_name is None:
///     policy_name = "ACKPSPHostNetworkingPorts"
/// enhanced = alicloud.vpc.get_enhanced_nat_available_zones()
/// default = random.index.Integer("default",
///     max=99999,
///     min=10000)
/// create_vpc = alicloud.vpc.Network("CreateVPC", cidr_block=vpc_cidr)
/// # According to the vswitch cidr blocks to launch several vswitches
/// create_v_switch = []
/// for range in [{"value": i} for i in range(0, len(vswitch_cidrs))]:
///     create_v_switch.append(alicloud.vpc.Switch(f"CreateVSwitch-{range['value']}",
///         vpc_id=create_vpc.id,
///         cidr_block=vswitch_cidrs[range["value"]],
///         zone_id=enhanced.zones[range["value"]].zone_id))
/// create_cluster = alicloud.cs.ManagedKubernetes("CreateCluster",
///     name=f"{cluster_name}-{default['result']}",
///     cluster_spec="ack.pro.small",
///     profile="Default",
///     vswitch_ids=std.join_output(separator=",",
///         input=[__item.id for __item in create_v_switch]).apply(lambda invoke: std.split_output(separator=",",
///         text=invoke.result)).apply(lambda invoke: invoke.result),
///     pod_cidr=pod_cidr,
///     service_cidr=service_cidr,
///     is_enterprise_security_group=True,
///     ip_stack="ipv4",
///     proxy_mode="ipvs",
///     deletion_protection=False,
///     addons=[
///         {
///             "name": "gatekeeper",
///         },
///         {
///             "name": "loongcollector",
///         },
///         {
///             "name": "policy-template-controller",
///         },
///     ],
///     operation_policy={
///         "cluster_auto_upgrade": {
///             "enabled": False,
///         },
///     },
///     maintenance_window={
///         "enable": False,
///     })
/// default_kubernetes_policy_instance = alicloud.cs.KubernetesPolicyInstance("default",
///     cluster_id=create_cluster.id,
///     policy_name=policy_name,
///     action="deny",
///     namespaces=["test"],
///     parameters={
///         "hostNetwork": "true",
///         "min": "20",
///         "max": "200",
///     })
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
///     var config = new Config();
///     var vpcCidr = config.Get("vpcCidr") ?? "10.0.0.0/8";
///     var vswitchCidrs = config.GetObject<string[]>("vswitchCidrs") ?? new[]
///     {
///         "10.1.0.0/16",
///         "10.2.0.0/16",
///     };
///     var clusterName = config.Get("clusterName") ?? "example-create-cluster";
///     var podCidr = config.Get("podCidr") ?? "172.16.0.0/16";
///     var serviceCidr = config.Get("serviceCidr") ?? "192.168.0.0/16";
///     var policyName = config.Get("policyName") ?? "ACKPSPHostNetworkingPorts";
///     var enhanced = AliCloud.Vpc.GetEnhancedNatAvailableZones.Invoke();
///
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Max = 99999,
///         Min = 10000,
///     });
///
///     var createVPC = new AliCloud.Vpc.Network("CreateVPC", new()
///     {
///         CidrBlock = vpcCidr,
///     });
///
///     // According to the vswitch cidr blocks to launch several vswitches
///     var createVSwitch = new List<AliCloud.Vpc.Switch>();
///     for (var rangeIndex = 0; rangeIndex < vswitchCidrs.Length; rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         createVSwitch.Add(new AliCloud.Vpc.Switch($"CreateVSwitch-{range.Value}", new()
///         {
///             VpcId = createVPC.Id,
///             CidrBlock = vswitchCidrs[range.Value],
///             ZoneId = enhanced.Apply(getEnhancedNatAvailableZonesResult => getEnhancedNatAvailableZonesResult.Zones)[range.Value].ZoneId,
///         }));
///     }
///     var createCluster = new AliCloud.CS.ManagedKubernetes("CreateCluster", new()
///     {
///         Name = $"{clusterName}-{@default.Result}",
///         ClusterSpec = "ack.pro.small",
///         Profile = "Default",
///         VswitchIds = Std.Join.Invoke(new()
///         {
///             Separator = ",",
///             Input = createVSwitch.Select(__item => __item.Id).ToList(),
///         }).Apply(invoke => Std.Split.Invoke(new()
///         {
///             Separator = ",",
///             Text = invoke.Result,
///         })).Apply(invoke => invoke.Result),
///         PodCidr = podCidr,
///         ServiceCidr = serviceCidr,
///         IsEnterpriseSecurityGroup = true,
///         IpStack = "ipv4",
///         ProxyMode = "ipvs",
///         DeletionProtection = false,
///         Addons = new[]
///         {
///             new AliCloud.CS.Inputs.ManagedKubernetesAddonArgs
///             {
///                 Name = "gatekeeper",
///             },
///             new AliCloud.CS.Inputs.ManagedKubernetesAddonArgs
///             {
///                 Name = "loongcollector",
///             },
///             new AliCloud.CS.Inputs.ManagedKubernetesAddonArgs
///             {
///                 Name = "policy-template-controller",
///             },
///         },
///         OperationPolicy = new AliCloud.CS.Inputs.ManagedKubernetesOperationPolicyArgs
///         {
///             ClusterAutoUpgrade = new AliCloud.CS.Inputs.ManagedKubernetesOperationPolicyClusterAutoUpgradeArgs
///             {
///                 Enabled = false,
///             },
///         },
///         MaintenanceWindow = new AliCloud.CS.Inputs.ManagedKubernetesMaintenanceWindowArgs
///         {
///             Enable = false,
///         },
///     });
///
///     var defaultKubernetesPolicyInstance = new AliCloud.CS.KubernetesPolicyInstance("default", new()
///     {
///         ClusterId = createCluster.Id,
///         PolicyName = policyName,
///         Action = "deny",
///         Namespaces = new[]
///         {
///             "test",
///         },
///         Parameters =
///         {
///             { "hostNetwork", "true" },
///             { "min", "20" },
///             { "max", "200" },
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
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetEnhancedNatAvailableZonesArgs;
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.cs.ManagedKubernetes;
/// import com.pulumi.alicloud.cs.ManagedKubernetesArgs;
/// import com.pulumi.alicloud.cs.inputs.ManagedKubernetesAddonArgs;
/// import com.pulumi.alicloud.cs.inputs.ManagedKubernetesOperationPolicyArgs;
/// import com.pulumi.alicloud.cs.inputs.ManagedKubernetesOperationPolicyClusterAutoUpgradeArgs;
/// import com.pulumi.alicloud.cs.inputs.ManagedKubernetesMaintenanceWindowArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.JoinArgs;
/// import com.pulumi.std.inputs.SplitArgs;
/// import com.pulumi.alicloud.cs.KubernetesPolicyInstance;
/// import com.pulumi.alicloud.cs.KubernetesPolicyInstanceArgs;
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
///         final var vpcCidr = config.get("vpcCidr").orElse("10.0.0.0/8");
///         final var vswitchCidrs = config.get("vswitchCidrs").orElse(List.of(
///             "10.1.0.0/16",
///             "10.2.0.0/16"));
///         final var clusterName = config.get("clusterName").orElse("example-create-cluster");
///         final var podCidr = config.get("podCidr").orElse("172.16.0.0/16");
///         final var serviceCidr = config.get("serviceCidr").orElse("192.168.0.0/16");
///         final var policyName = config.get("policyName").orElse("ACKPSPHostNetworkingPorts");
///         final var enhanced = VpcFunctions.getEnhancedNatAvailableZones(GetEnhancedNatAvailableZonesArgs.builder()
///             .build());
///
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .max(99999)
///             .min(10000)
///             .build());
///
///         var createVPC = new Network("createVPC", NetworkArgs.builder()
///             .cidrBlock(vpcCidr)
///             .build());
///
///         // According to the vswitch cidr blocks to launch several vswitches
///         for (var i = 0; i < vswitchCidrs.length(); i++) {
///             new Switch("createVSwitch-" + i, SwitchArgs.builder()
///                 .vpcId(createVPC.id())
///                 .cidrBlock(vswitchCidrs[range.value()])
///                 .zoneId(enhanced.zones()[range.value()].zoneId())
///                 .build());
///
///
/// }
///         var createCluster = new ManagedKubernetes("createCluster", ManagedKubernetesArgs.builder()
///             .name(String.format("%s-%s", clusterName,default_.result()))
///             .clusterSpec("ack.pro.small")
///             .profile("Default")
///             .vswitchIds(StdFunctions.join(JoinArgs.builder()
///                 .separator(",")
///                 .input(createVSwitch.stream().map(element -> element.id()).collect(toList()))
///                 .build()).applyValue(_invoke -> StdFunctions.split(SplitArgs.builder()
///                 .separator(",")
///                 .text(_invoke.result())
///                 .build())).applyValue(_invoke -> _invoke.result()))
///             .podCidr(podCidr)
///             .serviceCidr(serviceCidr)
///             .isEnterpriseSecurityGroup(true)
///             .ipStack("ipv4")
///             .proxyMode("ipvs")
///             .deletionProtection(false)
///             .addons(
///                 ManagedKubernetesAddonArgs.builder()
///                     .name("gatekeeper")
///                     .build(),
///                 ManagedKubernetesAddonArgs.builder()
///                     .name("loongcollector")
///                     .build(),
///                 ManagedKubernetesAddonArgs.builder()
///                     .name("policy-template-controller")
///                     .build())
///             .operationPolicy(ManagedKubernetesOperationPolicyArgs.builder()
///                 .clusterAutoUpgrade(ManagedKubernetesOperationPolicyClusterAutoUpgradeArgs.builder()
///                     .enabled(false)
///                     .build())
///                 .build())
///             .maintenanceWindow(ManagedKubernetesMaintenanceWindowArgs.builder()
///                 .enable(false)
///                 .build())
///             .build());
///
///         var defaultKubernetesPolicyInstance = new KubernetesPolicyInstance("defaultKubernetesPolicyInstance", KubernetesPolicyInstanceArgs.builder()
///             .clusterId(createCluster.id())
///             .policyName(policyName)
///             .action("deny")
///             .namespaces("test")
///             .parameters(Map.ofEntries(
///                 Map.entry("hostNetwork", "true"),
///                 Map.entry("min", "20"),
///                 Map.entry("max", "200")
///             ))
///             .build());
///
///     }
/// }
/// ```
///
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Container Service for Kubernetes (ACK) Policy Instance can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cs/kubernetesPolicyInstance:KubernetesPolicyInstance example <cluster_id>:<policy_name>:<instance_name>
/// ```
class KubernetesPolicyInstance extends pulumi.CustomResource {
  /// Policy Governance Implementation Actions
  late final pulumi.Output<String?> action;
  /// Target cluster ID
  late final pulumi.Output<String> clusterId;
  /// Rule Instance Name
  late final pulumi.Output<String> instanceName;
  /// Limits the namespace of the policy implementation. Empty indicates all namespaces.
  late final pulumi.Output<List<String>?> namespaces;
  /// The parameter configuration of the current rule instance. For more information about the parameters supported by each policy rule, see [Container Security Policy Rule Base Description](https://www.alibabacloud.com/help/doc-detail/359819.html).
  late final pulumi.Output<Map<String, String>?> parameters;
  /// Policy Name
  late final pulumi.Output<String> policyName;

  /// Creates a new [KubernetesPolicyInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [KubernetesPolicyInstance]. {@macro pulumi_cs_kubernetes_policy_instance_kubernetes_policy_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  KubernetesPolicyInstance(
    String name, {
    KubernetesPolicyInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cs/kubernetesPolicyInstance:KubernetesPolicyInstance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.action = registerOutput<String?>('action');
    this.clusterId = registerOutput<String>('clusterId');
    this.instanceName = registerOutput<String>('instanceName');
    this.namespaces = registerOutput<List<String>?>('namespaces');
    this.parameters = registerOutput<Map<String, String>?>('parameters');
    this.policyName = registerOutput<String>('policyName');
  }
}
