import 'package:pulumi/pulumi.dart' as pulumi;
import 'autoscaling_config_args.dart';

/// This resource will help you configure auto scaling for the kubernetes cluster, see [What is autoscaling config](https://www.alibabacloud.com/help/en/ack/ack-managed-and-ack-dedicated/developer-reference/api-configure-auto-scaling).
///
/// > **NOTE:** Available since v1.127.0.
///
/// > **NOTE:** From version 1.164.0, support for specifying whether to allow the scale-in of nodes by parameter `scale_down_enabled`.
///
/// > **NOTE:** From version 1.164.0, support for selecting the policy for selecting which node pool to scale by parameter `expander`.
///
/// > **NOTE:** From version 1.237.0, support for selecting the type of autoscaler by parameter `scaler_type`.
///
/// > **NOTE:** From version 1.256.0, support for setting the priority of scaling groups by parameter `priorities`.
///
/// ## Example Usage
///
/// If you do not have an existing cluster, you need to create an ACK cluster through alicloud.cs.ManagedKubernetes first, and then configure automatic scaling.
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as std from "@pulumi/std";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const defaultGetInstanceTypes = _default.then(_default => alicloud.ecs.getInstanceTypes({
///     availabilityZone: _default.zones?.[0]?.id,
///     cpuCoreCount: 4,
///     memorySize: 8,
///     kubernetesNodeRole: "Worker",
///     systemDiskCategory: "cloud_essd",
/// }));
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "10.4.0.0/16",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vswitchName: name,
///     cidrBlock: "10.4.0.0/24",
///     vpcId: defaultNetwork.id,
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
/// });
/// const defaultManagedKubernetes = new alicloud.cs.ManagedKubernetes("default", {
///     namePrefix: name,
///     clusterSpec: "ack.pro.small",
///     workerVswitchIds: [defaultSwitch.id],
///     newNatGateway: true,
///     podCidr: std.cidrsubnet({
///         input: "10.0.0.0/8",
///         newbits: 8,
///         netnum: 36,
///     }).then(invoke => invoke.result),
///     serviceCidr: std.cidrsubnet({
///         input: "172.16.0.0/16",
///         newbits: 4,
///         netnum: 7,
///     }).then(invoke => invoke.result),
///     slbInternetEnabled: true,
/// });
/// const defaultNodePool: alicloud.cs.NodePool[] = [];
/// for (const range = {value: 0}; range.value < 3; range.value++) {
///     defaultNodePool.push(new alicloud.cs.NodePool(`default-${range.value}`, {
///         nodePoolName: std.format({
///             input: "%s-%d",
///             args: [
///                 name,
///                 range.value,
///             ],
///         }).then(invoke => invoke.result),
///         clusterId: defaultManagedKubernetes.id,
///         vswitchIds: [defaultSwitch.id],
///         instanceTypes: [defaultGetInstanceTypes.then(defaultGetInstanceTypes => defaultGetInstanceTypes.instanceTypes?.[0]?.id)],
///         systemDiskCategory: "cloud_essd",
///         systemDiskSize: 40,
///         imageType: "AliyunLinux3",
///         scalingConfig: {
///             enable: true,
///             minSize: 0,
///             maxSize: 10,
///         },
///     }));
/// }
/// const defaultAutoscalingConfig = new alicloud.cs.AutoscalingConfig("default", {
///     clusterId: defaultManagedKubernetes.id,
///     coolDownDuration: "10m",
///     unneededDuration: "10m",
///     utilizationThreshold: "0.5",
///     gpuUtilizationThreshold: "0.5",
///     scanInterval: "30s",
///     scaleDownEnabled: true,
///     expander: "priority",
///     skipNodesWithSystemPods: true,
///     skipNodesWithLocalStorage: false,
///     daemonsetEvictionForNodes: false,
///     maxGracefulTerminationSec: 14400,
///     minReplicaCount: 0,
///     recycleNodeDeletionEnabled: false,
///     scaleUpFromZero: true,
///     scalerType: "cluster-autoscaler",
///     priorities: {
///         "10": std.joinOutput({
///             separator: ",",
///             input: [
///                 defaultNodePool[0].scalingGroupId,
///                 defaultNodePool[1].scalingGroupId,
///             ],
///         }).apply(invoke => invoke.result),
///         "20": defaultNodePool[2].scalingGroupId,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_std as std
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.get_zones(available_resource_creation="VSwitch")
/// default_get_instance_types = alicloud.ecs.get_instance_types(availability_zone=default.zones[0].id,
///     cpu_core_count=4,
///     memory_size=8,
///     kubernetes_node_role="Worker",
///     system_disk_category="cloud_essd")
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="10.4.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vswitch_name=name,
///     cidr_block="10.4.0.0/24",
///     vpc_id=default_network.id,
///     zone_id=default.zones[0].id)
/// default_managed_kubernetes = alicloud.cs.ManagedKubernetes("default",
///     name_prefix=name,
///     cluster_spec="ack.pro.small",
///     worker_vswitch_ids=[default_switch.id],
///     new_nat_gateway=True,
///     pod_cidr=std.cidrsubnet(input="10.0.0.0/8",
///         newbits=8,
///         netnum=36).result,
///     service_cidr=std.cidrsubnet(input="172.16.0.0/16",
///         newbits=4,
///         netnum=7).result,
///     slb_internet_enabled=True)
/// default_node_pool = []
/// for range in [{"value": i} for i in range(0, 3)]:
///     default_node_pool.append(alicloud.cs.NodePool(f"default-{range['value']}",
///         node_pool_name=std.format(input="%s-%d",
///             args=[
///                 name,
///                 range["value"],
///             ]).result,
///         cluster_id=default_managed_kubernetes.id,
///         vswitch_ids=[default_switch.id],
///         instance_types=[default_get_instance_types.instance_types[0].id],
///         system_disk_category="cloud_essd",
///         system_disk_size=40,
///         image_type="AliyunLinux3",
///         scaling_config={
///             "enable": True,
///             "min_size": 0,
///             "max_size": 10,
///         }))
/// default_autoscaling_config = alicloud.cs.AutoscalingConfig("default",
///     cluster_id=default_managed_kubernetes.id,
///     cool_down_duration="10m",
///     unneeded_duration="10m",
///     utilization_threshold="0.5",
///     gpu_utilization_threshold="0.5",
///     scan_interval="30s",
///     scale_down_enabled=True,
///     expander="priority",
///     skip_nodes_with_system_pods=True,
///     skip_nodes_with_local_storage=False,
///     daemonset_eviction_for_nodes=False,
///     max_graceful_termination_sec=14400,
///     min_replica_count=0,
///     recycle_node_deletion_enabled=False,
///     scale_up_from_zero=True,
///     scaler_type="cluster-autoscaler",
///     priorities={
///         "10": std.join_output(separator=",",
///             input=[
///                 default_node_pool[0].scaling_group_id,
///                 default_node_pool[1].scaling_group_id,
///             ]).apply(lambda invoke: invoke.result),
///         "20": default_node_pool[2].scaling_group_id,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var defaultGetInstanceTypes = AliCloud.Ecs.GetInstanceTypes.Invoke(new()
///     {
///         AvailabilityZone = @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///         CpuCoreCount = 4,
///         MemorySize = 8,
///         KubernetesNodeRole = "Worker",
///         SystemDiskCategory = "cloud_essd",
///     });
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = name,
///         CidrBlock = "10.4.0.0/16",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VswitchName = name,
///         CidrBlock = "10.4.0.0/24",
///         VpcId = defaultNetwork.Id,
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///     });
///
///     var defaultManagedKubernetes = new AliCloud.CS.ManagedKubernetes("default", new()
///     {
///         NamePrefix = name,
///         ClusterSpec = "ack.pro.small",
///         WorkerVswitchIds = new[]
///         {
///             defaultSwitch.Id,
///         },
///         NewNatGateway = true,
///         PodCidr = Std.Cidrsubnet.Invoke(new()
///         {
///             Input = "10.0.0.0/8",
///             Newbits = 8,
///             Netnum = 36,
///         }).Apply(invoke => invoke.Result),
///         ServiceCidr = Std.Cidrsubnet.Invoke(new()
///         {
///             Input = "172.16.0.0/16",
///             Newbits = 4,
///             Netnum = 7,
///         }).Apply(invoke => invoke.Result),
///         SlbInternetEnabled = true,
///     });
///
///     var defaultNodePool = new List<AliCloud.CS.NodePool>();
///     for (var rangeIndex = 0; rangeIndex < 3; rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         defaultNodePool.Add(new AliCloud.CS.NodePool($"default-{range.Value}", new()
///         {
///             NodePoolName = Std.Format.Invoke(new()
///             {
///                 Input = "%s-%d",
///                 Args = new[]
///                 {
///                     name,
///                     range.Value,
///                 },
///             }).Apply(invoke => invoke.Result),
///             ClusterId = defaultManagedKubernetes.Id,
///             VswitchIds = new[]
///             {
///                 defaultSwitch.Id,
///             },
///             InstanceTypes = new[]
///             {
///                 defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.InstanceTypes[0]?.Id),
///             },
///             SystemDiskCategory = "cloud_essd",
///             SystemDiskSize = 40,
///             ImageType = "AliyunLinux3",
///             ScalingConfig = new AliCloud.CS.Inputs.NodePoolScalingConfigArgs
///             {
///                 Enable = true,
///                 MinSize = 0,
///                 MaxSize = 10,
///             },
///         }));
///     }
///     var defaultAutoscalingConfig = new AliCloud.CS.AutoscalingConfig("default", new()
///     {
///         ClusterId = defaultManagedKubernetes.Id,
///         CoolDownDuration = "10m",
///         UnneededDuration = "10m",
///         UtilizationThreshold = "0.5",
///         GpuUtilizationThreshold = "0.5",
///         ScanInterval = "30s",
///         ScaleDownEnabled = true,
///         Expander = "priority",
///         SkipNodesWithSystemPods = true,
///         SkipNodesWithLocalStorage = false,
///         DaemonsetEvictionForNodes = false,
///         MaxGracefulTerminationSec = 14400,
///         MinReplicaCount = 0,
///         RecycleNodeDeletionEnabled = false,
///         ScaleUpFromZero = true,
///         ScalerType = "cluster-autoscaler",
///         Priorities =
///         {
///             { "10", Std.Join.Invoke(new()
///             {
///                 Separator = ",",
///                 Input = new[]
///                 {
///                     defaultNodePool[0].ScalingGroupId,
///                     defaultNodePool[1].ScalingGroupId,
///                 },
///             }).Apply(invoke => invoke.Result) },
///             { "20", defaultNodePool[2].ScalingGroupId },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetInstanceTypes, err := ecs.GetInstanceTypes(ctx, &ecs.GetInstanceTypesArgs{
/// 			AvailabilityZone:   pulumi.StringRef(_default.Zones[0].Id),
/// 			CpuCoreCount:       pulumi.IntRef(4),
/// 			MemorySize:         pulumi.Float64Ref(8),
/// 			KubernetesNodeRole: pulumi.StringRef("Worker"),
/// 			SystemDiskCategory: pulumi.StringRef("cloud_essd"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("10.4.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VswitchName: pulumi.String(name),
/// 			CidrBlock:   pulumi.String("10.4.0.0/24"),
/// 			VpcId:       defaultNetwork.ID(),
/// 			ZoneId:      pulumi.String(_default.Zones[0].Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeCidrsubnet, err := std.Cidrsubnet(ctx, &std.CidrsubnetArgs{
/// 			Input:   "10.0.0.0/8",
/// 			Newbits: 8,
/// 			Netnum:  36,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeCidrsubnet1, err := std.Cidrsubnet(ctx, &std.CidrsubnetArgs{
/// 			Input:   "172.16.0.0/16",
/// 			Newbits: 4,
/// 			Netnum:  7,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultManagedKubernetes, err := cs.NewManagedKubernetes(ctx, "default", &cs.ManagedKubernetesArgs{
/// 			NamePrefix:  pulumi.String(name),
/// 			ClusterSpec: pulumi.String("ack.pro.small"),
/// 			WorkerVswitchIds: pulumi.StringArray{
/// 				defaultSwitch.ID(),
/// 			},
/// 			NewNatGateway:      pulumi.Bool(true),
/// 			PodCidr:            pulumi.String(invokeCidrsubnet.Result),
/// 			ServiceCidr:        pulumi.String(invokeCidrsubnet1.Result),
/// 			SlbInternetEnabled: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat2, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "%s-%d",
/// 			Args: []interface{}{
/// 				name,
/// 				val0,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		var defaultNodePool []*cs.NodePool
/// 		for index := 0; index < 3; index++ {
/// 			key0 := index
/// 			_ := index
/// 			__res, err := cs.NewNodePool(ctx, fmt.Sprintf("default-%v", key0), &cs.NodePoolArgs{
/// 				NodePoolName: pulumi.String(invokeFormat2.Result),
/// 				ClusterId:    defaultManagedKubernetes.ID(),
/// 				VswitchIds: pulumi.StringArray{
/// 					defaultSwitch.ID(),
/// 				},
/// 				InstanceTypes: pulumi.StringArray{
/// 					pulumi.String(defaultGetInstanceTypes.InstanceTypes[0].Id),
/// 				},
/// 				SystemDiskCategory: pulumi.String("cloud_essd"),
/// 				SystemDiskSize:     pulumi.Int(40),
/// 				ImageType:          pulumi.String("AliyunLinux3"),
/// 				ScalingConfig: &cs.NodePoolScalingConfigArgs{
/// 					Enable:  pulumi.Bool(true),
/// 					MinSize: pulumi.Int(0),
/// 					MaxSize: pulumi.Int(10),
/// 				},
/// 			})
/// 			if err != nil {
/// 				return err
/// 			}
/// 			defaultNodePool = append(defaultNodePool, __res)
/// 		}
/// 		_, err = cs.NewAutoscalingConfig(ctx, "default", &cs.AutoscalingConfigArgs{
/// 			ClusterId:                  defaultManagedKubernetes.ID(),
/// 			CoolDownDuration:           pulumi.String("10m"),
/// 			UnneededDuration:           pulumi.String("10m"),
/// 			UtilizationThreshold:       pulumi.String("0.5"),
/// 			GpuUtilizationThreshold:    pulumi.String("0.5"),
/// 			ScanInterval:               pulumi.String("30s"),
/// 			ScaleDownEnabled:           pulumi.Bool(true),
/// 			Expander:                   pulumi.String("priority"),
/// 			SkipNodesWithSystemPods:    pulumi.Bool(true),
/// 			SkipNodesWithLocalStorage:  pulumi.Bool(false),
/// 			DaemonsetEvictionForNodes:  pulumi.Bool(false),
/// 			MaxGracefulTerminationSec:  pulumi.Int(14400),
/// 			MinReplicaCount:            pulumi.Int(0),
/// 			RecycleNodeDeletionEnabled: pulumi.Bool(false),
/// 			ScaleUpFromZero:            pulumi.Bool(true),
/// 			ScalerType:                 pulumi.String("cluster-autoscaler"),
/// 			Priorities: pulumi.StringMap{
/// 				"10": pulumi.String(std.JoinOutput(ctx, std.JoinOutputArgs{
/// 					Separator: pulumi.String(","),
/// 					Input: pulumi.StringArray{
/// 						defaultNodePool[0].ScalingGroupId,
/// 						defaultNodePool[1].ScalingGroupId,
/// 					},
/// 				}, nil).ApplyT(func(invoke std.JoinResult) (*string, error) {
/// 					return invoke.Result, nil
/// 				}).(pulumi.StringPtrOutput)),
/// 				"20": defaultNodePool[2].ScalingGroupId,
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.ecs.EcsFunctions;
/// import com.pulumi.alicloud.ecs.inputs.GetInstanceTypesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.cs.ManagedKubernetes;
/// import com.pulumi.alicloud.cs.ManagedKubernetesArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.CidrsubnetArgs;
/// import com.pulumi.alicloud.cs.NodePool;
/// import com.pulumi.alicloud.cs.NodePoolArgs;
/// import com.pulumi.alicloud.cs.inputs.NodePoolScalingConfigArgs;
/// import com.pulumi.std.inputs.FormatArgs;
/// import com.pulumi.alicloud.cs.AutoscalingConfig;
/// import com.pulumi.alicloud.cs.AutoscalingConfigArgs;
/// import com.pulumi.std.inputs.JoinArgs;
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
///         final var name = config.get("name").orElse("terraform-example");
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         final var defaultGetInstanceTypes = EcsFunctions.getInstanceTypes(GetInstanceTypesArgs.builder()
///             .availabilityZone(default_.zones()[0].id())
///             .cpuCoreCount(4)
///             .memorySize(8)
///             .kubernetesNodeRole("Worker")
///             .systemDiskCategory("cloud_essd")
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("10.4.0.0/16")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vswitchName(name)
///             .cidrBlock("10.4.0.0/24")
///             .vpcId(defaultNetwork.id())
///             .zoneId(default_.zones()[0].id())
///             .build());
///
///         var defaultManagedKubernetes = new ManagedKubernetes("defaultManagedKubernetes", ManagedKubernetesArgs.builder()
///             .namePrefix(name)
///             .clusterSpec("ack.pro.small")
///             .workerVswitchIds(defaultSwitch.id())
///             .newNatGateway(true)
///             .podCidr(StdFunctions.cidrsubnet(CidrsubnetArgs.builder()
///                 .input("10.0.0.0/8")
///                 .newbits(8)
///                 .netnum(36)
///                 .build()).result())
///             .serviceCidr(StdFunctions.cidrsubnet(CidrsubnetArgs.builder()
///                 .input("172.16.0.0/16")
///                 .newbits(4)
///                 .netnum(7)
///                 .build()).result())
///             .slbInternetEnabled(true)
///             .build());
///
///         for (var i = 0; i < 3; i++) {
///             new NodePool("defaultNodePool-" + i, NodePoolArgs.builder()
///                 .nodePoolName(StdFunctions.format(FormatArgs.builder()
///                     .input("%s-%d")
///                     .args(
///                         name,
///                         range.value())
///                     .build()).result())
///                 .clusterId(defaultManagedKubernetes.id())
///                 .vswitchIds(defaultSwitch.id())
///                 .instanceTypes(defaultGetInstanceTypes.instanceTypes()[0].id())
///                 .systemDiskCategory("cloud_essd")
///                 .systemDiskSize(40)
///                 .imageType("AliyunLinux3")
///                 .scalingConfig(NodePoolScalingConfigArgs.builder()
///                     .enable(true)
///                     .minSize(0)
///                     .maxSize(10)
///                     .build())
///                 .build());
///
///
/// }
///         var defaultAutoscalingConfig = new AutoscalingConfig("defaultAutoscalingConfig", AutoscalingConfigArgs.builder()
///             .clusterId(defaultManagedKubernetes.id())
///             .coolDownDuration("10m")
///             .unneededDuration("10m")
///             .utilizationThreshold("0.5")
///             .gpuUtilizationThreshold("0.5")
///             .scanInterval("30s")
///             .scaleDownEnabled(true)
///             .expander("priority")
///             .skipNodesWithSystemPods(true)
///             .skipNodesWithLocalStorage(false)
///             .daemonsetEvictionForNodes(false)
///             .maxGracefulTerminationSec(14400)
///             .minReplicaCount(0)
///             .recycleNodeDeletionEnabled(false)
///             .scaleUpFromZero(true)
///             .scalerType("cluster-autoscaler")
///             .priorities(Map.ofEntries(
///                 Map.entry("10", StdFunctions.join(JoinArgs.builder()
///                     .separator(",")
///                     .input(
///                         defaultNodePool[0].scalingGroupId(),
///                         defaultNodePool[1].scalingGroupId())
///                     .build()).applyValue(_invoke -> _invoke.result())),
///                 Map.entry("20", defaultNodePool[2].scalingGroupId())
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       vpcName: ${name}
///       cidrBlock: 10.4.0.0/16
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vswitchName: ${name}
///       cidrBlock: 10.4.0.0/24
///       vpcId: ${defaultNetwork.id}
///       zoneId: ${default.zones[0].id}
///   defaultManagedKubernetes:
///     type: alicloud:cs:ManagedKubernetes
///     name: default
///     properties:
///       namePrefix: ${name}
///       clusterSpec: ack.pro.small
///       workerVswitchIds:
///         - ${defaultSwitch.id}
///       newNatGateway: true
///       podCidr:
///         fn::invoke:
///           function: std:cidrsubnet
///           arguments:
///             input: 10.0.0.0/8
///             newbits: 8
///             netnum: 36
///           return: result
///       serviceCidr:
///         fn::invoke:
///           function: std:cidrsubnet
///           arguments:
///             input: 172.16.0.0/16
///             newbits: 4
///             netnum: 7
///           return: result
///       slbInternetEnabled: true
///   defaultNodePool:
///     type: alicloud:cs:NodePool
///     name: default
///     properties:
///       nodePoolName:
///         fn::invoke:
///           function: std:format
///           arguments:
///             input: '%s-%d'
///             args:
///               - ${name}
///               - ${range.value}
///           return: result
///       clusterId: ${defaultManagedKubernetes.id}
///       vswitchIds:
///         - ${defaultSwitch.id}
///       instanceTypes:
///         - ${defaultGetInstanceTypes.instanceTypes[0].id}
///       systemDiskCategory: cloud_essd
///       systemDiskSize: 40
///       imageType: AliyunLinux3
///       scalingConfig:
///         enable: true
///         minSize: 0
///         maxSize: 10
///     options: {}
///   defaultAutoscalingConfig:
///     type: alicloud:cs:AutoscalingConfig
///     name: default
///     properties:
///       clusterId: ${defaultManagedKubernetes.id}
///       coolDownDuration: 10m
///       unneededDuration: 10m
///       utilizationThreshold: '0.5'
///       gpuUtilizationThreshold: '0.5'
///       scanInterval: 30s
///       scaleDownEnabled: true
///       expander: priority
///       skipNodesWithSystemPods: true
///       skipNodesWithLocalStorage: false
///       daemonsetEvictionForNodes: false
///       maxGracefulTerminationSec: 14400
///       minReplicaCount: 0
///       recycleNodeDeletionEnabled: false
///       scaleUpFromZero: true
///       scalerType: cluster-autoscaler
///       priorities:
///         '10':
///           fn::invoke:
///             function: std:join
///             arguments:
///               separator: ','
///               input:
///                 - ${defaultNodePool[0].scalingGroupId}
///                 - ${defaultNodePool[1].scalingGroupId}
///             return: result
///         '20': ${defaultNodePool[2].scalingGroupId}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableResourceCreation: VSwitch
///   defaultGetInstanceTypes:
///     fn::invoke:
///       function: alicloud:ecs:getInstanceTypes
///       arguments:
///         availabilityZone: ${default.zones[0].id}
///         cpuCoreCount: 4
///         memorySize: 8
///         kubernetesNodeRole: Worker
///         systemDiskCategory: cloud_essd
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
class AutoscalingConfig extends pulumi.CustomResource {
  /// The id of kubernetes cluster.
  late final pulumi.Output<String?> clusterId;
  /// Specify the time interval between detecting a scale-in requirement (when the threshold is reached) and actually executing the scale-in operation (reducing the number of Pods). Default is `10m`. If the delay (cooldown) value is set too long, there could be complaints that the Horizontal Pod Autoscaler is not responsive to workload changes. However, if the delay value is set too short, the scale of the replicas set may keep thrashing as usual.
  late final pulumi.Output<String?> coolDownDuration;
  /// If true DaemonSet pods will be  terminated from nodes. Default is `false`.
  late final pulumi.Output<bool?> daemonsetEvictionForNodes;
  /// The policy for selecting which node pool to scale. Valid values: `least-waste`, `random`, `priority`. For scaler type `goatscaler`, only the `least-waste` expander is currently supported. For more information on these policies, see [Configure auto scaling](https://www.alibabacloud.com/help/en/container-service-for-kubernetes/latest/auto-scaling-of-nodes#section-3bg-2ko-inl)
  late final pulumi.Output<String?> expander;
  /// The scale-in threshold for GPU instance. Default is `0.5`.
  late final pulumi.Output<String?> gpuUtilizationThreshold;
  /// Maximum number of seconds CA waits for pod termination when trying to scale down a node. Default is `14400`.
  late final pulumi.Output<int?> maxGracefulTerminationSec;
  /// Minimum number of replicas that a replica set or replication controller should have to allow their pods deletion in scale down. Default is `0`.
  late final pulumi.Output<int?> minReplicaCount;
  /// Priority settings for autoscaling node pool scaling groups. This parameter only takes effect when `expander` is set to `priority`. Only supports scaler type `cluster-autoscaler`. Uses key-value pairs where the key is the priority value, and the value is a comma-separated list of scaling group IDs. High numerical values indicate higher priority.
  late final pulumi.Output<Map<String, String>?> priorities;
  /// Should CA delete the K8s node object when recycle node has scaled down successfully. Default is `false`.
  late final pulumi.Output<bool?> recycleNodeDeletionEnabled;
  /// Specify whether to allow the scale-in of nodes. Default is `true`.
  late final pulumi.Output<bool?> scaleDownEnabled;
  /// Should CA scale up when there 0 ready nodes. Default is `true`.
  late final pulumi.Output<bool?> scaleUpFromZero;
  /// The type of autoscaler. Valid values: `cluster-autoscaler`, `goatscaler`. For cluster version 1.22 and below, we only support `cluster-autoscaler`. When switching from `cluster-autoscaler` to `goatscaler`, all configuration parameters will be automatically migrated.
  late final pulumi.Output<String?> scalerType;
  /// The interval at which the cluster is reevaluated for scaling. Default is `30s`.
  late final pulumi.Output<String?> scanInterval;
  /// If true cluster autoscaler will never delete nodes with pods with local storage, e.g. EmptyDir or HostPath. Default is `false`.
  late final pulumi.Output<bool?> skipNodesWithLocalStorage;
  /// If true cluster autoscaler will never delete nodes with pods from kube-system (except for DaemonSet or mirror pods). Default is `true`.
  late final pulumi.Output<bool?> skipNodesWithSystemPods;
  /// Specify the time interval during which autoscaler does not perform scale-in operations after the most recent scale-out completion. Nodes added through scale-out can only be considered for scale-in after the period has elapsed. Default is `10m`.
  late final pulumi.Output<String?> unneededDuration;
  /// The scale-in a threshold. Default is `0.5`.
  late final pulumi.Output<String?> utilizationThreshold;

  /// Creates a new [AutoscalingConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AutoscalingConfig]. {@macro pulumi_cs_autoscaling_config_autoscaling_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AutoscalingConfig(
    String name, {
    AutoscalingConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cs/autoscalingConfig:AutoscalingConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clusterId = registerOutput<String?>('clusterId');
    this.coolDownDuration = registerOutput<String?>('coolDownDuration');
    this.daemonsetEvictionForNodes = registerOutput<bool?>('daemonsetEvictionForNodes');
    this.expander = registerOutput<String?>('expander');
    this.gpuUtilizationThreshold = registerOutput<String?>('gpuUtilizationThreshold');
    this.maxGracefulTerminationSec = registerOutput<int?>('maxGracefulTerminationSec');
    this.minReplicaCount = registerOutput<int?>('minReplicaCount');
    this.priorities = registerOutput<Map<String, String>?>('priorities');
    this.recycleNodeDeletionEnabled = registerOutput<bool?>('recycleNodeDeletionEnabled');
    this.scaleDownEnabled = registerOutput<bool?>('scaleDownEnabled');
    this.scaleUpFromZero = registerOutput<bool?>('scaleUpFromZero');
    this.scalerType = registerOutput<String?>('scalerType');
    this.scanInterval = registerOutput<String?>('scanInterval');
    this.skipNodesWithLocalStorage = registerOutput<bool?>('skipNodesWithLocalStorage');
    this.skipNodesWithSystemPods = registerOutput<bool?>('skipNodesWithSystemPods');
    this.unneededDuration = registerOutput<String?>('unneededDuration');
    this.utilizationThreshold = registerOutput<String?>('utilizationThreshold');
  }
}
