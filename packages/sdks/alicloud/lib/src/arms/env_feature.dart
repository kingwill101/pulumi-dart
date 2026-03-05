import 'package:pulumi/pulumi.dart' as pulumi;
import 'env_feature_args.dart';
import 'env_feature_state.dart';

/// Provides a ARMS Env Feature resource. Feature of the arms environment.
///
/// For information about ARMS Env Feature and how to use it, see [What is Env Feature](https://www.alibabacloud.com/help/en/arms/developer-reference/api-arms-2019-08-08-installenvironmentfeature).
///
/// &gt; **NOTE:** Available since v1.212.0.
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
/// const defaultInteger = new random.index.Integer("default", {
///     max: 99999,
///     min: 10000,
/// });
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const enhanced = alicloud.vpc.getEnhancedNatAvailableZones({});
/// const vpc = new alicloud.vpc.Network("vpc", {
///     description: name,
///     cidrBlock: "192.168.0.0/16",
///     vpcName: name,
/// });
/// const vswitch = new alicloud.vpc.Switch("vswitch", {
///     description: name,
///     vpcId: vpc.id,
///     vswitchName: name,
///     zoneId: enhanced.then(enhanced => enhanced.zones?.[0]?.zoneId),
///     cidrBlock: vpc.cidrBlock.apply(cidrBlock => std.cidrsubnetOutput({
///         input: cidrBlock,
///         newbits: 8,
///         netnum: 8,
///     })).apply(invoke => invoke.result),
/// });
/// const defaultSnapshotPolicy = new alicloud.ecs.SnapshotPolicy("default", {
///     name: name,
///     repeatWeekdays: [
///         "1",
///         "2",
///         "3",
///     ],
///     retentionDays: -1,
///     timePoints: [
///         "1",
///         "22",
///         "23",
///     ],
/// });
/// const _default = vswitch.zoneId.apply(zoneId => alicloud.ecs.getInstanceTypesOutput({
///     availabilityZone: zoneId,
///     cpuCoreCount: 2,
///     memorySize: 4,
///     kubernetesNodeRole: "Worker",
///     instanceTypeFamily: "ecs.sn1ne",
/// }));
/// const defaultManagedKubernetes = new alicloud.cs.ManagedKubernetes("default", {
///     name: `terraform-example-${defaultInteger.result}`,
///     clusterSpec: "ack.pro.small",
///     version: "1.24.6-aliyun.1",
///     newNatGateway: true,
///     nodeCidrMask: 26,
///     proxyMode: "ipvs",
///     serviceCidr: "172.23.0.0/16",
///     podCidr: "10.95.0.0/16",
///     workerVswitchIds: [vswitch.id],
/// });
/// const defaultKeyPair = new alicloud.ecs.KeyPair("default", {keyPairName: `${name}-${defaultInteger.result}`});
/// const defaultNodePool = new alicloud.cs.NodePool("default", {
///     nodePoolName: "desired_size",
///     clusterId: defaultManagedKubernetes.id,
///     vswitchIds: [vswitch.id],
///     instanceTypes: [_default.apply(_default => _default.instanceTypes?.[0]?.id)],
///     systemDiskCategory: "cloud_efficiency",
///     systemDiskSize: 40,
///     keyName: defaultKeyPair.keyPairName,
///     desiredSize: "2",
/// });
/// const defaultEnvironment = new alicloud.arms.Environment("default", {
///     bindResourceId: defaultNodePool.clusterId,
///     environmentSubType: "ManagedKubernetes",
///     environmentType: "CS",
///     environmentName: `terraform-example-${defaultInteger.result}`,
/// });
/// const defaultEnvFeature = new alicloud.arms.EnvFeature("default", {
///     envFeatureName: "metric-agent",
///     environmentId: defaultEnvironment.id,
///     featureVersion: "1.1.17",
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
/// enhanced = alicloud.vpc.get_enhanced_nat_available_zones()
/// vpc = alicloud.vpc.Network("vpc",
///     description=name,
///     cidr_block="192.168.0.0/16",
///     vpc_name=name)
/// vswitch = alicloud.vpc.Switch("vswitch",
///     description=name,
///     vpc_id=vpc.id,
///     vswitch_name=name,
///     zone_id=enhanced.zones[0].zone_id,
///     cidr_block=vpc.cidr_block.apply(lambda cidr_block: std.cidrsubnet_output(input=cidr_block,
///         newbits=8,
///         netnum=8)).apply(lambda invoke: invoke.result))
/// default_snapshot_policy = alicloud.ecs.SnapshotPolicy("default",
///     name=name,
///     repeat_weekdays=[
///         "1",
///         "2",
///         "3",
///     ],
///     retention_days=-1,
///     time_points=[
///         "1",
///         "22",
///         "23",
///     ])
/// default = vswitch.zone_id.apply(lambda zone_id: alicloud.ecs.get_instance_types_output(availability_zone=zone_id,
///     cpu_core_count=2,
///     memory_size=4,
///     kubernetes_node_role="Worker",
///     instance_type_family="ecs.sn1ne"))
/// default_managed_kubernetes = alicloud.cs.ManagedKubernetes("default",
///     name=f"terraform-example-{default_integer['result']}",
///     cluster_spec="ack.pro.small",
///     version="1.24.6-aliyun.1",
///     new_nat_gateway=True,
///     node_cidr_mask=26,
///     proxy_mode="ipvs",
///     service_cidr="172.23.0.0/16",
///     pod_cidr="10.95.0.0/16",
///     worker_vswitch_ids=[vswitch.id])
/// default_key_pair = alicloud.ecs.KeyPair("default", key_pair_name=f"{name}-{default_integer['result']}")
/// default_node_pool = alicloud.cs.NodePool("default",
///     node_pool_name="desired_size",
///     cluster_id=default_managed_kubernetes.id,
///     vswitch_ids=[vswitch.id],
///     instance_types=[default.instance_types[0].id],
///     system_disk_category="cloud_efficiency",
///     system_disk_size=40,
///     key_name=default_key_pair.key_pair_name,
///     desired_size="2")
/// default_environment = alicloud.arms.Environment("default",
///     bind_resource_id=default_node_pool.cluster_id,
///     environment_sub_type="ManagedKubernetes",
///     environment_type="CS",
///     environment_name=f"terraform-example-{default_integer['result']}")
/// default_env_feature = alicloud.arms.EnvFeature("default",
///     env_feature_name="metric-agent",
///     environment_id=default_environment.id,
///     feature_version="1.1.17")
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
///     var enhanced = AliCloud.Vpc.GetEnhancedNatAvailableZones.Invoke();
///
///     var vpc = new AliCloud.Vpc.Network("vpc", new()
///     {
///         Description = name,
///         CidrBlock = "192.168.0.0/16",
///         VpcName = name,
///     });
///
///     var vswitch = new AliCloud.Vpc.Switch("vswitch", new()
///     {
///         Description = name,
///         VpcId = vpc.Id,
///         VswitchName = name,
///         ZoneId = enhanced.Apply(getEnhancedNatAvailableZonesResult => getEnhancedNatAvailableZonesResult.Zones[0]?.ZoneId),
///         CidrBlock = vpc.CidrBlock.Apply(cidrBlock => Std.Cidrsubnet.Invoke(new()
///         {
///             Input = cidrBlock,
///             Newbits = 8,
///             Netnum = 8,
///         })).Apply(invoke => invoke.Result),
///     });
///
///     var defaultSnapshotPolicy = new AliCloud.Ecs.SnapshotPolicy("default", new()
///     {
///         Name = name,
///         RepeatWeekdays = new[]
///         {
///             "1",
///             "2",
///             "3",
///         },
///         RetentionDays = -1,
///         TimePoints = new[]
///         {
///             "1",
///             "22",
///             "23",
///         },
///     });
///
///     var @default = AliCloud.Ecs.GetInstanceTypes.Invoke(new()
///     {
///         AvailabilityZone = vswitch.ZoneId,
///         CpuCoreCount = 2,
///         MemorySize = 4,
///         KubernetesNodeRole = "Worker",
///         InstanceTypeFamily = "ecs.sn1ne",
///     });
///
///     var defaultManagedKubernetes = new AliCloud.CS.ManagedKubernetes("default", new()
///     {
///         Name = $"terraform-example-{defaultInteger.Result}",
///         ClusterSpec = "ack.pro.small",
///         Version = "1.24.6-aliyun.1",
///         NewNatGateway = true,
///         NodeCidrMask = 26,
///         ProxyMode = "ipvs",
///         ServiceCidr = "172.23.0.0/16",
///         PodCidr = "10.95.0.0/16",
///         WorkerVswitchIds = new[]
///         {
///             vswitch.Id,
///         },
///     });
///
///     var defaultKeyPair = new AliCloud.Ecs.KeyPair("default", new()
///     {
///         KeyPairName = $"{name}-{defaultInteger.Result}",
///     });
///
///     var defaultNodePool = new AliCloud.CS.NodePool("default", new()
///     {
///         NodePoolName = "desired_size",
///         ClusterId = defaultManagedKubernetes.Id,
///         VswitchIds = new[]
///         {
///             vswitch.Id,
///         },
///         InstanceTypes = new[]
///         {
///             @default.Apply(@default => @default.Apply(getInstanceTypesResult => getInstanceTypesResult.InstanceTypes[0]?.Id)),
///         },
///         SystemDiskCategory = "cloud_efficiency",
///         SystemDiskSize = 40,
///         KeyName = defaultKeyPair.KeyPairName,
///         DesiredSize = "2",
///     });
///
///     var defaultEnvironment = new AliCloud.Arms.Environment("default", new()
///     {
///         BindResourceId = defaultNodePool.ClusterId,
///         EnvironmentSubType = "ManagedKubernetes",
///         EnvironmentType = "CS",
///         EnvironmentName = $"terraform-example-{defaultInteger.Result}",
///     });
///
///     var defaultEnvFeature = new AliCloud.Arms.EnvFeature("default", new()
///     {
///         EnvFeatureName = "metric-agent",
///         EnvironmentId = defaultEnvironment.Id,
///         FeatureVersion = "1.1.17",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/arms"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// defaultInteger, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// Max: 99999,
/// Min: 10000,
/// })
/// if err != nil {
/// return err
/// }
/// cfg := config.New(ctx, "")
/// name := "terraform-example";
/// if param := cfg.Get("name"); param != ""{
/// name = param
/// }
/// enhanced, err := vpc.GetEnhancedNatAvailableZones(ctx, &vpc.GetEnhancedNatAvailableZonesArgs{
/// }, nil);
/// if err != nil {
/// return err
/// }
/// vpc, err := vpc.NewNetwork(ctx, "vpc", &vpc.NetworkArgs{
/// Description: pulumi.String(name),
/// CidrBlock: pulumi.String("192.168.0.0/16"),
/// VpcName: pulumi.String(name),
/// })
/// if err != nil {
/// return err
/// }
/// invokeCidrsubnet, err := std.Cidrsubnet(ctx, &std.CidrsubnetArgs{
/// Input: cidrBlock,
/// Newbits: 8,
/// Netnum: 8,
/// }, nil)
/// if err != nil {
/// return err
/// }
/// vswitch, err := vpc.NewSwitch(ctx, "vswitch", &vpc.SwitchArgs{
/// Description: pulumi.String(name),
/// VpcId: vpc.ID(),
/// VswitchName: pulumi.String(name),
/// ZoneId: pulumi.String(enhanced.Zones[0].ZoneId),
/// CidrBlock: pulumi.String(vpc.CidrBlock.ApplyT(func(cidrBlock string) (std.CidrsubnetResult, error) {
/// %!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference)).(std.CidrsubnetResultOutput).ApplyT(func(invoke std.CidrsubnetResult) (*string, error) {
/// return invoke.Result, nil
/// }).(pulumi.StringPtrOutput)),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ecs.NewSnapshotPolicy(ctx, "default", &ecs.SnapshotPolicyArgs{
/// Name: pulumi.String(name),
/// RepeatWeekdays: pulumi.StringArray{
/// pulumi.String("1"),
/// pulumi.String("2"),
/// pulumi.String("3"),
/// },
/// RetentionDays: pulumi.Int(-1),
/// TimePoints: pulumi.StringArray{
/// pulumi.String("1"),
/// pulumi.String("22"),
/// pulumi.String("23"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _default := vswitch.ZoneId.ApplyT(func(zoneId string) (ecs.GetInstanceTypesResult, error) {
/// return ecs.GetInstanceTypesResult(interface{}(ecs.GetInstanceTypes(ctx, &ecs.GetInstanceTypesArgs{
/// AvailabilityZone: pulumi.StringRef(pulumi.StringRef(zoneId)),
/// CpuCoreCount: pulumi.IntRef(pulumi.IntRef(int(2))),
/// MemorySize: pulumi.Float64Ref(pulumi.Float64Ref(4)),
/// KubernetesNodeRole: pulumi.StringRef(pulumi.StringRef("Worker")),
/// InstanceTypeFamily: pulumi.StringRef(pulumi.StringRef("ecs.sn1ne")),
/// }, nil))), nil
/// }).(ecs.GetInstanceTypesResultOutput)
/// defaultManagedKubernetes, err := cs.NewManagedKubernetes(ctx, "default", &cs.ManagedKubernetesArgs{
/// Name: pulumi.Sprintf("terraform-example-%v", defaultInteger.Result),
/// ClusterSpec: pulumi.String("ack.pro.small"),
/// Version: pulumi.String("1.24.6-aliyun.1"),
/// NewNatGateway: pulumi.Bool(true),
/// NodeCidrMask: pulumi.Int(26),
/// ProxyMode: pulumi.String("ipvs"),
/// ServiceCidr: pulumi.String("172.23.0.0/16"),
/// PodCidr: pulumi.String("10.95.0.0/16"),
/// WorkerVswitchIds: pulumi.StringArray{
/// vswitch.ID(),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// defaultKeyPair, err := ecs.NewKeyPair(ctx, "default", &ecs.KeyPairArgs{
/// KeyPairName: pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
/// })
/// if err != nil {
/// return err
/// }
/// defaultNodePool, err := cs.NewNodePool(ctx, "default", &cs.NodePoolArgs{
/// NodePoolName: pulumi.String("desired_size"),
/// ClusterId: defaultManagedKubernetes.ID(),
/// VswitchIds: pulumi.StringArray{
/// vswitch.ID(),
/// },
/// InstanceTypes: pulumi.StringArray{
/// pulumi.String(_default.ApplyT(func(_default ecs.GetInstanceTypesResult) (*string, error) {
/// return &default.InstanceTypes[0].Id, nil
/// }).(pulumi.StringPtrOutput)),
/// },
/// SystemDiskCategory: pulumi.String("cloud_efficiency"),
/// SystemDiskSize: pulumi.Int(40),
/// KeyName: defaultKeyPair.KeyPairName,
/// DesiredSize: pulumi.String("2"),
/// })
/// if err != nil {
/// return err
/// }
/// defaultEnvironment, err := arms.NewEnvironment(ctx, "default", &arms.EnvironmentArgs{
/// BindResourceId: defaultNodePool.ClusterId,
/// EnvironmentSubType: pulumi.String("ManagedKubernetes"),
/// EnvironmentType: pulumi.String("CS"),
/// EnvironmentName: pulumi.Sprintf("terraform-example-%v", defaultInteger.Result),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = arms.NewEnvFeature(ctx, "default", &arms.EnvFeatureArgs{
/// EnvFeatureName: pulumi.String("metric-agent"),
/// EnvironmentId: defaultEnvironment.ID(),
/// FeatureVersion: pulumi.String("1.1.17"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
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
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.CidrsubnetArgs;
/// import com.pulumi.alicloud.ecs.SnapshotPolicy;
/// import com.pulumi.alicloud.ecs.SnapshotPolicyArgs;
/// import com.pulumi.alicloud.ecs.EcsFunctions;
/// import com.pulumi.alicloud.ecs.inputs.GetInstanceTypesArgs;
/// import com.pulumi.alicloud.cs.ManagedKubernetes;
/// import com.pulumi.alicloud.cs.ManagedKubernetesArgs;
/// import com.pulumi.alicloud.ecs.KeyPair;
/// import com.pulumi.alicloud.ecs.KeyPairArgs;
/// import com.pulumi.alicloud.cs.NodePool;
/// import com.pulumi.alicloud.cs.NodePoolArgs;
/// import com.pulumi.alicloud.arms.Environment;
/// import com.pulumi.alicloud.arms.EnvironmentArgs;
/// import com.pulumi.alicloud.arms.EnvFeature;
/// import com.pulumi.alicloud.arms.EnvFeatureArgs;
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
///         final var enhanced = VpcFunctions.getEnhancedNatAvailableZones(GetEnhancedNatAvailableZonesArgs.builder()
///             .build());
///
///         var vpc = new Network("vpc", NetworkArgs.builder()
///             .description(name)
///             .cidrBlock("192.168.0.0/16")
///             .vpcName(name)
///             .build());
///
///         var vswitch = new Switch("vswitch", SwitchArgs.builder()
///             .description(name)
///             .vpcId(vpc.id())
///             .vswitchName(name)
///             .zoneId(enhanced.zones()[0].zoneId())
///             .cidrBlock(vpc.cidrBlock().applyValue(_cidrBlock -> StdFunctions.cidrsubnet(CidrsubnetArgs.builder()
///                 .input(_cidrBlock)
///                 .newbits(8)
///                 .netnum(8)
///                 .build())).applyValue(_invoke -> _invoke.result()))
///             .build());
///
///         var defaultSnapshotPolicy = new SnapshotPolicy("defaultSnapshotPolicy", SnapshotPolicyArgs.builder()
///             .name(name)
///             .repeatWeekdays(
///                 "1",
///                 "2",
///                 "3")
///             .retentionDays(-1)
///             .timePoints(
///                 "1",
///                 "22",
///                 "23")
///             .build());
///
///         final var default = vswitch.zoneId().applyValue(_zoneId -> EcsFunctions.getInstanceTypes(GetInstanceTypesArgs.builder()
///             .availabilityZone(_zoneId)
///             .cpuCoreCount(2)
///             .memorySize(4)
///             .kubernetesNodeRole("Worker")
///             .instanceTypeFamily("ecs.sn1ne")
///             .build()));
///
///         var defaultManagedKubernetes = new ManagedKubernetes("defaultManagedKubernetes", ManagedKubernetesArgs.builder()
///             .name(String.format("terraform-example-%s", defaultInteger.result()))
///             .clusterSpec("ack.pro.small")
///             .version("1.24.6-aliyun.1")
///             .newNatGateway(true)
///             .nodeCidrMask(26)
///             .proxyMode("ipvs")
///             .serviceCidr("172.23.0.0/16")
///             .podCidr("10.95.0.0/16")
///             .workerVswitchIds(vswitch.id())
///             .build());
///
///         var defaultKeyPair = new KeyPair("defaultKeyPair", KeyPairArgs.builder()
///             .keyPairName(String.format("%s-%s", name,defaultInteger.result()))
///             .build());
///
///         var defaultNodePool = new NodePool("defaultNodePool", NodePoolArgs.builder()
///             .nodePoolName("desired_size")
///             .clusterId(defaultManagedKubernetes.id())
///             .vswitchIds(vswitch.id())
///             .instanceTypes(default_.applyValue(_default_ -> _default_.instanceTypes()[0].id()))
///             .systemDiskCategory("cloud_efficiency")
///             .systemDiskSize(40)
///             .keyName(defaultKeyPair.keyPairName())
///             .desiredSize("2")
///             .build());
///
///         var defaultEnvironment = new Environment("defaultEnvironment", EnvironmentArgs.builder()
///             .bindResourceId(defaultNodePool.clusterId())
///             .environmentSubType("ManagedKubernetes")
///             .environmentType("CS")
///             .environmentName(String.format("terraform-example-%s", defaultInteger.result()))
///             .build());
///
///         var defaultEnvFeature = new EnvFeature("defaultEnvFeature", EnvFeatureArgs.builder()
///             .envFeatureName("metric-agent")
///             .environmentId(defaultEnvironment.id())
///             .featureVersion("1.1.17")
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
///   defaultInteger:
///     type: random:Integer
///     name: default
///     properties:
///       max: 99999
///       min: 10000
///   vpc:
///     type: alicloud:vpc:Network
///     properties:
///       description: ${name}
///       cidrBlock: 192.168.0.0/16
///       vpcName: ${name}
///   vswitch:
///     type: alicloud:vpc:Switch
///     properties:
///       description: ${name}
///       vpcId: ${vpc.id}
///       vswitchName: ${name}
///       zoneId: ${enhanced.zones[0].zoneId}
///       cidrBlock:
///         fn::invoke:
///           function: std:cidrsubnet
///           arguments:
///             input: ${vpc.cidrBlock}
///             newbits: 8
///             netnum: 8
///           return: result
///   defaultSnapshotPolicy:
///     type: alicloud:ecs:SnapshotPolicy
///     name: default
///     properties:
///       name: ${name}
///       repeatWeekdays:
///         - '1'
///         - '2'
///         - '3'
///       retentionDays: -1
///       timePoints:
///         - '1'
///         - '22'
///         - '23'
///   defaultManagedKubernetes:
///     type: alicloud:cs:ManagedKubernetes
///     name: default
///     properties:
///       name: terraform-example-${defaultInteger.result}
///       clusterSpec: ack.pro.small
///       version: 1.24.6-aliyun.1
///       newNatGateway: true
///       nodeCidrMask: 26
///       proxyMode: ipvs
///       serviceCidr: 172.23.0.0/16
///       podCidr: 10.95.0.0/16
///       workerVswitchIds:
///         - ${vswitch.id}
///   defaultKeyPair:
///     type: alicloud:ecs:KeyPair
///     name: default
///     properties:
///       keyPairName: ${name}-${defaultInteger.result}
///   defaultNodePool:
///     type: alicloud:cs:NodePool
///     name: default
///     properties:
///       nodePoolName: desired_size
///       clusterId: ${defaultManagedKubernetes.id}
///       vswitchIds:
///         - ${vswitch.id}
///       instanceTypes:
///         - ${default.instanceTypes[0].id}
///       systemDiskCategory: cloud_efficiency
///       systemDiskSize: 40
///       keyName: ${defaultKeyPair.keyPairName}
///       desiredSize: 2
///   defaultEnvironment:
///     type: alicloud:arms:Environment
///     name: default
///     properties:
///       bindResourceId: ${defaultNodePool.clusterId}
///       environmentSubType: ManagedKubernetes
///       environmentType: CS
///       environmentName: terraform-example-${defaultInteger.result}
///   defaultEnvFeature:
///     type: alicloud:arms:EnvFeature
///     name: default
///     properties:
///       envFeatureName: metric-agent
///       environmentId: ${defaultEnvironment.id}
///       featureVersion: 1.1.17
/// variables:
///   enhanced:
///     fn::invoke:
///       function: alicloud:vpc:getEnhancedNatAvailableZones
///       arguments: {}
///   default:
///     fn::invoke:
///       function: alicloud:ecs:getInstanceTypes
///       arguments:
///         availabilityZone: ${vswitch.zoneId}
///         cpuCoreCount: 2
///         memorySize: 4
///         kubernetesNodeRole: Worker
///         instanceTypeFamily: ecs.sn1ne
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ARMS Env Feature can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:arms/envFeature:EnvFeature example <environment_id>:<env_feature_name>
/// ```
class EnvFeature extends pulumi.CustomResource {
  /// The name of the resource.
  late final pulumi.Output<String> envFeatureName;
  /// The first ID of the resource.
  late final pulumi.Output<String> environmentId;
  /// Version information of the Feature. You can query Feature information by using ListEnvironmentFeatures.
  late final pulumi.Output<String> featureVersion;
  /// Namespace.
  late final pulumi.Output<String> namespace;
  /// Status.
  late final pulumi.Output<String> status;

  /// Creates a new [EnvFeature].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EnvFeature]. {@macro pulumi_arms_env_feature_env_feature_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EnvFeature(
    String name, {
    EnvFeatureArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:arms/envFeature:EnvFeature',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    envFeatureName = registerOutput<String>('envFeatureName');
    environmentId = registerOutput<String>('environmentId');
    featureVersion = registerOutput<String>('featureVersion');
    namespace = registerOutput<String>('namespace');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [EnvFeature] resource's state with the given [name] and [id].
  static EnvFeature get(
    String name,
    pulumi.Input<String> id, {
    EnvFeatureState? state,
  }) {
    return EnvFeature._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EnvFeature._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:arms/envFeature:EnvFeature',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    envFeatureName = registerOutput<String>('envFeatureName');
    environmentId = registerOutput<String>('environmentId');
    featureVersion = registerOutput<String>('featureVersion');
    namespace = registerOutput<String>('namespace');
    status = registerOutput<String>('status');
  }
}
