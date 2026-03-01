import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_kubernetes_addon.dart';
import 'managed_kubernetes_args.dart';
import 'managed_kubernetes_audit_log_config.dart';
import 'managed_kubernetes_auto_mode.dart';
import 'managed_kubernetes_certificate_authority.dart';
import 'managed_kubernetes_connections.dart';
import 'managed_kubernetes_delete_option.dart';
import 'managed_kubernetes_maintenance_window.dart';
import 'managed_kubernetes_operation_policy.dart';
import 'managed_kubernetes_rrsa_metadata.dart';
import 'managed_kubernetes_upgrade_policy.dart';

/// This resource will help you to manage a ManagedKubernetes Cluster in Alibaba Cloud Kubernetes Service.
///
/// > **NOTE:** Available since v1.26.0.
///
/// > **NOTE:** It is recommended to create a cluster with zero worker nodes, and then use a node pool to manage the cluster nodes.
///
/// > **NOTE:** Kubernetes cluster only supports VPC network and it can access internet while creating kubernetes cluster.
/// A Nat Gateway and configuring a SNAT for it can ensure one VPC network access internet. If there is no nat gateway in the
/// VPC, you can set `new_nat_gateway` to "true" to create one automatically.
///
/// > **NOTE:** Creating kubernetes cluster need to install several packages and it will cost about 15 minutes. Please be patient.
///
/// > **NOTE:** From version 1.9.4, the provider supports to download kube config, client certificate, client key and cluster ca certificate
/// after creating cluster successfully, and you can put them into the specified location, like '~/.kube/config'.
///
/// > **NOTE:** From version 1.20.0, the provider supports disabling internet load balancer for API Server by setting `false` to `slb_internet_enabled`.
///
/// > **NOTE:** If you want to manage Kubernetes, you can use Kubernetes Provider.
///
/// > **NOTE:** You need to activate several other products and confirm Authorization Policy used by Container Service before using this resource.
/// Please refer to the `Authorization management` and `Cluster management` sections in the [Document Center](https://www.alibabacloud.com/help/doc-detail/86488.htm).
///
/// > **NOTE:** From version 1.72.0, Some parameters have been removed from resource,You can check them below and re-import the cluster if necessary.
///
/// > **NOTE:** From version 1.120.0, Support for cluster migration from Standard cluster to professional.
///
/// > **NOTE:** From version 1.177.0, `runtime`,`enable_ssh`,`rds_instances`,`exclude_autoscaler_nodes`,`worker_number`,`worker_instance_types`,`password`,`key_name`,`kms_encrypted_password`,`kms_encryption_context`,`worker_instance_charge_type`,`worker_period`,`worker_period_unit`,`worker_auto_renew`,`worker_auto_renew_period`,`worker_disk_category`,`worker_disk_size`,`worker_data_disks`,`node_name_mode`,`node_port_range`,`os_type`,`platform`,`image_id`,`cpu_policy`,`user_data`,`taints`,`worker_disk_performance_level`,`worker_disk_snapshot_policy_id`,`install_cloud_monitor` are deprecated.
/// We Suggest you using resource **`alicloud.cs.NodePool`** to manage your cluster worker nodes.
///
/// > **NOTE:** From version 1.212.0, `runtime`,`enable_ssh`,`rds_instances`,`exclude_autoscaler_nodes`,`worker_number`,`worker_instance_types`,`password`,`key_name`,`kms_encrypted_password`,`kms_encryption_context`,`worker_instance_charge_type`,`worker_period`,`worker_period_unit`,`worker_auto_renew`,`worker_auto_renew_period`,`worker_disk_category`,`worker_disk_size`,`worker_data_disks`,`node_name_mode`,`node_port_range`,`os_type`,`platform`,`image_id`,`cpu_policy`,`user_data`,`taints`,`worker_disk_performance_level`,`worker_disk_snapshot_policy_id`,`install_cloud_monitor`,`kube_config`,`availability_zone` are removed.
/// Please use resource **`alicloud.cs.NodePool`** to manage your cluster worker nodes.
///
/// ## Example Usage
///
/// ACK cluster
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as std from "@pulumi/std";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf-example";
/// // Existing vpc id used to create several vswitches and other resources.
/// const vpcId = config.get("vpcId") || "";
/// // The cidr block used to launch a new vpc when 'vpc_id' is not specified.
/// const vpcCidr = config.get("vpcCidr") || "10.0.0.0/8";
/// // List of existing vswitch id.
/// const vswitchIds = config.getObject<Array<string>>("vswitchIds") || [];
/// // List of cidr blocks used to create several new vswitches when 'vswitch_ids' is not specified.
/// const vswitchCidrs = config.getObject<Array<string>>("vswitchCidrs") || [
///     "10.1.0.0/16",
///     "10.2.0.0/16",
/// ];
/// // Proxy mode is option of kube-proxy.
/// const proxyMode = config.get("proxyMode") || "ipvs";
/// // The kubernetes service cidr block. It cannot be equals to vpc's or vswitch's or pod's and cannot be in them.
/// const serviceCidr = config.get("serviceCidr") || "192.168.0.0/16";
/// // List of existing vswitch ids for terway.
/// const terwayVswitchIds = config.getObject<Array<string>>("terwayVswitchIds") || [];
/// // List of cidr blocks used to create several new vswitches when 'terway_vswitch_cidrs' is not specified.
/// const terwayVswitchCidrs = config.getObject<Array<string>>("terwayVswitchCidrs") || [
///     "10.4.0.0/16",
///     "10.5.0.0/16",
/// ];
/// const enhanced = alicloud.vpc.getEnhancedNatAvailableZones({});
/// // If there is not specifying vpc_id, the module will launch a new vpc
/// const vpc: alicloud.vpc.Network[] = [];
/// for (const range = {value: 0}; range.value < (vpcId == "" ? 1 : 0); range.value++) {
///     vpc.push(new alicloud.vpc.Network(`vpc-${range.value}`, {cidrBlock: vpcCidr}));
/// }
/// // According to the vswitch cidr blocks to launch several vswitches
/// const vswitches: alicloud.vpc.Switch[] = [];
/// for (const range = {value: 0}; range.value < (vswitchIds.length > 0 ? 0 : vswitchCidrs.length); range.value++) {
///     vswitches.push(new alicloud.vpc.Switch(`vswitches-${range.value}`, {
///         vpcId: vpcId == "" ? std.joinOutput({
///             separator: "",
///             input: vpc.map(__item => __item.id),
///         }).apply(invoke => invoke.result) : vpcId,
///         cidrBlock: vswitchCidrs[range.value],
///         zoneId: enhanced.then(enhanced => enhanced.zones[range.value].zoneId),
///     }));
/// }
/// // According to the vswitch cidr blocks to launch several vswitches
/// const terwayVswitches: alicloud.vpc.Switch[] = [];
/// for (const range = {value: 0}; range.value < (terwayVswitchIds.length > 0 ? 0 : terwayVswitchCidrs.length); range.value++) {
///     terwayVswitches.push(new alicloud.vpc.Switch(`terway_vswitches-${range.value}`, {
///         vpcId: vpcId == "" ? std.joinOutput({
///             separator: "",
///             input: vpc.map(__item => __item.id),
///         }).apply(invoke => invoke.result) : vpcId,
///         cidrBlock: terwayVswitchCidrs[range.value],
///         zoneId: enhanced.then(enhanced => enhanced.zones[range.value].zoneId),
///     }));
/// }
/// const k8s = new alicloud.cs.ManagedKubernetes("k8s", {
///     name: name,
///     clusterSpec: "ack.pro.small",
///     vswitchIds: vswitchIds.length > 0 ? std.join({
///         separator: ",",
///         input: vswitchIds,
///     }).then(invoke => std.split({
///         separator: ",",
///         text: invoke.result,
///     })).then(invoke => invoke.result) : vswitchCidrs.length < 1 ? [] : std.joinOutput({
///         separator: ",",
///         input: vswitches.map(__item => __item.id),
///     }).apply(invoke => std.splitOutput({
///         separator: ",",
///         text: invoke.result,
///     })).apply(invoke => invoke.result),
///     podVswitchIds: terwayVswitchIds.length > 0 ? std.join({
///         separator: ",",
///         input: terwayVswitchIds,
///     }).then(invoke => std.split({
///         separator: ",",
///         text: invoke.result,
///     })).then(invoke => invoke.result) : terwayVswitchCidrs.length < 1 ? [] : std.joinOutput({
///         separator: ",",
///         input: terwayVswitches.map(__item => __item.id),
///     }).apply(invoke => std.splitOutput({
///         separator: ",",
///         text: invoke.result,
///     })).apply(invoke => invoke.result),
///     newNatGateway: true,
///     proxyMode: proxyMode,
///     serviceCidr: serviceCidr,
///     skipSetCertificateAuthority: true,
///     addons: [
///         {
///             name: "terway-eniip",
///         },
///         {
///             name: "csi-plugin",
///         },
///         {
///             name: "csi-provisioner",
///         },
///         {
///             name: "logtail-ds",
///             config: JSON.stringify({
///                 IngressDashboardEnabled: "true",
///             }),
///         },
///         {
///             name: "nginx-ingress-controller",
///             config: JSON.stringify({
///                 IngressSlbNetworkType: "internet",
///             }),
///         },
///         {
///             name: "arms-prometheus",
///         },
///         {
///             name: "ack-node-problem-detector",
///             config: JSON.stringify({}),
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_alicloud as alicloud
/// import pulumi_std as std
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-example"
/// # Existing vpc id used to create several vswitches and other resources.
/// vpc_id = config.get("vpcId")
/// if vpc_id is None:
///     vpc_id = ""
/// # The cidr block used to launch a new vpc when 'vpc_id' is not specified.
/// vpc_cidr = config.get("vpcCidr")
/// if vpc_cidr is None:
///     vpc_cidr = "10.0.0.0/8"
/// # List of existing vswitch id.
/// vswitch_ids = config.get_object("vswitchIds")
/// if vswitch_ids is None:
///     vswitch_ids = []
/// # List of cidr blocks used to create several new vswitches when 'vswitch_ids' is not specified.
/// vswitch_cidrs = config.get_object("vswitchCidrs")
/// if vswitch_cidrs is None:
///     vswitch_cidrs = [
///         "10.1.0.0/16",
///         "10.2.0.0/16",
///     ]
/// # Proxy mode is option of kube-proxy.
/// proxy_mode = config.get("proxyMode")
/// if proxy_mode is None:
///     proxy_mode = "ipvs"
/// # The kubernetes service cidr block. It cannot be equals to vpc's or vswitch's or pod's and cannot be in them.
/// service_cidr = config.get("serviceCidr")
/// if service_cidr is None:
///     service_cidr = "192.168.0.0/16"
/// # List of existing vswitch ids for terway.
/// terway_vswitch_ids = config.get_object("terwayVswitchIds")
/// if terway_vswitch_ids is None:
///     terway_vswitch_ids = []
/// # List of cidr blocks used to create several new vswitches when 'terway_vswitch_cidrs' is not specified.
/// terway_vswitch_cidrs = config.get_object("terwayVswitchCidrs")
/// if terway_vswitch_cidrs is None:
///     terway_vswitch_cidrs = [
///         "10.4.0.0/16",
///         "10.5.0.0/16",
///     ]
/// enhanced = alicloud.vpc.get_enhanced_nat_available_zones()
/// # If there is not specifying vpc_id, the module will launch a new vpc
/// vpc = []
/// for range in [{"value": i} for i in range(0, 1 if vpc_id ==  else 0)]:
///     vpc.append(alicloud.vpc.Network(f"vpc-{range['value']}", cidr_block=vpc_cidr))
/// # According to the vswitch cidr blocks to launch several vswitches
/// vswitches = []
/// for range in [{"value": i} for i in range(0, 0 if len(vswitch_ids) > 0 else len(vswitch_cidrs))]:
///     vswitches.append(alicloud.vpc.Switch(f"vswitches-{range['value']}",
///         vpc_id=std.join_output(separator="",
///             input=[__item.id for __item in vpc]).apply(lambda invoke: invoke.result) if vpc_id == "" else vpc_id,
///         cidr_block=vswitch_cidrs[range["value"]],
///         zone_id=enhanced.zones[range["value"]].zone_id))
/// # According to the vswitch cidr blocks to launch several vswitches
/// terway_vswitches = []
/// for range in [{"value": i} for i in range(0, 0 if len(terway_vswitch_ids) > 0 else len(terway_vswitch_cidrs))]:
///     terway_vswitches.append(alicloud.vpc.Switch(f"terway_vswitches-{range['value']}",
///         vpc_id=std.join_output(separator="",
///             input=[__item.id for __item in vpc]).apply(lambda invoke: invoke.result) if vpc_id == "" else vpc_id,
///         cidr_block=terway_vswitch_cidrs[range["value"]],
///         zone_id=enhanced.zones[range["value"]].zone_id))
/// k8s = alicloud.cs.ManagedKubernetes("k8s",
///     name=name,
///     cluster_spec="ack.pro.small",
///     vswitch_ids=std.split(separator=",",
///         text=std.join(separator=",",
///             input=vswitch_ids).result).result if len(vswitch_ids) > 0 else [] if len(vswitch_cidrs) < 1 else std.join_output(separator=",",
///         input=[__item.id for __item in vswitches]).apply(lambda invoke: std.split_output(separator=",",
///         text=invoke.result)).apply(lambda invoke: invoke.result),
///     pod_vswitch_ids=std.split(separator=",",
///         text=std.join(separator=",",
///             input=terway_vswitch_ids).result).result if len(terway_vswitch_ids) > 0 else [] if len(terway_vswitch_cidrs) < 1 else std.join_output(separator=",",
///         input=[__item.id for __item in terway_vswitches]).apply(lambda invoke: std.split_output(separator=",",
///         text=invoke.result)).apply(lambda invoke: invoke.result),
///     new_nat_gateway=True,
///     proxy_mode=proxy_mode,
///     service_cidr=service_cidr,
///     skip_set_certificate_authority=True,
///     addons=[
///         {
///             "name": "terway-eniip",
///         },
///         {
///             "name": "csi-plugin",
///         },
///         {
///             "name": "csi-provisioner",
///         },
///         {
///             "name": "logtail-ds",
///             "config": json.dumps({
///                 "IngressDashboardEnabled": "true",
///             }),
///         },
///         {
///             "name": "nginx-ingress-controller",
///             "config": json.dumps({
///                 "IngressSlbNetworkType": "internet",
///             }),
///         },
///         {
///             "name": "arms-prometheus",
///         },
///         {
///             "name": "ack-node-problem-detector",
///             "config": json.dumps({}),
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "tf-example";
///     // Existing vpc id used to create several vswitches and other resources.
///     var vpcId = config.Get("vpcId") ?? "";
///     // The cidr block used to launch a new vpc when 'vpc_id' is not specified.
///     var vpcCidr = config.Get("vpcCidr") ?? "10.0.0.0/8";
///     // List of existing vswitch id.
///     var vswitchIds = config.GetObject<string[]>("vswitchIds") ?? new[] {};
///     // List of cidr blocks used to create several new vswitches when 'vswitch_ids' is not specified.
///     var vswitchCidrs = config.GetObject<string[]>("vswitchCidrs") ?? new[]
///     {
///         "10.1.0.0/16",
///         "10.2.0.0/16",
///     };
///     // Proxy mode is option of kube-proxy.
///     var proxyMode = config.Get("proxyMode") ?? "ipvs";
///     // The kubernetes service cidr block. It cannot be equals to vpc's or vswitch's or pod's and cannot be in them.
///     var serviceCidr = config.Get("serviceCidr") ?? "192.168.0.0/16";
///     // List of existing vswitch ids for terway.
///     var terwayVswitchIds = config.GetObject<string[]>("terwayVswitchIds") ?? new[] {};
///     // List of cidr blocks used to create several new vswitches when 'terway_vswitch_cidrs' is not specified.
///     var terwayVswitchCidrs = config.GetObject<string[]>("terwayVswitchCidrs") ?? new[]
///     {
///         "10.4.0.0/16",
///         "10.5.0.0/16",
///     };
///     var enhanced = AliCloud.Vpc.GetEnhancedNatAvailableZones.Invoke();
///
///     // If there is not specifying vpc_id, the module will launch a new vpc
///     var vpc = new List<AliCloud.Vpc.Network>();
///     for (var rangeIndex = 0; rangeIndex < (vpcId == "" ? 1 : 0); rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         vpc.Add(new AliCloud.Vpc.Network($"vpc-{range.Value}", new()
///         {
///             CidrBlock = vpcCidr,
///         }));
///     }
///     // According to the vswitch cidr blocks to launch several vswitches
///     var vswitches = new List<AliCloud.Vpc.Switch>();
///     for (var rangeIndex = 0; rangeIndex < (vswitchIds.Length > 0 ? 0 : vswitchCidrs.Length); rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         vswitches.Add(new AliCloud.Vpc.Switch($"vswitches-{range.Value}", new()
///         {
///             VpcId = vpcId == "" ? Std.Join.Invoke(new()
///             {
///                 Separator = "",
///                 Input = vpc.Select(__item => __item.Id).ToList(),
///             }).Apply(invoke => invoke.Result) : vpcId,
///             CidrBlock = vswitchCidrs[range.Value],
///             ZoneId = enhanced.Apply(getEnhancedNatAvailableZonesResult => getEnhancedNatAvailableZonesResult.Zones)[range.Value].ZoneId,
///         }));
///     }
///     // According to the vswitch cidr blocks to launch several vswitches
///     var terwayVswitches = new List<AliCloud.Vpc.Switch>();
///     for (var rangeIndex = 0; rangeIndex < (terwayVswitchIds.Length > 0 ? 0 : terwayVswitchCidrs.Length); rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         terwayVswitches.Add(new AliCloud.Vpc.Switch($"terway_vswitches-{range.Value}", new()
///         {
///             VpcId = vpcId == "" ? Std.Join.Invoke(new()
///             {
///                 Separator = "",
///                 Input = vpc.Select(__item => __item.Id).ToList(),
///             }).Apply(invoke => invoke.Result) : vpcId,
///             CidrBlock = terwayVswitchCidrs[range.Value],
///             ZoneId = enhanced.Apply(getEnhancedNatAvailableZonesResult => getEnhancedNatAvailableZonesResult.Zones)[range.Value].ZoneId,
///         }));
///     }
///     var k8s = new AliCloud.CS.ManagedKubernetes("k8s", new()
///     {
///         Name = name,
///         ClusterSpec = "ack.pro.small",
///         VswitchIds = vswitchIds.Length > 0 ? Std.Join.Invoke(new()
///         {
///             Separator = ",",
///             Input = vswitchIds,
///         }).Apply(invoke => Std.Split.Invoke(new()
///         {
///             Separator = ",",
///             Text = invoke.Result,
///         })).Apply(invoke => invoke.Result) : vswitchCidrs.Length < 1 ? new[] {} : Std.Join.Invoke(new()
///         {
///             Separator = ",",
///             Input = vswitches.Select(__item => __item.Id).ToList(),
///         }).Apply(invoke => Std.Split.Invoke(new()
///         {
///             Separator = ",",
///             Text = invoke.Result,
///         })).Apply(invoke => invoke.Result),
///         PodVswitchIds = terwayVswitchIds.Length > 0 ? Std.Join.Invoke(new()
///         {
///             Separator = ",",
///             Input = terwayVswitchIds,
///         }).Apply(invoke => Std.Split.Invoke(new()
///         {
///             Separator = ",",
///             Text = invoke.Result,
///         })).Apply(invoke => invoke.Result) : terwayVswitchCidrs.Length < 1 ? new[] {} : Std.Join.Invoke(new()
///         {
///             Separator = ",",
///             Input = terwayVswitches.Select(__item => __item.Id).ToList(),
///         }).Apply(invoke => Std.Split.Invoke(new()
///         {
///             Separator = ",",
///             Text = invoke.Result,
///         })).Apply(invoke => invoke.Result),
///         NewNatGateway = true,
///         ProxyMode = proxyMode,
///         ServiceCidr = serviceCidr,
///         SkipSetCertificateAuthority = true,
///         Addons = new[]
///         {
///             new AliCloud.CS.Inputs.ManagedKubernetesAddonArgs
///             {
///                 Name = "terway-eniip",
///             },
///             new AliCloud.CS.Inputs.ManagedKubernetesAddonArgs
///             {
///                 Name = "csi-plugin",
///             },
///             new AliCloud.CS.Inputs.ManagedKubernetesAddonArgs
///             {
///                 Name = "csi-provisioner",
///             },
///             new AliCloud.CS.Inputs.ManagedKubernetesAddonArgs
///             {
///                 Name = "logtail-ds",
///                 Config = JsonSerializer.Serialize(new Dictionary<string, object?>
///                 {
///                     ["IngressDashboardEnabled"] = "true",
///                 }),
///             },
///             new AliCloud.CS.Inputs.ManagedKubernetesAddonArgs
///             {
///                 Name = "nginx-ingress-controller",
///                 Config = JsonSerializer.Serialize(new Dictionary<string, object?>
///                 {
///                     ["IngressSlbNetworkType"] = "internet",
///                 }),
///             },
///             new AliCloud.CS.Inputs.ManagedKubernetesAddonArgs
///             {
///                 Name = "arms-prometheus",
///             },
///             new AliCloud.CS.Inputs.ManagedKubernetesAddonArgs
///             {
///                 Name = "ack-node-problem-detector",
///                 Config = JsonSerializer.Serialize(new Dictionary<string, object?>
///                 {
///                 }),
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
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetEnhancedNatAvailableZonesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.JoinArgs;
/// import com.pulumi.alicloud.cs.ManagedKubernetes;
/// import com.pulumi.alicloud.cs.ManagedKubernetesArgs;
/// import com.pulumi.alicloud.cs.inputs.ManagedKubernetesAddonArgs;
/// import com.pulumi.std.inputs.SplitArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         final var name = config.get("name").orElse("tf-example");
///         final var vpcId = config.get("vpcId").orElse("");
///         final var vpcCidr = config.get("vpcCidr").orElse("10.0.0.0/8");
///         final var vswitchIds = config.get("vswitchIds").orElse(List.of());
///         final var vswitchCidrs = config.get("vswitchCidrs").orElse(List.of(
///             "10.1.0.0/16",
///             "10.2.0.0/16"));
///         final var proxyMode = config.get("proxyMode").orElse("ipvs");
///         final var serviceCidr = config.get("serviceCidr").orElse("192.168.0.0/16");
///         final var terwayVswitchIds = config.get("terwayVswitchIds").orElse(List.of());
///         final var terwayVswitchCidrs = config.get("terwayVswitchCidrs").orElse(List.of(
///             "10.4.0.0/16",
///             "10.5.0.0/16"));
///         final var enhanced = VpcFunctions.getEnhancedNatAvailableZones(GetEnhancedNatAvailableZonesArgs.builder()
///             .build());
///
///         // If there is not specifying vpc_id, the module will launch a new vpc
///         for (var i = 0; i < (vpcId == "" ? 1 : 0); i++) {
///             new Network("vpc-" + i, NetworkArgs.builder()
///                 .cidrBlock(vpcCidr)
///                 .build());
///
///
/// }
///         // According to the vswitch cidr blocks to launch several vswitches
///         for (var i = 0; i < (vswitchIds.length() > 0 ? 0 : vswitchCidrs.length()); i++) {
///             new Switch("vswitches-" + i, SwitchArgs.builder()
///                 .vpcId(vpcId == "" ? StdFunctions.join(JoinArgs.builder()
///                     .separator("")
///                     .input(vpc.stream().map(element -> element.id()).collect(toList()))
///                     .build()).applyValue(_invoke -> _invoke.result()) : vpcId)
///                 .cidrBlock(vswitchCidrs[range.value()])
///                 .zoneId(enhanced.zones()[range.value()].zoneId())
///                 .build());
///
///
/// }
///         // According to the vswitch cidr blocks to launch several vswitches
///         for (var i = 0; i < (terwayVswitchIds.length() > 0 ? 0 : terwayVswitchCidrs.length()); i++) {
///             new Switch("terwayVswitches-" + i, SwitchArgs.builder()
///                 .vpcId(vpcId == "" ? StdFunctions.join(JoinArgs.builder()
///                     .separator("")
///                     .input(vpc.stream().map(element -> element.id()).collect(toList()))
///                     .build()).applyValue(_invoke -> _invoke.result()) : vpcId)
///                 .cidrBlock(terwayVswitchCidrs[range.value()])
///                 .zoneId(enhanced.zones()[range.value()].zoneId())
///                 .build());
///
///
/// }
///         var k8s = new ManagedKubernetes("k8s", ManagedKubernetesArgs.builder()
///             .name(name)
///             .clusterSpec("ack.pro.small")
///             .vswitchIds(vswitchIds.length() > 0 ? StdFunctions.split(SplitArgs.builder()
///                 .separator(",")
///                 .text(StdFunctions.join(JoinArgs.builder()
///                     .separator(",")
///                     .input(vswitchIds)
///                     .build()).result())
///                 .build()).result() : vswitchCidrs.length() < 1 ?  : StdFunctions.join(JoinArgs.builder()
///                 .separator(",")
///                 .input(vswitches.stream().map(element -> element.id()).collect(toList()))
///                 .build()).applyValue(_invoke -> StdFunctions.split(SplitArgs.builder()
///                 .separator(",")
///                 .text(_invoke.result())
///                 .build())).applyValue(_invoke -> _invoke.result()))
///             .podVswitchIds(terwayVswitchIds.length() > 0 ? StdFunctions.split(SplitArgs.builder()
///                 .separator(",")
///                 .text(StdFunctions.join(JoinArgs.builder()
///                     .separator(",")
///                     .input(terwayVswitchIds)
///                     .build()).result())
///                 .build()).result() : terwayVswitchCidrs.length() < 1 ?  : StdFunctions.join(JoinArgs.builder()
///                 .separator(",")
///                 .input(terwayVswitches.stream().map(element -> element.id()).collect(toList()))
///                 .build()).applyValue(_invoke -> StdFunctions.split(SplitArgs.builder()
///                 .separator(",")
///                 .text(_invoke.result())
///                 .build())).applyValue(_invoke -> _invoke.result()))
///             .newNatGateway(true)
///             .proxyMode(proxyMode)
///             .serviceCidr(serviceCidr)
///             .skipSetCertificateAuthority(true)
///             .addons(
///                 ManagedKubernetesAddonArgs.builder()
///                     .name("terway-eniip")
///                     .build(),
///                 ManagedKubernetesAddonArgs.builder()
///                     .name("csi-plugin")
///                     .build(),
///                 ManagedKubernetesAddonArgs.builder()
///                     .name("csi-provisioner")
///                     .build(),
///                 ManagedKubernetesAddonArgs.builder()
///                     .name("logtail-ds")
///                     .config(serializeJson(
///                         jsonObject(
///                             jsonProperty("IngressDashboardEnabled", "true")
///                         )))
///                     .build(),
///                 ManagedKubernetesAddonArgs.builder()
///                     .name("nginx-ingress-controller")
///                     .config(serializeJson(
///                         jsonObject(
///                             jsonProperty("IngressSlbNetworkType", "internet")
///                         )))
///                     .build(),
///                 ManagedKubernetesAddonArgs.builder()
///                     .name("arms-prometheus")
///                     .build(),
///                 ManagedKubernetesAddonArgs.builder()
///                     .name("ack-node-problem-detector")
///                     .config(serializeJson(
///                         jsonObject(
///
///                         )))
///                     .build())
///             .build());
///
///     }
/// }
/// ```
///
///
/// ACK Cluster with Auto Mode
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "auto-mode";
/// // Proxy mode is option of kube-proxy.
/// const proxyMode = config.get("proxyMode") || "ipvs";
/// // The kubernetes service cidr block.
/// const serviceCidr = config.get("serviceCidr") || "192.168.0.0/16";
/// const enhanced = alicloud.vpc.getEnhancedNatAvailableZones({});
/// const auto_mode = new alicloud.cs.ManagedKubernetes("auto-mode", {
///     name: name,
///     clusterSpec: "ack.pro.small",
///     zoneIds: [enhanced.then(enhanced => enhanced.zones?.[0]?.zoneId)],
///     newNatGateway: true,
///     isEnterpriseSecurityGroup: true,
///     slbInternetEnabled: false,
///     skipSetCertificateAuthority: true,
///     proxyMode: proxyMode,
///     serviceCidr: serviceCidr,
///     ipStack: "ipv4",
///     deletionProtection: true,
///     autoMode: {
///         enabled: true,
///     },
///     maintenanceWindow: {
///         duration: "3h",
///         weeklyPeriod: "Monday",
///         enable: true,
///         maintenanceTime: "2025-07-07T00:00:00.000+08:00",
///     },
///     operationPolicy: {
///         clusterAutoUpgrade: {
///             channel: "stable",
///             enabled: true,
///         },
///     },
///     controlPlaneLogComponents: [
///         "apiserver",
///         "kcm",
///         "scheduler",
///         "ccm",
///         "controlplane-events",
///         "alb",
///         "ack-goatscaler",
///         "coredns",
///         "gatekeeper",
///     ],
///     controlPlaneLogTtl: "30",
///     auditLogConfig: {
///         enabled: true,
///     },
///     addons: [
///         {
///             name: "metrics-server",
///         },
///         {
///             name: "managed-coredns",
///         },
///         {
///             name: "managed-security-inspector",
///         },
///         {
///             name: "ack-cost-exporter",
///         },
///         {
///             name: "terway-controlplane",
///             config: JSON.stringify({
///                 ENITrunking: "true",
///             }),
///         },
///         {
///             name: "terway-eniip",
///             config: JSON.stringify({
///                 NetworkPolicy: "false",
///                 ENITrunking: "true",
///                 IPVlan: "false",
///             }),
///         },
///         {
///             name: "csi-plugin",
///         },
///         {
///             name: "managed-csiprovisioner",
///         },
///         {
///             name: "storage-operator",
///             config: JSON.stringify({
///                 CnfsOssEnable: "false",
///                 CnfsNasEnable: "false",
///             }),
///         },
///         {
///             name: "loongcollector",
///             config: JSON.stringify({
///                 IngressDashboardEnabled: "true",
///             }),
///         },
///         {
///             name: "ack-node-problem-detector",
///             config: JSON.stringify({
///                 sls_project_name: "",
///             }),
///         },
///         {
///             name: "nginx-ingress-controller",
///             disabled: true,
///         },
///         {
///             name: "alb-ingress-controller",
///             config: JSON.stringify({
///                 albIngress: {
///                     CreateDefaultALBConfig: false,
///                 },
///             }),
///         },
///         {
///             name: "arms-prometheus",
///             config: JSON.stringify({
///                 prometheusMode: "default",
///             }),
///         },
///         {
///             name: "alicloud-monitor-controller",
///         },
///         {
///             name: "managed-aliyun-acr-credential-helper",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "auto-mode"
/// # Proxy mode is option of kube-proxy.
/// proxy_mode = config.get("proxyMode")
/// if proxy_mode is None:
///     proxy_mode = "ipvs"
/// # The kubernetes service cidr block.
/// service_cidr = config.get("serviceCidr")
/// if service_cidr is None:
///     service_cidr = "192.168.0.0/16"
/// enhanced = alicloud.vpc.get_enhanced_nat_available_zones()
/// auto_mode = alicloud.cs.ManagedKubernetes("auto-mode",
///     name=name,
///     cluster_spec="ack.pro.small",
///     zone_ids=[enhanced.zones[0].zone_id],
///     new_nat_gateway=True,
///     is_enterprise_security_group=True,
///     slb_internet_enabled=False,
///     skip_set_certificate_authority=True,
///     proxy_mode=proxy_mode,
///     service_cidr=service_cidr,
///     ip_stack="ipv4",
///     deletion_protection=True,
///     auto_mode={
///         "enabled": True,
///     },
///     maintenance_window={
///         "duration": "3h",
///         "weekly_period": "Monday",
///         "enable": True,
///         "maintenance_time": "2025-07-07T00:00:00.000+08:00",
///     },
///     operation_policy={
///         "cluster_auto_upgrade": {
///             "channel": "stable",
///             "enabled": True,
///         },
///     },
///     control_plane_log_components=[
///         "apiserver",
///         "kcm",
///         "scheduler",
///         "ccm",
///         "controlplane-events",
///         "alb",
///         "ack-goatscaler",
///         "coredns",
///         "gatekeeper",
///     ],
///     control_plane_log_ttl="30",
///     audit_log_config={
///         "enabled": True,
///     },
///     addons=[
///         {
///             "name": "metrics-server",
///         },
///         {
///             "name": "managed-coredns",
///         },
///         {
///             "name": "managed-security-inspector",
///         },
///         {
///             "name": "ack-cost-exporter",
///         },
///         {
///             "name": "terway-controlplane",
///             "config": json.dumps({
///                 "ENITrunking": "true",
///             }),
///         },
///         {
///             "name": "terway-eniip",
///             "config": json.dumps({
///                 "NetworkPolicy": "false",
///                 "ENITrunking": "true",
///                 "IPVlan": "false",
///             }),
///         },
///         {
///             "name": "csi-plugin",
///         },
///         {
///             "name": "managed-csiprovisioner",
///         },
///         {
///             "name": "storage-operator",
///             "config": json.dumps({
///                 "CnfsOssEnable": "false",
///                 "CnfsNasEnable": "false",
///             }),
///         },
///         {
///             "name": "loongcollector",
///             "config": json.dumps({
///                 "IngressDashboardEnabled": "true",
///             }),
///         },
///         {
///             "name": "ack-node-problem-detector",
///             "config": json.dumps({
///                 "sls_project_name": "",
///             }),
///         },
///         {
///             "name": "nginx-ingress-controller",
///             "disabled": True,
///         },
///         {
///             "name": "alb-ingress-controller",
///             "config": json.dumps({
///                 "albIngress": {
///                     "CreateDefaultALBConfig": False,
///                 },
///             }),
///         },
///         {
///             "name": "arms-prometheus",
///             "config": json.dumps({
///                 "prometheusMode": "default",
///             }),
///         },
///         {
///             "name": "alicloud-monitor-controller",
///         },
///         {
///             "name": "managed-aliyun-acr-credential-helper",
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "auto-mode";
///     // Proxy mode is option of kube-proxy.
///     var proxyMode = config.Get("proxyMode") ?? "ipvs";
///     // The kubernetes service cidr block.
///     var serviceCidr = config.Get("serviceCidr") ?? "192.168.0.0/16";
///     var enhanced = AliCloud.Vpc.GetEnhancedNatAvailableZones.Invoke();
///
///     var auto_mode = new AliCloud.CS.ManagedKubernetes("auto-mode", new()
///     {
///         Name = name,
///         ClusterSpec = "ack.pro.small",
///         ZoneIds = new[]
///         {
///             enhanced.Apply(getEnhancedNatAvailableZonesResult => getEnhancedNatAvailableZonesResult.Zones[0]?.ZoneId),
///         },
///         NewNatGateway = true,
///         IsEnterpriseSecurityGroup = true,
///         SlbInternetEnabled = false,
///         SkipSetCertificateAuthority = true,
///         ProxyMode = proxyMode,
///         ServiceCidr = serviceCidr,
///         IpStack = "ipv4",
///         DeletionProtection = true,
///         AutoMode = new AliCloud.CS.Inputs.ManagedKubernetesAutoModeArgs
///         {
///             Enabled = true,
///         },
///         MaintenanceWindow = new AliCloud.CS.Inputs.ManagedKubernetesMaintenanceWindowArgs
///         {
///             Duration = "3h",
///             WeeklyPeriod = "Monday",
///             Enable = true,
///             MaintenanceTime = "2025-07-07T00:00:00.000+08:00",
///         },
///         OperationPolicy = new AliCloud.CS.Inputs.ManagedKubernetesOperationPolicyArgs
///         {
///             ClusterAutoUpgrade = new AliCloud.CS.Inputs.ManagedKubernetesOperationPolicyClusterAutoUpgradeArgs
///             {
///                 Channel = "stable",
///                 Enabled = true,
///             },
///         },
///         ControlPlaneLogComponents = new[]
///         {
///             "apiserver",
///             "kcm",
///             "scheduler",
///             "ccm",
///             "controlplane-events",
///             "alb",
///             "ack-goatscaler",
///             "coredns",
///             "gatekeeper",
///         },
///         ControlPlaneLogTtl = "30",
///         AuditLogConfig = new AliCloud.CS.Inputs.ManagedKubernetesAuditLogConfigArgs
///         {
///             Enabled = true,
///         },
///         Addons = new[]
///         {
///             new AliCloud.CS.Inputs.ManagedKubernetesAddonArgs
///             {
///                 Name = "metrics-server",
///             },
///             new AliCloud.CS.Inputs.ManagedKubernetesAddonArgs
///             {
///                 Name = "managed-coredns",
///             },
///             new AliCloud.CS.Inputs.ManagedKubernetesAddonArgs
///             {
///                 Name = "managed-security-inspector",
///             },
///             new AliCloud.CS.Inputs.ManagedKubernetesAddonArgs
///             {
///                 Name = "ack-cost-exporter",
///             },
///             new AliCloud.CS.Inputs.ManagedKubernetesAddonArgs
///             {
///                 Name = "terway-controlplane",
///                 Config = JsonSerializer.Serialize(new Dictionary<string, object?>
///                 {
///                     ["ENITrunking"] = "true",
///                 }),
///             },
///             new AliCloud.CS.Inputs.ManagedKubernetesAddonArgs
///             {
///                 Name = "terway-eniip",
///                 Config = JsonSerializer.Serialize(new Dictionary<string, object?>
///                 {
///                     ["NetworkPolicy"] = "false",
///                     ["ENITrunking"] = "true",
///                     ["IPVlan"] = "false",
///                 }),
///             },
///             new AliCloud.CS.Inputs.ManagedKubernetesAddonArgs
///             {
///                 Name = "csi-plugin",
///             },
///             new AliCloud.CS.Inputs.ManagedKubernetesAddonArgs
///             {
///                 Name = "managed-csiprovisioner",
///             },
///             new AliCloud.CS.Inputs.ManagedKubernetesAddonArgs
///             {
///                 Name = "storage-operator",
///                 Config = JsonSerializer.Serialize(new Dictionary<string, object?>
///                 {
///                     ["CnfsOssEnable"] = "false",
///                     ["CnfsNasEnable"] = "false",
///                 }),
///             },
///             new AliCloud.CS.Inputs.ManagedKubernetesAddonArgs
///             {
///                 Name = "loongcollector",
///                 Config = JsonSerializer.Serialize(new Dictionary<string, object?>
///                 {
///                     ["IngressDashboardEnabled"] = "true",
///                 }),
///             },
///             new AliCloud.CS.Inputs.ManagedKubernetesAddonArgs
///             {
///                 Name = "ack-node-problem-detector",
///                 Config = JsonSerializer.Serialize(new Dictionary<string, object?>
///                 {
///                     ["sls_project_name"] = "",
///                 }),
///             },
///             new AliCloud.CS.Inputs.ManagedKubernetesAddonArgs
///             {
///                 Name = "nginx-ingress-controller",
///                 Disabled = true,
///             },
///             new AliCloud.CS.Inputs.ManagedKubernetesAddonArgs
///             {
///                 Name = "alb-ingress-controller",
///                 Config = JsonSerializer.Serialize(new Dictionary<string, object?>
///                 {
///                     ["albIngress"] = new Dictionary<string, object?>
///                     {
///                         ["CreateDefaultALBConfig"] = false,
///                     },
///                 }),
///             },
///             new AliCloud.CS.Inputs.ManagedKubernetesAddonArgs
///             {
///                 Name = "arms-prometheus",
///                 Config = JsonSerializer.Serialize(new Dictionary<string, object?>
///                 {
///                     ["prometheusMode"] = "default",
///                 }),
///             },
///             new AliCloud.CS.Inputs.ManagedKubernetesAddonArgs
///             {
///                 Name = "alicloud-monitor-controller",
///             },
///             new AliCloud.CS.Inputs.ManagedKubernetesAddonArgs
///             {
///                 Name = "managed-aliyun-acr-credential-helper",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "auto-mode"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		// Proxy mode is option of kube-proxy.
/// 		proxyMode := "ipvs"
/// 		if param := cfg.Get("proxyMode"); param != "" {
/// 			proxyMode = param
/// 		}
/// 		// The kubernetes service cidr block.
/// 		serviceCidr := "192.168.0.0/16"
/// 		if param := cfg.Get("serviceCidr"); param != "" {
/// 			serviceCidr = param
/// 		}
/// 		enhanced, err := vpc.GetEnhancedNatAvailableZones(ctx, &vpc.GetEnhancedNatAvailableZonesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"ENITrunking": "true",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		tmpJSON1, err := json.Marshal(map[string]interface{}{
/// 			"NetworkPolicy": "false",
/// 			"ENITrunking":   "true",
/// 			"IPVlan":        "false",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json1 := string(tmpJSON1)
/// 		tmpJSON2, err := json.Marshal(map[string]interface{}{
/// 			"CnfsOssEnable": "false",
/// 			"CnfsNasEnable": "false",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json2 := string(tmpJSON2)
/// 		tmpJSON3, err := json.Marshal(map[string]interface{}{
/// 			"IngressDashboardEnabled": "true",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json3 := string(tmpJSON3)
/// 		tmpJSON4, err := json.Marshal(map[string]interface{}{
/// 			"sls_project_name": "",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json4 := string(tmpJSON4)
/// 		tmpJSON5, err := json.Marshal(map[string]interface{}{
/// 			"albIngress": map[string]interface{}{
/// 				"CreateDefaultALBConfig": false,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json5 := string(tmpJSON5)
/// 		tmpJSON6, err := json.Marshal(map[string]interface{}{
/// 			"prometheusMode": "default",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json6 := string(tmpJSON6)
/// 		_, err = cs.NewManagedKubernetes(ctx, "auto-mode", &cs.ManagedKubernetesArgs{
/// 			Name:        pulumi.String(name),
/// 			ClusterSpec: pulumi.String("ack.pro.small"),
/// 			ZoneIds: pulumi.StringArray{
/// 				pulumi.String(enhanced.Zones[0].ZoneId),
/// 			},
/// 			NewNatGateway:               pulumi.Bool(true),
/// 			IsEnterpriseSecurityGroup:   pulumi.Bool(true),
/// 			SlbInternetEnabled:          pulumi.Bool(false),
/// 			SkipSetCertificateAuthority: pulumi.Bool(true),
/// 			ProxyMode:                   pulumi.String(proxyMode),
/// 			ServiceCidr:                 pulumi.String(serviceCidr),
/// 			IpStack:                     pulumi.String("ipv4"),
/// 			DeletionProtection:          pulumi.Bool(true),
/// 			AutoMode: &cs.ManagedKubernetesAutoModeArgs{
/// 				Enabled: pulumi.Bool(true),
/// 			},
/// 			MaintenanceWindow: &cs.ManagedKubernetesMaintenanceWindowArgs{
/// 				Duration:        pulumi.String("3h"),
/// 				WeeklyPeriod:    pulumi.String("Monday"),
/// 				Enable:          pulumi.Bool(true),
/// 				MaintenanceTime: pulumi.String("2025-07-07T00:00:00.000+08:00"),
/// 			},
/// 			OperationPolicy: &cs.ManagedKubernetesOperationPolicyArgs{
/// 				ClusterAutoUpgrade: &cs.ManagedKubernetesOperationPolicyClusterAutoUpgradeArgs{
/// 					Channel: pulumi.String("stable"),
/// 					Enabled: pulumi.Bool(true),
/// 				},
/// 			},
/// 			ControlPlaneLogComponents: pulumi.StringArray{
/// 				pulumi.String("apiserver"),
/// 				pulumi.String("kcm"),
/// 				pulumi.String("scheduler"),
/// 				pulumi.String("ccm"),
/// 				pulumi.String("controlplane-events"),
/// 				pulumi.String("alb"),
/// 				pulumi.String("ack-goatscaler"),
/// 				pulumi.String("coredns"),
/// 				pulumi.String("gatekeeper"),
/// 			},
/// 			ControlPlaneLogTtl: pulumi.String("30"),
/// 			AuditLogConfig: &cs.ManagedKubernetesAuditLogConfigArgs{
/// 				Enabled: pulumi.Bool(true),
/// 			},
/// 			Addons: cs.ManagedKubernetesAddonArray{
/// 				&cs.ManagedKubernetesAddonArgs{
/// 					Name: pulumi.String("metrics-server"),
/// 				},
/// 				&cs.ManagedKubernetesAddonArgs{
/// 					Name: pulumi.String("managed-coredns"),
/// 				},
/// 				&cs.ManagedKubernetesAddonArgs{
/// 					Name: pulumi.String("managed-security-inspector"),
/// 				},
/// 				&cs.ManagedKubernetesAddonArgs{
/// 					Name: pulumi.String("ack-cost-exporter"),
/// 				},
/// 				&cs.ManagedKubernetesAddonArgs{
/// 					Name:   pulumi.String("terway-controlplane"),
/// 					Config: pulumi.String(json0),
/// 				},
/// 				&cs.ManagedKubernetesAddonArgs{
/// 					Name:   pulumi.String("terway-eniip"),
/// 					Config: pulumi.String(json1),
/// 				},
/// 				&cs.ManagedKubernetesAddonArgs{
/// 					Name: pulumi.String("csi-plugin"),
/// 				},
/// 				&cs.ManagedKubernetesAddonArgs{
/// 					Name: pulumi.String("managed-csiprovisioner"),
/// 				},
/// 				&cs.ManagedKubernetesAddonArgs{
/// 					Name:   pulumi.String("storage-operator"),
/// 					Config: pulumi.String(json2),
/// 				},
/// 				&cs.ManagedKubernetesAddonArgs{
/// 					Name:   pulumi.String("loongcollector"),
/// 					Config: pulumi.String(json3),
/// 				},
/// 				&cs.ManagedKubernetesAddonArgs{
/// 					Name:   pulumi.String("ack-node-problem-detector"),
/// 					Config: pulumi.String(json4),
/// 				},
/// 				&cs.ManagedKubernetesAddonArgs{
/// 					Name:     pulumi.String("nginx-ingress-controller"),
/// 					Disabled: pulumi.Bool(true),
/// 				},
/// 				&cs.ManagedKubernetesAddonArgs{
/// 					Name:   pulumi.String("alb-ingress-controller"),
/// 					Config: pulumi.String(json5),
/// 				},
/// 				&cs.ManagedKubernetesAddonArgs{
/// 					Name:   pulumi.String("arms-prometheus"),
/// 					Config: pulumi.String(json6),
/// 				},
/// 				&cs.ManagedKubernetesAddonArgs{
/// 					Name: pulumi.String("alicloud-monitor-controller"),
/// 				},
/// 				&cs.ManagedKubernetesAddonArgs{
/// 					Name: pulumi.String("managed-aliyun-acr-credential-helper"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetEnhancedNatAvailableZonesArgs;
/// import com.pulumi.alicloud.cs.ManagedKubernetes;
/// import com.pulumi.alicloud.cs.ManagedKubernetesArgs;
/// import com.pulumi.alicloud.cs.inputs.ManagedKubernetesAutoModeArgs;
/// import com.pulumi.alicloud.cs.inputs.ManagedKubernetesMaintenanceWindowArgs;
/// import com.pulumi.alicloud.cs.inputs.ManagedKubernetesOperationPolicyArgs;
/// import com.pulumi.alicloud.cs.inputs.ManagedKubernetesOperationPolicyClusterAutoUpgradeArgs;
/// import com.pulumi.alicloud.cs.inputs.ManagedKubernetesAuditLogConfigArgs;
/// import com.pulumi.alicloud.cs.inputs.ManagedKubernetesAddonArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         final var name = config.get("name").orElse("auto-mode");
///         final var proxyMode = config.get("proxyMode").orElse("ipvs");
///         final var serviceCidr = config.get("serviceCidr").orElse("192.168.0.0/16");
///         final var enhanced = VpcFunctions.getEnhancedNatAvailableZones(GetEnhancedNatAvailableZonesArgs.builder()
///             .build());
///
///         var auto_mode = new ManagedKubernetes("auto-mode", ManagedKubernetesArgs.builder()
///             .name(name)
///             .clusterSpec("ack.pro.small")
///             .zoneIds(enhanced.zones()[0].zoneId())
///             .newNatGateway(true)
///             .isEnterpriseSecurityGroup(true)
///             .slbInternetEnabled(false)
///             .skipSetCertificateAuthority(true)
///             .proxyMode(proxyMode)
///             .serviceCidr(serviceCidr)
///             .ipStack("ipv4")
///             .deletionProtection(true)
///             .autoMode(ManagedKubernetesAutoModeArgs.builder()
///                 .enabled(true)
///                 .build())
///             .maintenanceWindow(ManagedKubernetesMaintenanceWindowArgs.builder()
///                 .duration("3h")
///                 .weeklyPeriod("Monday")
///                 .enable(true)
///                 .maintenanceTime("2025-07-07T00:00:00.000+08:00")
///                 .build())
///             .operationPolicy(ManagedKubernetesOperationPolicyArgs.builder()
///                 .clusterAutoUpgrade(ManagedKubernetesOperationPolicyClusterAutoUpgradeArgs.builder()
///                     .channel("stable")
///                     .enabled(true)
///                     .build())
///                 .build())
///             .controlPlaneLogComponents(
///                 "apiserver",
///                 "kcm",
///                 "scheduler",
///                 "ccm",
///                 "controlplane-events",
///                 "alb",
///                 "ack-goatscaler",
///                 "coredns",
///                 "gatekeeper")
///             .controlPlaneLogTtl("30")
///             .auditLogConfig(ManagedKubernetesAuditLogConfigArgs.builder()
///                 .enabled(true)
///                 .build())
///             .addons(
///                 ManagedKubernetesAddonArgs.builder()
///                     .name("metrics-server")
///                     .build(),
///                 ManagedKubernetesAddonArgs.builder()
///                     .name("managed-coredns")
///                     .build(),
///                 ManagedKubernetesAddonArgs.builder()
///                     .name("managed-security-inspector")
///                     .build(),
///                 ManagedKubernetesAddonArgs.builder()
///                     .name("ack-cost-exporter")
///                     .build(),
///                 ManagedKubernetesAddonArgs.builder()
///                     .name("terway-controlplane")
///                     .config(serializeJson(
///                         jsonObject(
///                             jsonProperty("ENITrunking", "true")
///                         )))
///                     .build(),
///                 ManagedKubernetesAddonArgs.builder()
///                     .name("terway-eniip")
///                     .config(serializeJson(
///                         jsonObject(
///                             jsonProperty("NetworkPolicy", "false"),
///                             jsonProperty("ENITrunking", "true"),
///                             jsonProperty("IPVlan", "false")
///                         )))
///                     .build(),
///                 ManagedKubernetesAddonArgs.builder()
///                     .name("csi-plugin")
///                     .build(),
///                 ManagedKubernetesAddonArgs.builder()
///                     .name("managed-csiprovisioner")
///                     .build(),
///                 ManagedKubernetesAddonArgs.builder()
///                     .name("storage-operator")
///                     .config(serializeJson(
///                         jsonObject(
///                             jsonProperty("CnfsOssEnable", "false"),
///                             jsonProperty("CnfsNasEnable", "false")
///                         )))
///                     .build(),
///                 ManagedKubernetesAddonArgs.builder()
///                     .name("loongcollector")
///                     .config(serializeJson(
///                         jsonObject(
///                             jsonProperty("IngressDashboardEnabled", "true")
///                         )))
///                     .build(),
///                 ManagedKubernetesAddonArgs.builder()
///                     .name("ack-node-problem-detector")
///                     .config(serializeJson(
///                         jsonObject(
///                             jsonProperty("sls_project_name", "")
///                         )))
///                     .build(),
///                 ManagedKubernetesAddonArgs.builder()
///                     .name("nginx-ingress-controller")
///                     .disabled(true)
///                     .build(),
///                 ManagedKubernetesAddonArgs.builder()
///                     .name("alb-ingress-controller")
///                     .config(serializeJson(
///                         jsonObject(
///                             jsonProperty("albIngress", jsonObject(
///                                 jsonProperty("CreateDefaultALBConfig", false)
///                             ))
///                         )))
///                     .build(),
///                 ManagedKubernetesAddonArgs.builder()
///                     .name("arms-prometheus")
///                     .config(serializeJson(
///                         jsonObject(
///                             jsonProperty("prometheusMode", "default")
///                         )))
///                     .build(),
///                 ManagedKubernetesAddonArgs.builder()
///                     .name("alicloud-monitor-controller")
///                     .build(),
///                 ManagedKubernetesAddonArgs.builder()
///                     .name("managed-aliyun-acr-credential-helper")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: auto-mode
///   proxyMode:
///     type: string
///     default: ipvs
///   serviceCidr:
///     type: string
///     default: 192.168.0.0/16
/// resources:
///   auto-mode:
///     type: alicloud:cs:ManagedKubernetes
///     properties:
///       name: ${name}
///       clusterSpec: ack.pro.small
///       zoneIds:
///         - ${enhanced.zones[0].zoneId}
///       newNatGateway: true
///       isEnterpriseSecurityGroup: true
///       slbInternetEnabled: false
///       skipSetCertificateAuthority: true
///       proxyMode: ${proxyMode}
///       serviceCidr: ${serviceCidr}
///       ipStack: ipv4
///       deletionProtection: true
///       autoMode:
///         enabled: true
///       maintenanceWindow:
///         duration: 3h
///         weeklyPeriod: Monday
///         enable: true
///         maintenanceTime: 2025-07-07T00:00:00.000+08:00
///       operationPolicy:
///         clusterAutoUpgrade:
///           channel: stable
///           enabled: true
///       controlPlaneLogComponents:
///         - apiserver
///         - kcm
///         - scheduler
///         - ccm
///         - controlplane-events
///         - alb
///         - ack-goatscaler
///         - coredns
///         - gatekeeper
///       controlPlaneLogTtl: '30'
///       auditLogConfig:
///         enabled: true
///       addons:
///         - name: metrics-server
///         - name: managed-coredns
///         - name: managed-security-inspector
///         - name: ack-cost-exporter
///         - name: terway-controlplane
///           config:
///             fn::toJSON:
///               ENITrunking: 'true'
///         - name: terway-eniip
///           config:
///             fn::toJSON:
///               NetworkPolicy: 'false'
///               ENITrunking: 'true'
///               IPVlan: 'false'
///         - name: csi-plugin
///         - name: managed-csiprovisioner
///         - name: storage-operator
///           config:
///             fn::toJSON:
///               CnfsOssEnable: 'false'
///               CnfsNasEnable: 'false'
///         - name: loongcollector
///           config:
///             fn::toJSON:
///               IngressDashboardEnabled: 'true'
///         - name: ack-node-problem-detector
///           config:
///             fn::toJSON:
///               sls_project_name: ""
///         - name: nginx-ingress-controller
///           disabled: true
///         - name: alb-ingress-controller
///           config:
///             fn::toJSON:
///               albIngress:
///                 CreateDefaultALBConfig: false
///         - name: arms-prometheus
///           config:
///             fn::toJSON:
///               prometheusMode: default
///         - name: alicloud-monitor-controller
///         - name: managed-aliyun-acr-credential-helper
/// variables:
///   enhanced:
///     fn::invoke:
///       function: alicloud:vpc:getEnhancedNatAvailableZones
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Kubernetes managed cluster can be imported using the id, e.g. Then complete the main.tf accords to the result of `pulumi preview`.
///
/// ```sh
/// $ pulumi import alicloud:cs/managedKubernetes:ManagedKubernetes main cluster_id
/// ```
class ManagedKubernetes extends pulumi.CustomResource {
  /// The addon you want to install in cluster. See `addons` below. Only works for **Create** Operation, use resource cs_kubernetes_addon to manage addons if cluster is created.
  late final pulumi.Output<List<ManagedKubernetesAddon>?> addons;
  /// A list of API audiences for [Service Account Token Volume Projection](https://www.alibabacloud.com/help/doc-detail/160384.htm). Set this to `["https://kubernetes.default.svc"]` if you want to enable the Token Volume Projection feature (requires specifying `service_account_issuer` as well. From cluster version 1.22, Service Account Token Volume Projection will be enabled by default.
  late final pulumi.Output<List<String>?> apiAudiences;
  /// Audit log configuration. See `audit_log_config` below.
  late final pulumi.Output<ManagedKubernetesAuditLogConfig> auditLogConfig;
  /// Auto mode cluster configuration. See `auto_mode` below.
  late final pulumi.Output<ManagedKubernetesAutoMode?> autoMode;
  /// (Map, Deprecated from v1.248.0) Nested attribute containing certificate authority data for your cluster. Please use the attribute certificate_authority of new DataSource `alicloud.cs.getClusterCredential` to replace it.
  late final pulumi.Output<ManagedKubernetesCertificateAuthority> certificateAuthority;
  /// From version 1.248.0, new DataSource `alicloud.cs.getClusterCredential` is recommended to manage cluster's kubeconfig, you can also save the certificate_authority.client_cert attribute content of new DataSource `alicloud.cs.getClusterCredential` to an appropriate path(like ~/.kube/client-cert.pem) for replace it.
  late final pulumi.Output<String?> clientCert;
  /// From version 1.248.0, new DataSource `alicloud.cs.getClusterCredential` is recommended to manage cluster's kubeconfig, you can also save the certificate_authority.client_key attribute content of new DataSource `alicloud.cs.getClusterCredential` to an appropriate path(like ~/.kube/client-key.pem) for replace it.
  late final pulumi.Output<String?> clientKey;
  /// From version 1.248.0, new DataSource `alicloud.cs.getClusterCredential` is recommended to manage cluster's kubeconfig, you can also save the certificate_authority.cluster_cert attribute content of new DataSource `alicloud.cs.getClusterCredential` to an appropriate path(like ~/.kube/cluster-ca-cert.pem) for replace it.
  ///
  /// *Removed params*
  late final pulumi.Output<String?> clusterCaCert;
  /// Cluster local domain name, Default to `cluster.local`. A domain name consists of one or more sections separated by a decimal point (.), each of which is up to 63 characters long, and can be lowercase, numerals, and underscores (-), and must be lowercase or numerals at the beginning and end.
  late final pulumi.Output<String?> clusterDomain;
  /// The cluster specifications of kubernetes cluster,which can be empty. Valid values:
  /// * ack.standard : Basic managed clusters.
  /// * ack.pro.small : Professional managed clusters.
  late final pulumi.Output<String> clusterSpec;
  /// Map of kubernetes cluster connection information.
  late final pulumi.Output<ManagedKubernetesConnections> connections;
  /// List of target components for which logs need to be collected. Supports `apiserver`, `kcm`, `scheduler`, `ccm` and `controlplane-events`.
  late final pulumi.Output<List<String>?> controlPlaneLogComponents;
  /// Control plane log project. If this field is not set, a log service project named k8s-log-{ClusterID} will be automatically created.
  late final pulumi.Output<String> controlPlaneLogProject;
  /// Control plane log retention duration (unit: day). Default `30`. If control plane logs are to be collected, `control_plane_log_ttl` and `control_plane_log_components` must be specified.
  late final pulumi.Output<String> controlPlaneLogTtl;
  /// Customize the certificate SAN, multiple IP or domain names are separated by English commas (,).
  /// > **NOTE:** Make sure you have specified all certificate SANs before updating. Updating this field will lead APIServer to restart.
  late final pulumi.Output<String?> customSan;
  /// Delete options, only work for deleting resource. Make sure you have run `pulumi up` to make the configuration applied. See `delete_options` below.
  late final pulumi.Output<List<ManagedKubernetesDeleteOption>?> deleteOptions;
  /// Whether to enable cluster deletion protection.
  late final pulumi.Output<bool> deletionProtection;
  /// Whether to enable cluster to support RRSA for kubernetes version 1.22.3+. Default to `false`. Once the RRSA function is turned on, it is not allowed to turn off. If your cluster has enabled this function, please manually modify your tf file and add the rrsa configuration to the file, learn more [RAM Roles for Service Accounts](https://www.alibabacloud.com/help/zh/container-service-for-kubernetes/latest/use-rrsa-to-enforce-access-control).
  late final pulumi.Output<bool?> enableRrsa;
  /// The ID of the Key Management Service (KMS) key that is used to encrypt Kubernetes Secrets.
  late final pulumi.Output<String?> encryptionProviderKey;
  /// The IP address family that the cluster network uses. Valid values:
  late final pulumi.Output<String> ipStack;
  /// Enable to create advanced security group. default: false. Only works for **Create** Operation. See [Advanced security group](https://www.alibabacloud.com/help/doc-detail/120621.htm).
  late final pulumi.Output<bool> isEnterpriseSecurityGroup;
  /// The cluster api server load balancer instance specification. For more information on how to select a LB instance specification, see [SLB instance overview](https://help.aliyun.com/document_detail/85931.html). Only works for **Create** Operation. The spec will not take effect because the charge of the load balancer has been changed to PayByCLCU.
  late final pulumi.Output<String> loadBalancerSpec;
  /// The cluster maintenance window. Managed node pool will use it. See `maintenance_window` below.
  late final pulumi.Output<ManagedKubernetesMaintenanceWindow> maintenanceWindow;
  /// The kubernetes cluster's name. It is unique in one Alicloud account.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String?> namePrefix;
  /// The ID of nat gateway used to launch kubernetes cluster.
  late final pulumi.Output<String> natGatewayId;
  /// Whether to create a new nat gateway while creating kubernetes cluster. Default to true. Then openapi in Alibaba Cloud are not all on intranet, So turn this option on is a good choice. Only works for **Create** Operation.
  late final pulumi.Output<bool?> newNatGateway;
  /// The node cidr block to specific how many pods can run on single node. 24-28 is allowed. 24 means 2^(32-24)-1=255 and the node can run at most 255 pods. default: 24
  late final pulumi.Output<int?> nodeCidrMask;
  /// The cluster automatic operation policy, only works when `maintenance_window` is enabled. See `operation_policy` below.
  late final pulumi.Output<ManagedKubernetesOperationPolicy> operationPolicy;
  /// [Flannel Specific] The CIDR block for the pod network when using Flannel.
  late final pulumi.Output<String?> podCidr;
  /// [Terway Specific] The vswitches for the pod network when using Terway. It is recommended that `pod_vswitch_ids` is not belong to `vswitch_ids` but must be in same availability zones. Only works for **Create** Operation.
  late final pulumi.Output<List<String>?> podVswitchIds;
  /// The profile of cluster. Valid values:
  /// * `Default`: ACK managed cluster. ACK managed clusters include ACK Basic clusters and ACK Pro clusters.
  /// * `Edge`: ACK Edge cluster. ACK Edge clusters include ACK Edge Basic clusters and ACK Edge Pro clusters.
  /// * `Serverless`: ACK Serverless cluster. ACK Serverless clusters include ACK Serverless Basic clusters and ACK Serverless Pro clusters.
  /// * `Acs`: ACS cluster.
  late final pulumi.Output<String> profile;
  /// Proxy mode is option of kube-proxy. options: iptables|ipvs. default: ipvs.
  late final pulumi.Output<String?> proxyMode;
  /// The ID of the resource group,by default these cloud resources are automatically assigned to the default resource group.
  late final pulumi.Output<String> resourceGroupId;
  late final pulumi.Output<List<String>?> retainResources;
  /// (Optional, Available since v1.185.0) Nested attribute containing RRSA related data for your cluster.
  late final pulumi.Output<ManagedKubernetesRrsaMetadata> rrsaMetadata;
  /// The ID of the security group to which the ECS instances in the cluster belong. If it is not specified, a new Security group will be built.
  /// * > **NOTE:** Please take of note before updating the `security_group_id`:
  /// * If block rules are configured in the security group, ensure the security group rules allow traffic for protocols and ports required by the cluster. For recommended security group rules, see [Configure and manage security groups for an ACK cluster](https://www.alibabacloud.com/help/en/ack/ack-managed-and-ack-dedicated/user-guide/configure-security-group-rules-to-enforce-access-control-on-ack-clusters).
  /// * During security group updates, the cluster control plane and managed components (e.g., terway-controlplane) will restart briefly. Perform this operation during off-peak hours.
  /// * After updating the control plane security group, the Elastic Network Interfaces (ENIs) used by the control plane and managed components will automatically join the new security group.
  late final pulumi.Output<String> securityGroupId;
  /// The issuer of the Service Account token for [Service Account Token Volume Projection](https://www.alibabacloud.com/help/doc-detail/160384.htm), corresponds to the `iss` field in the token payload. Set this to `"https://kubernetes.default.svc"` to enable the Token Volume Projection feature (requires specifying `api_audiences` as well). From cluster version 1.22, Service Account Token Volume Projection will be enabled by default.
  late final pulumi.Output<String?> serviceAccountIssuer;
  /// The CIDR block for the service network. It cannot be duplicated with the VPC CIDR and CIDR used by Kubernetes cluster in VPC, cannot be modified after creation.
  late final pulumi.Output<String?> serviceCidr;
  /// Configure whether to save certificate authority data for your cluster to attribute `certificate_authority`. For cluster security, recommended configuration as `true`. Will be removed with attribute certificate_authority removed.
  late final pulumi.Output<bool?> skipSetCertificateAuthority;
  /// The ID of APIServer load balancer.
  late final pulumi.Output<String> slbId;
  /// The public ip of load balancer.
  late final pulumi.Output<String> slbInternet;
  /// Whether to create internet load balancer for API Server. Default to true. Only works for **Create** Operation.
  late final pulumi.Output<bool?> slbInternetEnabled;
  /// The ID of private load balancer where the current cluster master node is located.
  late final pulumi.Output<String> slbIntranet;
  /// Default nil, A map of tags assigned to the kubernetes cluster and work nodes. See `tags` below.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Cluster timezone, works for control plane and Worker nodes.
  /// * > **NOTE:** Please take of note before updating the `timezone`:
  /// * After modifying the timezone, cluster inspection configurations will adopt the new timezone.
  /// * During timezone updates, the cluster control plane and managed components (e.g., terway-controlplane) will restart briefly. Perform this operation during off-peak hours.
  /// * After updating the timezone: Newly scaled-out nodes will automatically apply the new timezone. Existing nodes remain unaffected. Reset the node to apply changes to existing nodes.
  late final pulumi.Output<String?> timezone;
  /// Configuration block for cluster upgrade operations. See `upgrade_policy` below.
  /// > **NOTE:** This parameter only applies during resource update.
  ///
  /// *Network params*
  late final pulumi.Output<ManagedKubernetesUpgradePolicy?> upgradePolicy;
  /// The path of customized CA cert, you can use this CA to sign client certs to connect your cluster.
  late final pulumi.Output<String?> userCa;
  /// Desired Kubernetes version. If you do not specify a value, the latest available version at resource creation is used and no upgrades will occur except you set a higher version number. The value must be configured and increased to upgrade the version when desired. Downgrades are not supported by ACK. Do not specify if cluster auto upgrade is enabled, see cluster_auto_upgrade for more information.
  late final pulumi.Output<String> version;
  /// The ID of VPC where the current cluster is located.
  late final pulumi.Output<String> vpcId;
  /// The vSwitches of the control plane.
  /// > **NOTE:** Please take of note before updating the `vswitch_ids`:
  /// * This parameter overwrites the existing configuration. You must specify all vSwitches of the control plane.
  /// * The control plane restarts during the change process. Exercise caution when you perform this operation.
  /// * Ensure that all security groups of the cluster, including the security groups of the control plane, all node pools, and container network, are allowed to access the CIDR blocks of the new vSwitches. This ensures that the nodes and containers can connect to the API server.
  /// * If the new vSwitches of the control plane are configured with an ACL, ensure that the ACL allows communication between the new vSwitches and CIDR blocks such as those of the cluster nodes and the container network.
  late final pulumi.Output<List<String>> vswitchIds;
  /// The RamRole Name attached to worker node.
  late final pulumi.Output<String> workerRamRoleName;
  /// The vSwitches used by control plane. Modification after creation will not take effect. Please use `vswitch_ids` to managed control plane vSwitches, which supports modifying control plane vSwitches.
  late final pulumi.Output<List<String>?> workerVswitchIds;
  /// The IDs of the zone in which the cluster control plane is deployed. ACK automatically creates a VPC in the region and vSwitches in the specified zones. Only works for **Create** Operation. Do not specify this with `vswitch_ids` together.
  late final pulumi.Output<List<String>?> zoneIds;

  /// Creates a new [ManagedKubernetes].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedKubernetes]. {@macro pulumi_cs_managed_kubernetes_managed_kubernetes_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedKubernetes(
    String name, {
    ManagedKubernetesArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cs/managedKubernetes:ManagedKubernetes',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.addons = registerOutput<List<ManagedKubernetesAddon>?>('addons');
    this.apiAudiences = registerOutput<List<String>?>('apiAudiences');
    this.auditLogConfig = registerOutput<ManagedKubernetesAuditLogConfig>('auditLogConfig');
    this.autoMode = registerOutput<ManagedKubernetesAutoMode?>('autoMode');
    this.certificateAuthority = registerOutput<ManagedKubernetesCertificateAuthority>('certificateAuthority');
    this.clientCert = registerOutput<String?>('clientCert');
    this.clientKey = registerOutput<String?>('clientKey');
    this.clusterCaCert = registerOutput<String?>('clusterCaCert');
    this.clusterDomain = registerOutput<String?>('clusterDomain');
    this.clusterSpec = registerOutput<String>('clusterSpec');
    this.connections = registerOutput<ManagedKubernetesConnections>('connections');
    this.controlPlaneLogComponents = registerOutput<List<String>?>('controlPlaneLogComponents');
    this.controlPlaneLogProject = registerOutput<String>('controlPlaneLogProject');
    this.controlPlaneLogTtl = registerOutput<String>('controlPlaneLogTtl');
    this.customSan = registerOutput<String?>('customSan');
    this.deleteOptions = registerOutput<List<ManagedKubernetesDeleteOption>?>('deleteOptions');
    this.deletionProtection = registerOutput<bool>('deletionProtection');
    this.enableRrsa = registerOutput<bool?>('enableRrsa');
    this.encryptionProviderKey = registerOutput<String?>('encryptionProviderKey');
    this.ipStack = registerOutput<String>('ipStack');
    this.isEnterpriseSecurityGroup = registerOutput<bool>('isEnterpriseSecurityGroup');
    this.loadBalancerSpec = registerOutput<String>('loadBalancerSpec');
    this.maintenanceWindow = registerOutput<ManagedKubernetesMaintenanceWindow>('maintenanceWindow');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String?>('namePrefix');
    this.natGatewayId = registerOutput<String>('natGatewayId');
    this.newNatGateway = registerOutput<bool?>('newNatGateway');
    this.nodeCidrMask = registerOutput<int?>('nodeCidrMask');
    this.operationPolicy = registerOutput<ManagedKubernetesOperationPolicy>('operationPolicy');
    this.podCidr = registerOutput<String?>('podCidr');
    this.podVswitchIds = registerOutput<List<String>?>('podVswitchIds');
    this.profile = registerOutput<String>('profile');
    this.proxyMode = registerOutput<String?>('proxyMode');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.retainResources = registerOutput<List<String>?>('retainResources');
    this.rrsaMetadata = registerOutput<ManagedKubernetesRrsaMetadata>('rrsaMetadata');
    this.securityGroupId = registerOutput<String>('securityGroupId');
    this.serviceAccountIssuer = registerOutput<String?>('serviceAccountIssuer');
    this.serviceCidr = registerOutput<String?>('serviceCidr');
    this.skipSetCertificateAuthority = registerOutput<bool?>('skipSetCertificateAuthority');
    this.slbId = registerOutput<String>('slbId');
    this.slbInternet = registerOutput<String>('slbInternet');
    this.slbInternetEnabled = registerOutput<bool?>('slbInternetEnabled');
    this.slbIntranet = registerOutput<String>('slbIntranet');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.timezone = registerOutput<String?>('timezone');
    this.upgradePolicy = registerOutput<ManagedKubernetesUpgradePolicy?>('upgradePolicy');
    this.userCa = registerOutput<String?>('userCa');
    this.version = registerOutput<String>('version');
    this.vpcId = registerOutput<String>('vpcId');
    this.vswitchIds = registerOutput<List<String>>('vswitchIds');
    this.workerRamRoleName = registerOutput<String>('workerRamRoleName');
    this.workerVswitchIds = registerOutput<List<String>?>('workerVswitchIds');
    this.zoneIds = registerOutput<List<String>?>('zoneIds');
  }
}
