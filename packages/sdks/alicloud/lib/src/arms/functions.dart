import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_addon_releases_args.dart';
import 'get_addon_releases_result.dart';
import 'get_alert_contact_groups_args.dart';
import 'get_alert_contact_groups_result.dart';
import 'get_alert_contacts_args.dart';
import 'get_alert_contacts_result.dart';
import 'get_alert_robots_args.dart';
import 'get_alert_robots_result.dart';
import 'get_dispatch_rules_args.dart';
import 'get_dispatch_rules_result.dart';
import 'get_env_custom_jobs_args.dart';
import 'get_env_custom_jobs_result.dart';
import 'get_env_features_args.dart';
import 'get_env_features_result.dart';
import 'get_env_pod_monitors_args.dart';
import 'get_env_pod_monitors_result.dart';
import 'get_env_service_monitors_args.dart';
import 'get_env_service_monitors_result.dart';
import 'get_environments_args.dart';
import 'get_environments_result.dart';
import 'get_integration_exporters_args.dart';
import 'get_integration_exporters_result.dart';
import 'get_prometheis_args.dart';
import 'get_prometheis_result.dart';
import 'get_prometheus_alert_rules_args.dart';
import 'get_prometheus_alert_rules_result.dart';
import 'get_prometheus_args.dart';
import 'get_prometheus_monitorings_args.dart';
import 'get_prometheus_monitorings_result.dart';
import 'get_prometheus_result.dart';
import 'get_remote_writes_args.dart';
import 'get_remote_writes_result.dart';

/// This data source provides the ARMS Addon Releases of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.258.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as random from "@pulumi/random";
/// import * as std from "@pulumi/std";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const defaultInteger = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const enhanced = alicloud.vpc.getEnhancedNatAvailableZones({});
/// const vpc = new alicloud.vpc.Network("vpc", {
///     description: "api-resource-test1-hz",
///     cidrBlock: "192.168.0.0/16",
///     vpcName: `${name}-${defaultInteger.result}`,
/// });
/// const vswitch = new alicloud.vpc.Switch("vswitch", {
///     description: "api-resource-test1-hz",
///     vpcId: vpc.id,
///     vswitchName: `${name}-${defaultInteger.result}`,
///     zoneId: enhanced.then(enhanced => enhanced.zones?.[0]?.zoneId),
///     cidrBlock: vpc.cidrBlock.apply(cidrBlock => std.cidrsubnetOutput({
///         input: cidrBlock,
///         newbits: 8,
///         netnum: 8,
///     })).apply(invoke => invoke.result),
/// });
/// const defaultSnapshotPolicy = new alicloud.ecs.SnapshotPolicy("default", {
///     name: `${name}-${defaultInteger.result}`,
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
///     name: `${name}-${defaultInteger.result}`,
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
///     name: "desired_size",
///     clusterId: defaultManagedKubernetes.id,
///     vswitchIds: [vswitch.id],
///     instanceTypes: [_default.apply(_default => _default.instanceTypes?.[0]?.id)],
///     systemDiskCategory: "cloud_efficiency",
///     systemDiskSize: 40,
///     keyName: defaultKeyPair.keyPairName,
///     desiredSize: "2",
/// });
/// const defaultEnvironment = new alicloud.arms.Environment("default", {
///     environmentType: "CS",
///     environmentName: `${name}-${defaultInteger.result}`,
///     bindResourceId: defaultNodePool.clusterId,
///     environmentSubType: "ManagedKubernetes",
/// });
/// const defaultAddonRelease = new alicloud.arms.AddonRelease("default", {
///     aliyunLang: "zh",
///     addonName: "mysql",
///     environmentId: defaultEnvironment.id,
///     addonVersion: "0.0.2",
///     values: JSON.stringify({
///         host: "mysql-service.default",
///         password: "roots",
///         port: 3306,
///         username: "root",
///     }),
/// });
/// const ids = alicloud.arms.getAddonReleasesOutput({
///     environmentId: defaultAddonRelease.environmentId,
///     ids: [defaultAddonRelease.id],
/// });
/// export const armsEnvServiceMonitorsId0 = ids.apply(ids => ids.releases?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
/// import pulumi_std as std
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default_integer = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// enhanced = alicloud.vpc.get_enhanced_nat_available_zones()
/// vpc = alicloud.vpc.Network("vpc",
///     description="api-resource-test1-hz",
///     cidr_block="192.168.0.0/16",
///     vpc_name=f"{name}-{default_integer['result']}")
/// vswitch = alicloud.vpc.Switch("vswitch",
///     description="api-resource-test1-hz",
///     vpc_id=vpc.id,
///     vswitch_name=f"{name}-{default_integer['result']}",
///     zone_id=enhanced.zones[0].zone_id,
///     cidr_block=vpc.cidr_block.apply(lambda cidr_block: std.cidrsubnet_output(input=cidr_block,
///         newbits=8,
///         netnum=8)).apply(lambda invoke: invoke.result))
/// default_snapshot_policy = alicloud.ecs.SnapshotPolicy("default",
///     name=f"{name}-{default_integer['result']}",
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
///     name=f"{name}-{default_integer['result']}",
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
///     name="desired_size",
///     cluster_id=default_managed_kubernetes.id,
///     vswitch_ids=[vswitch.id],
///     instance_types=[default.instance_types[0].id],
///     system_disk_category="cloud_efficiency",
///     system_disk_size=40,
///     key_name=default_key_pair.key_pair_name,
///     desired_size="2")
/// default_environment = alicloud.arms.Environment("default",
///     environment_type="CS",
///     environment_name=f"{name}-{default_integer['result']}",
///     bind_resource_id=default_node_pool.cluster_id,
///     environment_sub_type="ManagedKubernetes")
/// default_addon_release = alicloud.arms.AddonRelease("default",
///     aliyun_lang="zh",
///     addon_name="mysql",
///     environment_id=default_environment.id,
///     addon_version="0.0.2",
///     values=json.dumps({
///         "host": "mysql-service.default",
///         "password": "roots",
///         "port": 3306,
///         "username": "root",
///     }))
/// ids = alicloud.arms.get_addon_releases_output(environment_id=default_addon_release.environment_id,
///     ids=[default_addon_release.id])
/// pulumi.export("armsEnvServiceMonitorsId0", ids.releases[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var defaultInteger = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var enhanced = AliCloud.Vpc.GetEnhancedNatAvailableZones.Invoke();
///
///     var vpc = new AliCloud.Vpc.Network("vpc", new()
///     {
///         Description = "api-resource-test1-hz",
///         CidrBlock = "192.168.0.0/16",
///         VpcName = $"{name}-{defaultInteger.Result}",
///     });
///
///     var vswitch = new AliCloud.Vpc.Switch("vswitch", new()
///     {
///         Description = "api-resource-test1-hz",
///         VpcId = vpc.Id,
///         VswitchName = $"{name}-{defaultInteger.Result}",
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
///         Name = $"{name}-{defaultInteger.Result}",
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
///         Name = $"{name}-{defaultInteger.Result}",
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
///         Name = "desired_size",
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
///         EnvironmentType = "CS",
///         EnvironmentName = $"{name}-{defaultInteger.Result}",
///         BindResourceId = defaultNodePool.ClusterId,
///         EnvironmentSubType = "ManagedKubernetes",
///     });
///
///     var defaultAddonRelease = new AliCloud.Arms.AddonRelease("default", new()
///     {
///         AliyunLang = "zh",
///         AddonName = "mysql",
///         EnvironmentId = defaultEnvironment.Id,
///         AddonVersion = "0.0.2",
///         Values = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["host"] = "mysql-service.default",
///             ["password"] = "roots",
///             ["port"] = 3306,
///             ["username"] = "root",
///         }),
///     });
///
///     var ids = AliCloud.Arms.GetAddonReleases.Invoke(new()
///     {
///         EnvironmentId = defaultAddonRelease.EnvironmentId,
///         Ids = new[]
///         {
///             defaultAddonRelease.Id,
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["armsEnvServiceMonitorsId0"] = ids.Apply(getAddonReleasesResult => getAddonReleasesResult.Releases[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
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
/// cfg := config.New(ctx, "")
/// name := "terraform-example";
/// if param := cfg.Get("name"); param != ""{
/// name = param
/// }
/// defaultInteger, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// Min: 10000,
/// Max: 99999,
/// })
/// if err != nil {
/// return err
/// }
/// enhanced, err := vpc.GetEnhancedNatAvailableZones(ctx, &vpc.GetEnhancedNatAvailableZonesArgs{
/// }, nil);
/// if err != nil {
/// return err
/// }
/// vpc, err := vpc.NewNetwork(ctx, "vpc", &vpc.NetworkArgs{
/// Description: pulumi.String("api-resource-test1-hz"),
/// CidrBlock: pulumi.String("192.168.0.0/16"),
/// VpcName: pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
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
/// Description: pulumi.String("api-resource-test1-hz"),
/// VpcId: vpc.ID(),
/// VswitchName: pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
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
/// Name: pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
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
/// Name: pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
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
/// Name: pulumi.String("desired_size"),
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
/// EnvironmentType: pulumi.String("CS"),
/// EnvironmentName: pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
/// BindResourceId: defaultNodePool.ClusterId,
/// EnvironmentSubType: pulumi.String("ManagedKubernetes"),
/// })
/// if err != nil {
/// return err
/// }
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
/// "host": "mysql-service.default",
/// "password": "roots",
/// "port": 3306,
/// "username": "root",
/// })
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// defaultAddonRelease, err := arms.NewAddonRelease(ctx, "default", &arms.AddonReleaseArgs{
/// AliyunLang: pulumi.String("zh"),
/// AddonName: pulumi.String("mysql"),
/// EnvironmentId: defaultEnvironment.ID(),
/// AddonVersion: pulumi.String("0.0.2"),
/// Values: pulumi.String(json0),
/// })
/// if err != nil {
/// return err
/// }
/// ids := arms.GetAddonReleasesOutput(ctx, arms.GetAddonReleasesOutputArgs{
/// EnvironmentId: defaultAddonRelease.EnvironmentId,
/// Ids: pulumi.StringArray{
/// defaultAddonRelease.ID(),
/// },
/// }, nil);
/// ctx.Export("armsEnvServiceMonitorsId0", ids.ApplyT(func(ids arms.GetAddonReleasesResult) (*string, error) {
/// return &ids.Releases[0].Id, nil
/// }).(pulumi.StringPtrOutput))
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
/// import com.pulumi.alicloud.arms.AddonRelease;
/// import com.pulumi.alicloud.arms.AddonReleaseArgs;
/// import com.pulumi.alicloud.arms.ArmsFunctions;
/// import com.pulumi.alicloud.arms.inputs.GetAddonReleasesArgs;
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
///         final var name = config.get("name").orElse("terraform-example");
///         var defaultInteger = new Integer("defaultInteger", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         final var enhanced = VpcFunctions.getEnhancedNatAvailableZones(GetEnhancedNatAvailableZonesArgs.builder()
///             .build());
///
///         var vpc = new Network("vpc", NetworkArgs.builder()
///             .description("api-resource-test1-hz")
///             .cidrBlock("192.168.0.0/16")
///             .vpcName(String.format("%s-%s", name,defaultInteger.result()))
///             .build());
///
///         var vswitch = new Switch("vswitch", SwitchArgs.builder()
///             .description("api-resource-test1-hz")
///             .vpcId(vpc.id())
///             .vswitchName(String.format("%s-%s", name,defaultInteger.result()))
///             .zoneId(enhanced.zones()[0].zoneId())
///             .cidrBlock(vpc.cidrBlock().applyValue(_cidrBlock -> StdFunctions.cidrsubnet(CidrsubnetArgs.builder()
///                 .input(_cidrBlock)
///                 .newbits(8)
///                 .netnum(8)
///                 .build())).applyValue(_invoke -> _invoke.result()))
///             .build());
///
///         var defaultSnapshotPolicy = new SnapshotPolicy("defaultSnapshotPolicy", SnapshotPolicyArgs.builder()
///             .name(String.format("%s-%s", name,defaultInteger.result()))
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
///             .name(String.format("%s-%s", name,defaultInteger.result()))
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
///             .name("desired_size")
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
///             .environmentType("CS")
///             .environmentName(String.format("%s-%s", name,defaultInteger.result()))
///             .bindResourceId(defaultNodePool.clusterId())
///             .environmentSubType("ManagedKubernetes")
///             .build());
///
///         var defaultAddonRelease = new AddonRelease("defaultAddonRelease", AddonReleaseArgs.builder()
///             .aliyunLang("zh")
///             .addonName("mysql")
///             .environmentId(defaultEnvironment.id())
///             .addonVersion("0.0.2")
///             .values(serializeJson(
///                 jsonObject(
///                     jsonProperty("host", "mysql-service.default"),
///                     jsonProperty("password", "roots"),
///                     jsonProperty("port", 3306),
///                     jsonProperty("username", "root")
///                 )))
///             .build());
///
///         final var ids = ArmsFunctions.getAddonReleases(GetAddonReleasesArgs.builder()
///             .environmentId(defaultAddonRelease.environmentId())
///             .ids(defaultAddonRelease.id())
///             .build());
///
///         ctx.export("armsEnvServiceMonitorsId0", ids.applyValue(_ids -> _ids.releases()[0].id()));
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
///       min: 10000
///       max: 99999
///   vpc:
///     type: alicloud:vpc:Network
///     properties:
///       description: api-resource-test1-hz
///       cidrBlock: 192.168.0.0/16
///       vpcName: ${name}-${defaultInteger.result}
///   vswitch:
///     type: alicloud:vpc:Switch
///     properties:
///       description: api-resource-test1-hz
///       vpcId: ${vpc.id}
///       vswitchName: ${name}-${defaultInteger.result}
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
///       name: ${name}-${defaultInteger.result}
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
///       name: ${name}-${defaultInteger.result}
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
///       name: desired_size
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
///       environmentType: CS
///       environmentName: ${name}-${defaultInteger.result}
///       bindResourceId: ${defaultNodePool.clusterId}
///       environmentSubType: ManagedKubernetes
///   defaultAddonRelease:
///     type: alicloud:arms:AddonRelease
///     name: default
///     properties:
///       aliyunLang: zh
///       addonName: mysql
///       environmentId: ${defaultEnvironment.id}
///       addonVersion: 0.0.2
///       values:
///         fn::toJSON:
///           host: mysql-service.default
///           password: roots
///           port: 3306
///           username: root
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
///   ids:
///     fn::invoke:
///       function: alicloud:arms:getAddonReleases
///       arguments:
///         environmentId: ${defaultAddonRelease.environmentId}
///         ids:
///           - ${defaultAddonRelease.id}
/// outputs:
///   armsEnvServiceMonitorsId0: ${ids.releases[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_arms_get_addon_releases_get_addon_releases_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAddonReleasesResult> getAddonReleases(
  GetAddonReleasesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:arms/getAddonReleases:getAddonReleases',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAddonReleasesResult.fromMap(result);
}

/// This data source provides the Arms Alert Contact Groups of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.131.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const nameRegex = alicloud.arms.getAlertContactGroups({
///     nameRegex: "^my-AlertContactGroup",
/// });
/// export const armsAlertContactGroupId = nameRegex.then(nameRegex => nameRegex.groups?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// name_regex = alicloud.arms.get_alert_contact_groups(name_regex="^my-AlertContactGroup")
/// pulumi.export("armsAlertContactGroupId", name_regex.groups[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var nameRegex = AliCloud.Arms.GetAlertContactGroups.Invoke(new()
///     {
///         NameRegex = "^my-AlertContactGroup",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["armsAlertContactGroupId"] = nameRegex.Apply(getAlertContactGroupsResult => getAlertContactGroupsResult.Groups[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/arms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		nameRegex, err := arms.GetAlertContactGroups(ctx, &arms.GetAlertContactGroupsArgs{
/// 			NameRegex: pulumi.StringRef("^my-AlertContactGroup"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("armsAlertContactGroupId", nameRegex.Groups[0].Id)
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
/// import com.pulumi.alicloud.arms.ArmsFunctions;
/// import com.pulumi.alicloud.arms.inputs.GetAlertContactGroupsArgs;
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
///         final var nameRegex = ArmsFunctions.getAlertContactGroups(GetAlertContactGroupsArgs.builder()
///             .nameRegex("^my-AlertContactGroup")
///             .build());
///
///         ctx.export("armsAlertContactGroupId", nameRegex.groups()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   nameRegex:
///     fn::invoke:
///       function: alicloud:arms:getAlertContactGroups
///       arguments:
///         nameRegex: ^my-AlertContactGroup
/// outputs:
///   armsAlertContactGroupId: ${nameRegex.groups[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_arms_get_alert_contact_groups_get_alert_contact_groups_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAlertContactGroupsResult> getAlertContactGroups(
  GetAlertContactGroupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:arms/getAlertContactGroups:getAlertContactGroups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAlertContactGroupsResult.fromMap(result);
}

/// This data source provides the Arms Alert Contacts of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.129.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const ids = alicloud.arms.getAlertContacts({});
/// export const armsAlertContactId1 = ids.then(ids => ids.contacts?.[0]?.id);
/// const nameRegex = alicloud.arms.getAlertContacts({
///     nameRegex: "^my-AlertContact",
/// });
/// export const armsAlertContactId2 = nameRegex.then(nameRegex => nameRegex.contacts?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.arms.get_alert_contacts()
/// pulumi.export("armsAlertContactId1", ids.contacts[0].id)
/// name_regex = alicloud.arms.get_alert_contacts(name_regex="^my-AlertContact")
/// pulumi.export("armsAlertContactId2", name_regex.contacts[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Arms.GetAlertContacts.Invoke();
///
///     var nameRegex = AliCloud.Arms.GetAlertContacts.Invoke(new()
///     {
///         NameRegex = "^my-AlertContact",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["armsAlertContactId1"] = ids.Apply(getAlertContactsResult => getAlertContactsResult.Contacts[0]?.Id),
///         ["armsAlertContactId2"] = nameRegex.Apply(getAlertContactsResult => getAlertContactsResult.Contacts[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/arms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := arms.GetAlertContacts(ctx, &arms.GetAlertContactsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("armsAlertContactId1", ids.Contacts[0].Id)
/// 		nameRegex, err := arms.GetAlertContacts(ctx, &arms.GetAlertContactsArgs{
/// 			NameRegex: pulumi.StringRef("^my-AlertContact"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("armsAlertContactId2", nameRegex.Contacts[0].Id)
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
/// import com.pulumi.alicloud.arms.ArmsFunctions;
/// import com.pulumi.alicloud.arms.inputs.GetAlertContactsArgs;
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
///         final var ids = ArmsFunctions.getAlertContacts(GetAlertContactsArgs.builder()
///             .build());
///
///         ctx.export("armsAlertContactId1", ids.contacts()[0].id());
///         final var nameRegex = ArmsFunctions.getAlertContacts(GetAlertContactsArgs.builder()
///             .nameRegex("^my-AlertContact")
///             .build());
///
///         ctx.export("armsAlertContactId2", nameRegex.contacts()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:arms:getAlertContacts
///       arguments: {}
///   nameRegex:
///     fn::invoke:
///       function: alicloud:arms:getAlertContacts
///       arguments:
///         nameRegex: ^my-AlertContact
/// outputs:
///   armsAlertContactId1: ${ids.contacts[0].id}
///   armsAlertContactId2: ${nameRegex.contacts[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_arms_get_alert_contacts_get_alert_contacts_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAlertContactsResult> getAlertContacts(
  GetAlertContactsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:arms/getAlertContacts:getAlertContacts',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAlertContactsResult.fromMap(result);
}

/// This data source provides the Arms Alert Robots of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.237.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = new alicloud.arms.AlertRobot("default", {
///     alertRobotName: "my-AlertRobot",
///     robotType: "wechat",
///     robotAddr: "https://qyapi.weixin.qq.com/cgi-bin/webhook/send?key=1c704e23",
/// });
/// const nameRegex = alicloud.arms.getAlertRobotsOutput({
///     alertRobotName: _default.alertRobotName,
/// });
/// export const armsAlertRobotId = nameRegex.apply(nameRegex => nameRegex.robots?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.arms.AlertRobot("default",
///     alert_robot_name="my-AlertRobot",
///     robot_type="wechat",
///     robot_addr="https://qyapi.weixin.qq.com/cgi-bin/webhook/send?key=1c704e23")
/// name_regex = alicloud.arms.get_alert_robots_output(alert_robot_name=default.alert_robot_name)
/// pulumi.export("armsAlertRobotId", name_regex.robots[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new AliCloud.Arms.AlertRobot("default", new()
///     {
///         AlertRobotName = "my-AlertRobot",
///         RobotType = "wechat",
///         RobotAddr = "https://qyapi.weixin.qq.com/cgi-bin/webhook/send?key=1c704e23",
///     });
///
///     var nameRegex = AliCloud.Arms.GetAlertRobots.Invoke(new()
///     {
///         AlertRobotName = @default.AlertRobotName,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["armsAlertRobotId"] = nameRegex.Apply(getAlertRobotsResult => getAlertRobotsResult.Robots[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/arms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := arms.NewAlertRobot(ctx, "default", &arms.AlertRobotArgs{
/// 			AlertRobotName: pulumi.String("my-AlertRobot"),
/// 			RobotType:      pulumi.String("wechat"),
/// 			RobotAddr:      pulumi.String("https://qyapi.weixin.qq.com/cgi-bin/webhook/send?key=1c704e23"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		nameRegex := arms.GetAlertRobotsOutput(ctx, arms.GetAlertRobotsOutputArgs{
/// 			AlertRobotName: _default.AlertRobotName,
/// 		}, nil)
/// 		ctx.Export("armsAlertRobotId", nameRegex.ApplyT(func(nameRegex arms.GetAlertRobotsResult) (*string, error) {
/// 			return &nameRegex.Robots[0].Id, nil
/// 		}).(pulumi.StringPtrOutput))
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
/// import com.pulumi.alicloud.arms.AlertRobot;
/// import com.pulumi.alicloud.arms.AlertRobotArgs;
/// import com.pulumi.alicloud.arms.ArmsFunctions;
/// import com.pulumi.alicloud.arms.inputs.GetAlertRobotsArgs;
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
///         var default_ = new AlertRobot("default", AlertRobotArgs.builder()
///             .alertRobotName("my-AlertRobot")
///             .robotType("wechat")
///             .robotAddr("https://qyapi.weixin.qq.com/cgi-bin/webhook/send?key=1c704e23")
///             .build());
///
///         final var nameRegex = ArmsFunctions.getAlertRobots(GetAlertRobotsArgs.builder()
///             .alertRobotName(default_.alertRobotName())
///             .build());
///
///         ctx.export("armsAlertRobotId", nameRegex.applyValue(_nameRegex -> _nameRegex.robots()[0].id()));
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: alicloud:arms:AlertRobot
///     properties:
///       alertRobotName: my-AlertRobot
///       robotType: wechat
///       robotAddr: https://qyapi.weixin.qq.com/cgi-bin/webhook/send?key=1c704e23
/// variables:
///   nameRegex:
///     fn::invoke:
///       function: alicloud:arms:getAlertRobots
///       arguments:
///         alertRobotName: ${default.alertRobotName}
/// outputs:
///   armsAlertRobotId: ${nameRegex.robots[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_arms_get_alert_robots_get_alert_robots_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAlertRobotsResult> getAlertRobots(
  GetAlertRobotsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:arms/getAlertRobots:getAlertRobots',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAlertRobotsResult.fromMap(result);
}

/// This data source provides the Arms Dispatch Rules of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.136.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = new alicloud.arms.AlertContact("default", {
///     alertContactName: "example_value",
///     email: "example_value@aaa.com",
/// });
/// const defaultAlertContactGroup = new alicloud.arms.AlertContactGroup("default", {
///     alertContactGroupName: "example_value",
///     contactIds: [_default.id],
/// });
/// const defaultDispatchRule = new alicloud.arms.DispatchRule("default", {
///     dispatchRuleName: "example_value",
///     dispatchType: "CREATE_ALERT",
///     groupRules: [{
///         groupWaitTime: 5,
///         groupInterval: 15,
///         repeatInterval: 100,
///         groupingFields: ["alertname"],
///     }],
///     labelMatchExpressionGrids: [{
///         labelMatchExpressionGroups: [{
///             labelMatchExpressions: [{
///                 key: "_aliyun_arms_involvedObject_kind",
///                 value: "app",
///                 operator: "eq",
///             }],
///         }],
///     }],
///     notifyRules: [{
///         notifyObjects: [
///             {
///                 notifyObjectId: _default.id,
///                 notifyType: "ARMS_CONTACT",
///                 name: "example_value",
///             },
///             {
///                 notifyObjectId: defaultAlertContactGroup.id,
///                 notifyType: "ARMS_CONTACT_GROUP",
///                 name: "example_value",
///             },
///         ],
///         notifyChannels: [
///             "dingTalk",
///             "wechat",
///         ],
///         notifyStartTime: "10:00",
///         notifyEndTime: "23:00",
///     }],
/// });
/// const ids = alicloud.arms.getDispatchRulesOutput({
///     ids: [defaultDispatchRule.id],
/// });
/// export const armsDispatchRuleId1 = ids.apply(ids => ids.rules?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.arms.AlertContact("default",
///     alert_contact_name="example_value",
///     email="example_value@aaa.com")
/// default_alert_contact_group = alicloud.arms.AlertContactGroup("default",
///     alert_contact_group_name="example_value",
///     contact_ids=[default.id])
/// default_dispatch_rule = alicloud.arms.DispatchRule("default",
///     dispatch_rule_name="example_value",
///     dispatch_type="CREATE_ALERT",
///     group_rules=[{
///         "group_wait_time": 5,
///         "group_interval": 15,
///         "repeat_interval": 100,
///         "grouping_fields": ["alertname"],
///     }],
///     label_match_expression_grids=[{
///         "label_match_expression_groups": [{
///             "label_match_expressions": [{
///                 "key": "_aliyun_arms_involvedObject_kind",
///                 "value": "app",
///                 "operator": "eq",
///             }],
///         }],
///     }],
///     notify_rules=[{
///         "notify_objects": [
///             {
///                 "notify_object_id": default.id,
///                 "notify_type": "ARMS_CONTACT",
///                 "name": "example_value",
///             },
///             {
///                 "notify_object_id": default_alert_contact_group.id,
///                 "notify_type": "ARMS_CONTACT_GROUP",
///                 "name": "example_value",
///             },
///         ],
///         "notify_channels": [
///             "dingTalk",
///             "wechat",
///         ],
///         "notify_start_time": "10:00",
///         "notify_end_time": "23:00",
///     }])
/// ids = alicloud.arms.get_dispatch_rules_output(ids=[default_dispatch_rule.id])
/// pulumi.export("armsDispatchRuleId1", ids.rules[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new AliCloud.Arms.AlertContact("default", new()
///     {
///         AlertContactName = "example_value",
///         Email = "example_value@aaa.com",
///     });
///
///     var defaultAlertContactGroup = new AliCloud.Arms.AlertContactGroup("default", new()
///     {
///         AlertContactGroupName = "example_value",
///         ContactIds = new[]
///         {
///             @default.Id,
///         },
///     });
///
///     var defaultDispatchRule = new AliCloud.Arms.DispatchRule("default", new()
///     {
///         DispatchRuleName = "example_value",
///         DispatchType = "CREATE_ALERT",
///         GroupRules = new[]
///         {
///             new AliCloud.Arms.Inputs.DispatchRuleGroupRuleArgs
///             {
///                 GroupWaitTime = 5,
///                 GroupInterval = 15,
///                 RepeatInterval = 100,
///                 GroupingFields = new[]
///                 {
///                     "alertname",
///                 },
///             },
///         },
///         LabelMatchExpressionGrids = new[]
///         {
///             new AliCloud.Arms.Inputs.DispatchRuleLabelMatchExpressionGridArgs
///             {
///                 LabelMatchExpressionGroups = new[]
///                 {
///                     new AliCloud.Arms.Inputs.DispatchRuleLabelMatchExpressionGridLabelMatchExpressionGroupArgs
///                     {
///                         LabelMatchExpressions = new[]
///                         {
///                             new AliCloud.Arms.Inputs.DispatchRuleLabelMatchExpressionGridLabelMatchExpressionGroupLabelMatchExpressionArgs
///                             {
///                                 Key = "_aliyun_arms_involvedObject_kind",
///                                 Value = "app",
///                                 Operator = "eq",
///                             },
///                         },
///                     },
///                 },
///             },
///         },
///         NotifyRules = new[]
///         {
///             new AliCloud.Arms.Inputs.DispatchRuleNotifyRuleArgs
///             {
///                 NotifyObjects = new[]
///                 {
///                     new AliCloud.Arms.Inputs.DispatchRuleNotifyRuleNotifyObjectArgs
///                     {
///                         NotifyObjectId = @default.Id,
///                         NotifyType = "ARMS_CONTACT",
///                         Name = "example_value",
///                     },
///                     new AliCloud.Arms.Inputs.DispatchRuleNotifyRuleNotifyObjectArgs
///                     {
///                         NotifyObjectId = defaultAlertContactGroup.Id,
///                         NotifyType = "ARMS_CONTACT_GROUP",
///                         Name = "example_value",
///                     },
///                 },
///                 NotifyChannels = new[]
///                 {
///                     "dingTalk",
///                     "wechat",
///                 },
///                 NotifyStartTime = "10:00",
///                 NotifyEndTime = "23:00",
///             },
///         },
///     });
///
///     var ids = AliCloud.Arms.GetDispatchRules.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultDispatchRule.Id,
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["armsDispatchRuleId1"] = ids.Apply(getDispatchRulesResult => getDispatchRulesResult.Rules[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/arms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := arms.NewAlertContact(ctx, "default", &arms.AlertContactArgs{
/// 			AlertContactName: pulumi.String("example_value"),
/// 			Email:            pulumi.String("example_value@aaa.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultAlertContactGroup, err := arms.NewAlertContactGroup(ctx, "default", &arms.AlertContactGroupArgs{
/// 			AlertContactGroupName: pulumi.String("example_value"),
/// 			ContactIds: pulumi.StringArray{
/// 				_default.ID(),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultDispatchRule, err := arms.NewDispatchRule(ctx, "default", &arms.DispatchRuleArgs{
/// 			DispatchRuleName: pulumi.String("example_value"),
/// 			DispatchType:     pulumi.String("CREATE_ALERT"),
/// 			GroupRules: arms.DispatchRuleGroupRuleArray{
/// 				&arms.DispatchRuleGroupRuleArgs{
/// 					GroupWaitTime:  pulumi.Int(5),
/// 					GroupInterval:  pulumi.Int(15),
/// 					RepeatInterval: pulumi.Int(100),
/// 					GroupingFields: pulumi.StringArray{
/// 						pulumi.String("alertname"),
/// 					},
/// 				},
/// 			},
/// 			LabelMatchExpressionGrids: arms.DispatchRuleLabelMatchExpressionGridArray{
/// 				&arms.DispatchRuleLabelMatchExpressionGridArgs{
/// 					LabelMatchExpressionGroups: arms.DispatchRuleLabelMatchExpressionGridLabelMatchExpressionGroupArray{
/// 						&arms.DispatchRuleLabelMatchExpressionGridLabelMatchExpressionGroupArgs{
/// 							LabelMatchExpressions: arms.DispatchRuleLabelMatchExpressionGridLabelMatchExpressionGroupLabelMatchExpressionArray{
/// 								&arms.DispatchRuleLabelMatchExpressionGridLabelMatchExpressionGroupLabelMatchExpressionArgs{
/// 									Key:      pulumi.String("_aliyun_arms_involvedObject_kind"),
/// 									Value:    pulumi.String("app"),
/// 									Operator: pulumi.String("eq"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			NotifyRules: arms.DispatchRuleNotifyRuleArray{
/// 				&arms.DispatchRuleNotifyRuleArgs{
/// 					NotifyObjects: arms.DispatchRuleNotifyRuleNotifyObjectArray{
/// 						&arms.DispatchRuleNotifyRuleNotifyObjectArgs{
/// 							NotifyObjectId: _default.ID(),
/// 							NotifyType:     pulumi.String("ARMS_CONTACT"),
/// 							Name:           pulumi.String("example_value"),
/// 						},
/// 						&arms.DispatchRuleNotifyRuleNotifyObjectArgs{
/// 							NotifyObjectId: defaultAlertContactGroup.ID(),
/// 							NotifyType:     pulumi.String("ARMS_CONTACT_GROUP"),
/// 							Name:           pulumi.String("example_value"),
/// 						},
/// 					},
/// 					NotifyChannels: pulumi.StringArray{
/// 						pulumi.String("dingTalk"),
/// 						pulumi.String("wechat"),
/// 					},
/// 					NotifyStartTime: pulumi.String("10:00"),
/// 					NotifyEndTime:   pulumi.String("23:00"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ids := arms.GetDispatchRulesOutput(ctx, arms.GetDispatchRulesOutputArgs{
/// 			Ids: pulumi.StringArray{
/// 				defaultDispatchRule.ID(),
/// 			},
/// 		}, nil)
/// 		ctx.Export("armsDispatchRuleId1", ids.ApplyT(func(ids arms.GetDispatchRulesResult) (*string, error) {
/// 			return &ids.Rules[0].Id, nil
/// 		}).(pulumi.StringPtrOutput))
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
/// import com.pulumi.alicloud.arms.AlertContact;
/// import com.pulumi.alicloud.arms.AlertContactArgs;
/// import com.pulumi.alicloud.arms.AlertContactGroup;
/// import com.pulumi.alicloud.arms.AlertContactGroupArgs;
/// import com.pulumi.alicloud.arms.DispatchRule;
/// import com.pulumi.alicloud.arms.DispatchRuleArgs;
/// import com.pulumi.alicloud.arms.inputs.DispatchRuleGroupRuleArgs;
/// import com.pulumi.alicloud.arms.inputs.DispatchRuleLabelMatchExpressionGridArgs;
/// import com.pulumi.alicloud.arms.inputs.DispatchRuleNotifyRuleArgs;
/// import com.pulumi.alicloud.arms.ArmsFunctions;
/// import com.pulumi.alicloud.arms.inputs.GetDispatchRulesArgs;
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
///         var default_ = new AlertContact("default", AlertContactArgs.builder()
///             .alertContactName("example_value")
///             .email("example_value@aaa.com")
///             .build());
///
///         var defaultAlertContactGroup = new AlertContactGroup("defaultAlertContactGroup", AlertContactGroupArgs.builder()
///             .alertContactGroupName("example_value")
///             .contactIds(default_.id())
///             .build());
///
///         var defaultDispatchRule = new DispatchRule("defaultDispatchRule", DispatchRuleArgs.builder()
///             .dispatchRuleName("example_value")
///             .dispatchType("CREATE_ALERT")
///             .groupRules(DispatchRuleGroupRuleArgs.builder()
///                 .groupWaitTime(5)
///                 .groupInterval(15)
///                 .repeatInterval(100)
///                 .groupingFields("alertname")
///                 .build())
///             .labelMatchExpressionGrids(DispatchRuleLabelMatchExpressionGridArgs.builder()
///                 .labelMatchExpressionGroups(DispatchRuleLabelMatchExpressionGridLabelMatchExpressionGroupArgs.builder()
///                     .labelMatchExpressions(DispatchRuleLabelMatchExpressionGridLabelMatchExpressionGroupLabelMatchExpressionArgs.builder()
///                         .key("_aliyun_arms_involvedObject_kind")
///                         .value("app")
///                         .operator("eq")
///                         .build())
///                     .build())
///                 .build())
///             .notifyRules(DispatchRuleNotifyRuleArgs.builder()
///                 .notifyObjects(
///                     DispatchRuleNotifyRuleNotifyObjectArgs.builder()
///                         .notifyObjectId(default_.id())
///                         .notifyType("ARMS_CONTACT")
///                         .name("example_value")
///                         .build(),
///                     DispatchRuleNotifyRuleNotifyObjectArgs.builder()
///                         .notifyObjectId(defaultAlertContactGroup.id())
///                         .notifyType("ARMS_CONTACT_GROUP")
///                         .name("example_value")
///                         .build())
///                 .notifyChannels(
///                     "dingTalk",
///                     "wechat")
///                 .notifyStartTime("10:00")
///                 .notifyEndTime("23:00")
///                 .build())
///             .build());
///
///         final var ids = ArmsFunctions.getDispatchRules(GetDispatchRulesArgs.builder()
///             .ids(defaultDispatchRule.id())
///             .build());
///
///         ctx.export("armsDispatchRuleId1", ids.applyValue(_ids -> _ids.rules()[0].id()));
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: alicloud:arms:AlertContact
///     properties:
///       alertContactName: example_value
///       email: example_value@aaa.com
///   defaultAlertContactGroup:
///     type: alicloud:arms:AlertContactGroup
///     name: default
///     properties:
///       alertContactGroupName: example_value
///       contactIds:
///         - ${default.id}
///   defaultDispatchRule:
///     type: alicloud:arms:DispatchRule
///     name: default
///     properties:
///       dispatchRuleName: example_value
///       dispatchType: CREATE_ALERT
///       groupRules:
///         - groupWaitTime: 5
///           groupInterval: 15
///           repeatInterval: 100
///           groupingFields:
///             - alertname
///       labelMatchExpressionGrids:
///         - labelMatchExpressionGroups:
///             - labelMatchExpressions:
///                 - key: _aliyun_arms_involvedObject_kind
///                   value: app
///                   operator: eq
///       notifyRules:
///         - notifyObjects:
///             - notifyObjectId: ${default.id}
///               notifyType: ARMS_CONTACT
///               name: example_value
///             - notifyObjectId: ${defaultAlertContactGroup.id}
///               notifyType: ARMS_CONTACT_GROUP
///               name: example_value
///           notifyChannels:
///             - dingTalk
///             - wechat
///           notifyStartTime: 10:00
///           notifyEndTime: 23:00
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:arms:getDispatchRules
///       arguments:
///         ids:
///           - ${defaultDispatchRule.id}
/// outputs:
///   armsDispatchRuleId1: ${ids.rules[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_arms_get_dispatch_rules_get_dispatch_rules_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDispatchRulesResult> getDispatchRules(
  GetDispatchRulesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:arms/getDispatchRules:getDispatchRules',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDispatchRulesResult.fromMap(result);
}

/// This data source provides the ARMS Env Custom Jobs of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.258.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as random from "@pulumi/random";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const defaultInteger = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const _default = alicloud.vpc.getNetworks({
///     nameRegex: "^default-NODELETING$",
/// });
/// const defaultEnvironment = new alicloud.arms.Environment("default", {
///     bindResourceId: _default.then(_default => _default.ids?.[0]),
///     environmentSubType: "ECS",
///     environmentType: "ECS",
///     environmentName: `${name}-${defaultInteger.result}`,
///     tags: {
///         Created: "TF",
///         For: "Environment",
///     },
/// });
/// const defaultEnvCustomJob = new alicloud.arms.EnvCustomJob("default", {
///     status: "run",
///     environmentId: defaultEnvironment.id,
///     envCustomJobName: `${name}-${defaultInteger.result}`,
///     configYaml: `scrape_configs:
/// - job_name: job-demo1
///   honor_timestamps: false
///   honor_labels: false
///   scrape_interval: 30s
///   scheme: http
///   metrics_path: /metric
///   static_configs:
///   - targets:
///     - 127.0.0.1:9090
/// `,
///     aliyunLang: "en",
/// });
/// const ids = alicloud.arms.getEnvCustomJobsOutput({
///     environmentId: defaultEnvCustomJob.environmentId,
///     ids: [defaultEnvCustomJob.id],
/// });
/// export const armsEnvCustomJobsId0 = ids.apply(ids => ids.jobs?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default_integer = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// default = alicloud.vpc.get_networks(name_regex="^default-NODELETING$")
/// default_environment = alicloud.arms.Environment("default",
///     bind_resource_id=default.ids[0],
///     environment_sub_type="ECS",
///     environment_type="ECS",
///     environment_name=f"{name}-{default_integer['result']}",
///     tags={
///         "Created": "TF",
///         "For": "Environment",
///     })
/// default_env_custom_job = alicloud.arms.EnvCustomJob("default",
///     status="run",
///     environment_id=default_environment.id,
///     env_custom_job_name=f"{name}-{default_integer['result']}",
///     config_yaml="""scrape_configs:
/// - job_name: job-demo1
///   honor_timestamps: false
///   honor_labels: false
///   scrape_interval: 30s
///   scheme: http
///   metrics_path: /metric
///   static_configs:
///   - targets:
///     - 127.0.0.1:9090
/// """,
///     aliyun_lang="en")
/// ids = alicloud.arms.get_env_custom_jobs_output(environment_id=default_env_custom_job.environment_id,
///     ids=[default_env_custom_job.id])
/// pulumi.export("armsEnvCustomJobsId0", ids.jobs[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var defaultInteger = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var @default = AliCloud.Vpc.GetNetworks.Invoke(new()
///     {
///         NameRegex = "^default-NODELETING$",
///     });
///
///     var defaultEnvironment = new AliCloud.Arms.Environment("default", new()
///     {
///         BindResourceId = @default.Apply(@default => @default.Apply(getNetworksResult => getNetworksResult.Ids[0])),
///         EnvironmentSubType = "ECS",
///         EnvironmentType = "ECS",
///         EnvironmentName = $"{name}-{defaultInteger.Result}",
///         Tags =
///         {
///             { "Created", "TF" },
///             { "For", "Environment" },
///         },
///     });
///
///     var defaultEnvCustomJob = new AliCloud.Arms.EnvCustomJob("default", new()
///     {
///         Status = "run",
///         EnvironmentId = defaultEnvironment.Id,
///         EnvCustomJobName = $"{name}-{defaultInteger.Result}",
///         ConfigYaml = @"scrape_configs:
/// - job_name: job-demo1
///   honor_timestamps: false
///   honor_labels: false
///   scrape_interval: 30s
///   scheme: http
///   metrics_path: /metric
///   static_configs:
///   - targets:
///     - 127.0.0.1:9090
/// ",
///         AliyunLang = "en",
///     });
///
///     var ids = AliCloud.Arms.GetEnvCustomJobs.Invoke(new()
///     {
///         EnvironmentId = defaultEnvCustomJob.EnvironmentId,
///         Ids = new[]
///         {
///             defaultEnvCustomJob.Id,
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["armsEnvCustomJobsId0"] = ids.Apply(getEnvCustomJobsResult => getEnvCustomJobsResult.Jobs[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/arms"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
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
/// 		defaultInteger, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := vpc.GetNetworks(ctx, &vpc.GetNetworksArgs{
/// 			NameRegex: pulumi.StringRef("^default-NODELETING$"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultEnvironment, err := arms.NewEnvironment(ctx, "default", &arms.EnvironmentArgs{
/// 			BindResourceId:     pulumi.String(_default.Ids[0]),
/// 			EnvironmentSubType: pulumi.String("ECS"),
/// 			EnvironmentType:    pulumi.String("ECS"),
/// 			EnvironmentName:    pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
/// 			Tags: pulumi.StringMap{
/// 				"Created": pulumi.String("TF"),
/// 				"For":     pulumi.String("Environment"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultEnvCustomJob, err := arms.NewEnvCustomJob(ctx, "default", &arms.EnvCustomJobArgs{
/// 			Status:           pulumi.String("run"),
/// 			EnvironmentId:    defaultEnvironment.ID(),
/// 			EnvCustomJobName: pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
/// 			ConfigYaml: pulumi.String(`scrape_configs:
/// - job_name: job-demo1
///   honor_timestamps: false
///   honor_labels: false
///   scrape_interval: 30s
///   scheme: http
///   metrics_path: /metric
///   static_configs:
///   - targets:
///     - 127.0.0.1:9090
/// `),
/// 			AliyunLang: pulumi.String("en"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ids := arms.GetEnvCustomJobsOutput(ctx, arms.GetEnvCustomJobsOutputArgs{
/// 			EnvironmentId: defaultEnvCustomJob.EnvironmentId,
/// 			Ids: pulumi.StringArray{
/// 				defaultEnvCustomJob.ID(),
/// 			},
/// 		}, nil)
/// 		ctx.Export("armsEnvCustomJobsId0", ids.ApplyT(func(ids arms.GetEnvCustomJobsResult) (*string, error) {
/// 			return &ids.Jobs[0].Id, nil
/// 		}).(pulumi.StringPtrOutput))
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
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetNetworksArgs;
/// import com.pulumi.alicloud.arms.Environment;
/// import com.pulumi.alicloud.arms.EnvironmentArgs;
/// import com.pulumi.alicloud.arms.EnvCustomJob;
/// import com.pulumi.alicloud.arms.EnvCustomJobArgs;
/// import com.pulumi.alicloud.arms.ArmsFunctions;
/// import com.pulumi.alicloud.arms.inputs.GetEnvCustomJobsArgs;
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
///         var defaultInteger = new Integer("defaultInteger", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         final var default = VpcFunctions.getNetworks(GetNetworksArgs.builder()
///             .nameRegex("^default-NODELETING$")
///             .build());
///
///         var defaultEnvironment = new Environment("defaultEnvironment", EnvironmentArgs.builder()
///             .bindResourceId(default_.ids()[0])
///             .environmentSubType("ECS")
///             .environmentType("ECS")
///             .environmentName(String.format("%s-%s", name,defaultInteger.result()))
///             .tags(Map.ofEntries(
///                 Map.entry("Created", "TF"),
///                 Map.entry("For", "Environment")
///             ))
///             .build());
///
///         var defaultEnvCustomJob = new EnvCustomJob("defaultEnvCustomJob", EnvCustomJobArgs.builder()
///             .status("run")
///             .environmentId(defaultEnvironment.id())
///             .envCustomJobName(String.format("%s-%s", name,defaultInteger.result()))
///             .configYaml("""
/// scrape_configs:
/// - job_name: job-demo1
///   honor_timestamps: false
///   honor_labels: false
///   scrape_interval: 30s
///   scheme: http
///   metrics_path: /metric
///   static_configs:
///   - targets:
///     - 127.0.0.1:9090
///             """)
///             .aliyunLang("en")
///             .build());
///
///         final var ids = ArmsFunctions.getEnvCustomJobs(GetEnvCustomJobsArgs.builder()
///             .environmentId(defaultEnvCustomJob.environmentId())
///             .ids(defaultEnvCustomJob.id())
///             .build());
///
///         ctx.export("armsEnvCustomJobsId0", ids.applyValue(_ids -> _ids.jobs()[0].id()));
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
///       min: 10000
///       max: 99999
///   defaultEnvironment:
///     type: alicloud:arms:Environment
///     name: default
///     properties:
///       bindResourceId: ${default.ids[0]}
///       environmentSubType: ECS
///       environmentType: ECS
///       environmentName: ${name}-${defaultInteger.result}
///       tags:
///         Created: TF
///         For: Environment
///   defaultEnvCustomJob:
///     type: alicloud:arms:EnvCustomJob
///     name: default
///     properties:
///       status: run
///       environmentId: ${defaultEnvironment.id}
///       envCustomJobName: ${name}-${defaultInteger.result}
///       configYaml: |
///         scrape_configs:
///         - job_name: job-demo1
///           honor_timestamps: false
///           honor_labels: false
///           scrape_interval: 30s
///           scheme: http
///           metrics_path: /metric
///           static_configs:
///           - targets:
///             - 127.0.0.1:9090
///       aliyunLang: en
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:vpc:getNetworks
///       arguments:
///         nameRegex: ^default-NODELETING$
///   ids:
///     fn::invoke:
///       function: alicloud:arms:getEnvCustomJobs
///       arguments:
///         environmentId: ${defaultEnvCustomJob.environmentId}
///         ids:
///           - ${defaultEnvCustomJob.id}
/// outputs:
///   armsEnvCustomJobsId0: ${ids.jobs[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_arms_get_env_custom_jobs_get_env_custom_jobs_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEnvCustomJobsResult> getEnvCustomJobs(
  GetEnvCustomJobsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:arms/getEnvCustomJobs:getEnvCustomJobs',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnvCustomJobsResult.fromMap(result);
}

/// This data source provides the ARMS Env Features of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.258.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as random from "@pulumi/random";
/// import * as std from "@pulumi/std";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const defaultInteger = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const enhanced = alicloud.vpc.getEnhancedNatAvailableZones({});
/// const vpc = new alicloud.vpc.Network("vpc", {
///     description: "api-resource-test1-hz",
///     cidrBlock: "192.168.0.0/16",
///     vpcName: `${name}-${defaultInteger.result}`,
/// });
/// const vswitch = new alicloud.vpc.Switch("vswitch", {
///     description: "api-resource-test1-hz",
///     vpcId: vpc.id,
///     vswitchName: `${name}-${defaultInteger.result}`,
///     zoneId: enhanced.then(enhanced => enhanced.zones?.[0]?.zoneId),
///     cidrBlock: vpc.cidrBlock.apply(cidrBlock => std.cidrsubnetOutput({
///         input: cidrBlock,
///         newbits: 8,
///         netnum: 8,
///     })).apply(invoke => invoke.result),
/// });
/// const defaultSnapshotPolicy = new alicloud.ecs.SnapshotPolicy("default", {
///     name: `${name}-${defaultInteger.result}`,
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
///     name: `${name}-${defaultInteger.result}`,
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
///     name: "desired_size",
///     clusterId: defaultManagedKubernetes.id,
///     vswitchIds: [vswitch.id],
///     instanceTypes: [_default.apply(_default => _default.instanceTypes?.[0]?.id)],
///     systemDiskCategory: "cloud_efficiency",
///     systemDiskSize: 40,
///     keyName: defaultKeyPair.keyPairName,
///     desiredSize: "2",
/// });
/// const defaultEnvironment = new alicloud.arms.Environment("default", {
///     environmentType: "CS",
///     environmentName: `${name}-${defaultInteger.result}`,
///     bindResourceId: defaultNodePool.clusterId,
///     environmentSubType: "ManagedKubernetes",
/// });
/// const defaultEnvFeature = new alicloud.arms.EnvFeature("default", {
///     envFeatureName: "metric-agent",
///     environmentId: defaultEnvironment.id,
///     featureVersion: "1.1.17",
/// });
/// const ids = alicloud.arms.getEnvFeaturesOutput({
///     environmentId: defaultEnvFeature.environmentId,
///     ids: [defaultEnvFeature.id],
/// });
/// export const armsEnvFeaturesId0 = ids.apply(ids => ids.features?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
/// import pulumi_std as std
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default_integer = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// enhanced = alicloud.vpc.get_enhanced_nat_available_zones()
/// vpc = alicloud.vpc.Network("vpc",
///     description="api-resource-test1-hz",
///     cidr_block="192.168.0.0/16",
///     vpc_name=f"{name}-{default_integer['result']}")
/// vswitch = alicloud.vpc.Switch("vswitch",
///     description="api-resource-test1-hz",
///     vpc_id=vpc.id,
///     vswitch_name=f"{name}-{default_integer['result']}",
///     zone_id=enhanced.zones[0].zone_id,
///     cidr_block=vpc.cidr_block.apply(lambda cidr_block: std.cidrsubnet_output(input=cidr_block,
///         newbits=8,
///         netnum=8)).apply(lambda invoke: invoke.result))
/// default_snapshot_policy = alicloud.ecs.SnapshotPolicy("default",
///     name=f"{name}-{default_integer['result']}",
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
///     name=f"{name}-{default_integer['result']}",
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
///     name="desired_size",
///     cluster_id=default_managed_kubernetes.id,
///     vswitch_ids=[vswitch.id],
///     instance_types=[default.instance_types[0].id],
///     system_disk_category="cloud_efficiency",
///     system_disk_size=40,
///     key_name=default_key_pair.key_pair_name,
///     desired_size="2")
/// default_environment = alicloud.arms.Environment("default",
///     environment_type="CS",
///     environment_name=f"{name}-{default_integer['result']}",
///     bind_resource_id=default_node_pool.cluster_id,
///     environment_sub_type="ManagedKubernetes")
/// default_env_feature = alicloud.arms.EnvFeature("default",
///     env_feature_name="metric-agent",
///     environment_id=default_environment.id,
///     feature_version="1.1.17")
/// ids = alicloud.arms.get_env_features_output(environment_id=default_env_feature.environment_id,
///     ids=[default_env_feature.id])
/// pulumi.export("armsEnvFeaturesId0", ids.features[0].id)
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
///     var name = config.Get("name") ?? "terraform-example";
///     var defaultInteger = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var enhanced = AliCloud.Vpc.GetEnhancedNatAvailableZones.Invoke();
///
///     var vpc = new AliCloud.Vpc.Network("vpc", new()
///     {
///         Description = "api-resource-test1-hz",
///         CidrBlock = "192.168.0.0/16",
///         VpcName = $"{name}-{defaultInteger.Result}",
///     });
///
///     var vswitch = new AliCloud.Vpc.Switch("vswitch", new()
///     {
///         Description = "api-resource-test1-hz",
///         VpcId = vpc.Id,
///         VswitchName = $"{name}-{defaultInteger.Result}",
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
///         Name = $"{name}-{defaultInteger.Result}",
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
///         Name = $"{name}-{defaultInteger.Result}",
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
///         Name = "desired_size",
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
///         EnvironmentType = "CS",
///         EnvironmentName = $"{name}-{defaultInteger.Result}",
///         BindResourceId = defaultNodePool.ClusterId,
///         EnvironmentSubType = "ManagedKubernetes",
///     });
///
///     var defaultEnvFeature = new AliCloud.Arms.EnvFeature("default", new()
///     {
///         EnvFeatureName = "metric-agent",
///         EnvironmentId = defaultEnvironment.Id,
///         FeatureVersion = "1.1.17",
///     });
///
///     var ids = AliCloud.Arms.GetEnvFeatures.Invoke(new()
///     {
///         EnvironmentId = defaultEnvFeature.EnvironmentId,
///         Ids = new[]
///         {
///             defaultEnvFeature.Id,
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["armsEnvFeaturesId0"] = ids.Apply(getEnvFeaturesResult => getEnvFeaturesResult.Features[0]?.Id),
///     };
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
/// cfg := config.New(ctx, "")
/// name := "terraform-example";
/// if param := cfg.Get("name"); param != ""{
/// name = param
/// }
/// defaultInteger, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// Min: 10000,
/// Max: 99999,
/// })
/// if err != nil {
/// return err
/// }
/// enhanced, err := vpc.GetEnhancedNatAvailableZones(ctx, &vpc.GetEnhancedNatAvailableZonesArgs{
/// }, nil);
/// if err != nil {
/// return err
/// }
/// vpc, err := vpc.NewNetwork(ctx, "vpc", &vpc.NetworkArgs{
/// Description: pulumi.String("api-resource-test1-hz"),
/// CidrBlock: pulumi.String("192.168.0.0/16"),
/// VpcName: pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
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
/// Description: pulumi.String("api-resource-test1-hz"),
/// VpcId: vpc.ID(),
/// VswitchName: pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
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
/// Name: pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
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
/// Name: pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
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
/// Name: pulumi.String("desired_size"),
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
/// EnvironmentType: pulumi.String("CS"),
/// EnvironmentName: pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
/// BindResourceId: defaultNodePool.ClusterId,
/// EnvironmentSubType: pulumi.String("ManagedKubernetes"),
/// })
/// if err != nil {
/// return err
/// }
/// defaultEnvFeature, err := arms.NewEnvFeature(ctx, "default", &arms.EnvFeatureArgs{
/// EnvFeatureName: pulumi.String("metric-agent"),
/// EnvironmentId: defaultEnvironment.ID(),
/// FeatureVersion: pulumi.String("1.1.17"),
/// })
/// if err != nil {
/// return err
/// }
/// ids := arms.GetEnvFeaturesOutput(ctx, arms.GetEnvFeaturesOutputArgs{
/// EnvironmentId: defaultEnvFeature.EnvironmentId,
/// Ids: pulumi.StringArray{
/// defaultEnvFeature.ID(),
/// },
/// }, nil);
/// ctx.Export("armsEnvFeaturesId0", ids.ApplyT(func(ids arms.GetEnvFeaturesResult) (*string, error) {
/// return &ids.Features[0].Id, nil
/// }).(pulumi.StringPtrOutput))
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
/// import com.pulumi.alicloud.arms.ArmsFunctions;
/// import com.pulumi.alicloud.arms.inputs.GetEnvFeaturesArgs;
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
///         var defaultInteger = new Integer("defaultInteger", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         final var enhanced = VpcFunctions.getEnhancedNatAvailableZones(GetEnhancedNatAvailableZonesArgs.builder()
///             .build());
///
///         var vpc = new Network("vpc", NetworkArgs.builder()
///             .description("api-resource-test1-hz")
///             .cidrBlock("192.168.0.0/16")
///             .vpcName(String.format("%s-%s", name,defaultInteger.result()))
///             .build());
///
///         var vswitch = new Switch("vswitch", SwitchArgs.builder()
///             .description("api-resource-test1-hz")
///             .vpcId(vpc.id())
///             .vswitchName(String.format("%s-%s", name,defaultInteger.result()))
///             .zoneId(enhanced.zones()[0].zoneId())
///             .cidrBlock(vpc.cidrBlock().applyValue(_cidrBlock -> StdFunctions.cidrsubnet(CidrsubnetArgs.builder()
///                 .input(_cidrBlock)
///                 .newbits(8)
///                 .netnum(8)
///                 .build())).applyValue(_invoke -> _invoke.result()))
///             .build());
///
///         var defaultSnapshotPolicy = new SnapshotPolicy("defaultSnapshotPolicy", SnapshotPolicyArgs.builder()
///             .name(String.format("%s-%s", name,defaultInteger.result()))
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
///             .name(String.format("%s-%s", name,defaultInteger.result()))
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
///             .name("desired_size")
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
///             .environmentType("CS")
///             .environmentName(String.format("%s-%s", name,defaultInteger.result()))
///             .bindResourceId(defaultNodePool.clusterId())
///             .environmentSubType("ManagedKubernetes")
///             .build());
///
///         var defaultEnvFeature = new EnvFeature("defaultEnvFeature", EnvFeatureArgs.builder()
///             .envFeatureName("metric-agent")
///             .environmentId(defaultEnvironment.id())
///             .featureVersion("1.1.17")
///             .build());
///
///         final var ids = ArmsFunctions.getEnvFeatures(GetEnvFeaturesArgs.builder()
///             .environmentId(defaultEnvFeature.environmentId())
///             .ids(defaultEnvFeature.id())
///             .build());
///
///         ctx.export("armsEnvFeaturesId0", ids.applyValue(_ids -> _ids.features()[0].id()));
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
///       min: 10000
///       max: 99999
///   vpc:
///     type: alicloud:vpc:Network
///     properties:
///       description: api-resource-test1-hz
///       cidrBlock: 192.168.0.0/16
///       vpcName: ${name}-${defaultInteger.result}
///   vswitch:
///     type: alicloud:vpc:Switch
///     properties:
///       description: api-resource-test1-hz
///       vpcId: ${vpc.id}
///       vswitchName: ${name}-${defaultInteger.result}
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
///       name: ${name}-${defaultInteger.result}
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
///       name: ${name}-${defaultInteger.result}
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
///       name: desired_size
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
///       environmentType: CS
///       environmentName: ${name}-${defaultInteger.result}
///       bindResourceId: ${defaultNodePool.clusterId}
///       environmentSubType: ManagedKubernetes
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
///   ids:
///     fn::invoke:
///       function: alicloud:arms:getEnvFeatures
///       arguments:
///         environmentId: ${defaultEnvFeature.environmentId}
///         ids:
///           - ${defaultEnvFeature.id}
/// outputs:
///   armsEnvFeaturesId0: ${ids.features[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_arms_get_env_features_get_env_features_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEnvFeaturesResult> getEnvFeatures(
  GetEnvFeaturesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:arms/getEnvFeatures:getEnvFeatures',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnvFeaturesResult.fromMap(result);
}

/// This data source provides the ARMS Env Pod Monitors of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.258.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as random from "@pulumi/random";
/// import * as std from "@pulumi/std";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const enhanced = alicloud.vpc.getEnhancedNatAvailableZones({});
/// const defaultInteger = new random.index.Integer("default", {
///     max: 99999,
///     min: 10000,
/// });
/// const vpc = new alicloud.vpc.Network("vpc", {
///     description: `${name}-${defaultInteger.result}`,
///     cidrBlock: "192.168.0.0/16",
///     vpcName: `${name}-${defaultInteger.result}`,
/// });
/// const vswitch = new alicloud.vpc.Switch("vswitch", {
///     description: `${name}-${defaultInteger.result}`,
///     vpcId: vpc.id,
///     vswitchName: `${name}-${defaultInteger.result}`,
///     zoneId: enhanced.then(enhanced => enhanced.zones?.[0]?.zoneId),
///     cidrBlock: vpc.cidrBlock.apply(cidrBlock => std.cidrsubnetOutput({
///         input: cidrBlock,
///         newbits: 8,
///         netnum: 8,
///     })).apply(invoke => invoke.result),
/// });
/// const defaultSnapshotPolicy = new alicloud.ecs.SnapshotPolicy("default", {
///     name: `${name}-${defaultInteger.result}`,
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
/// const defaultKeyPair = new alicloud.ecs.KeyPair("default", {keyPairName: `terraform-example-${defaultInteger.result}`});
/// const defaultNodePool = new alicloud.cs.NodePool("default", {
///     name: "desired_size",
///     clusterId: defaultManagedKubernetes.id,
///     vswitchIds: [vswitch.id],
///     instanceTypes: [_default.apply(_default => _default.instanceTypes?.[0]?.id)],
///     systemDiskCategory: "cloud_efficiency",
///     systemDiskSize: 40,
///     keyName: defaultKeyPair.keyName,
///     desiredSize: "2",
/// });
/// const environment_cs = new alicloud.arms.Environment("environment-cs", {
///     environmentType: "CS",
///     environmentName: `${name}-${defaultInteger.result}`,
///     bindResourceId: defaultNodePool.clusterId,
///     environmentSubType: "ManagedKubernetes",
/// });
/// const defaultEnvPodMonitor = new alicloud.arms.EnvPodMonitor("default", {
///     aliyunLang: "en",
///     environmentId: environment_cs.id,
///     configYaml: `apiVersion: monitoring.coreos.com/v1
/// kind: PodMonitor
/// metadata:
///   name: arms-admin-pm1
///   namespace: arms-prom
///   annotations:
///     arms.prometheus.io/discovery: 'true'
///     o11y.aliyun.com/addon-name: mysql
///     o11y.aliyun.com/addon-version: 1.0.2
///     o11y.aliyun.com/release-name: mysql2
/// spec:
///   selector:
///     matchLabels:
///       app: arms-prometheus-ack-arms-prometheus
///       release: arms-prometheus
///   namespaceSelector:
///     any: true
///   podMetricsEndpoints:
///   - interval: 30s
///     targetPort: 9335
///     path: /metrics
///   - interval: 11s
///     targetPort: 9335
///     path: /metric
/// `,
/// });
/// const ids = alicloud.arms.getEnvPodMonitorsOutput({
///     environmentId: defaultEnvPodMonitor.environmentId,
///     ids: [defaultEnvPodMonitor.id],
/// });
/// export const armsEnvPodMonitorsId0 = ids.apply(ids => ids.monitors?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
/// import pulumi_std as std
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// enhanced = alicloud.vpc.get_enhanced_nat_available_zones()
/// default_integer = random.index.Integer("default",
///     max=99999,
///     min=10000)
/// vpc = alicloud.vpc.Network("vpc",
///     description=f"{name}-{default_integer['result']}",
///     cidr_block="192.168.0.0/16",
///     vpc_name=f"{name}-{default_integer['result']}")
/// vswitch = alicloud.vpc.Switch("vswitch",
///     description=f"{name}-{default_integer['result']}",
///     vpc_id=vpc.id,
///     vswitch_name=f"{name}-{default_integer['result']}",
///     zone_id=enhanced.zones[0].zone_id,
///     cidr_block=vpc.cidr_block.apply(lambda cidr_block: std.cidrsubnet_output(input=cidr_block,
///         newbits=8,
///         netnum=8)).apply(lambda invoke: invoke.result))
/// default_snapshot_policy = alicloud.ecs.SnapshotPolicy("default",
///     name=f"{name}-{default_integer['result']}",
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
/// default_key_pair = alicloud.ecs.KeyPair("default", key_pair_name=f"terraform-example-{default_integer['result']}")
/// default_node_pool = alicloud.cs.NodePool("default",
///     name="desired_size",
///     cluster_id=default_managed_kubernetes.id,
///     vswitch_ids=[vswitch.id],
///     instance_types=[default.instance_types[0].id],
///     system_disk_category="cloud_efficiency",
///     system_disk_size=40,
///     key_name=default_key_pair.key_name,
///     desired_size="2")
/// environment_cs = alicloud.arms.Environment("environment-cs",
///     environment_type="CS",
///     environment_name=f"{name}-{default_integer['result']}",
///     bind_resource_id=default_node_pool.cluster_id,
///     environment_sub_type="ManagedKubernetes")
/// default_env_pod_monitor = alicloud.arms.EnvPodMonitor("default",
///     aliyun_lang="en",
///     environment_id=environment_cs.id,
///     config_yaml="""apiVersion: monitoring.coreos.com/v1
/// kind: PodMonitor
/// metadata:
///   name: arms-admin-pm1
///   namespace: arms-prom
///   annotations:
///     arms.prometheus.io/discovery: 'true'
///     o11y.aliyun.com/addon-name: mysql
///     o11y.aliyun.com/addon-version: 1.0.2
///     o11y.aliyun.com/release-name: mysql2
/// spec:
///   selector:
///     matchLabels:
///       app: arms-prometheus-ack-arms-prometheus
///       release: arms-prometheus
///   namespaceSelector:
///     any: true
///   podMetricsEndpoints:
///   - interval: 30s
///     targetPort: 9335
///     path: /metrics
///   - interval: 11s
///     targetPort: 9335
///     path: /metric
/// """)
/// ids = alicloud.arms.get_env_pod_monitors_output(environment_id=default_env_pod_monitor.environment_id,
///     ids=[default_env_pod_monitor.id])
/// pulumi.export("armsEnvPodMonitorsId0", ids.monitors[0].id)
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
///     var name = config.Get("name") ?? "terraform-example";
///     var enhanced = AliCloud.Vpc.GetEnhancedNatAvailableZones.Invoke();
///
///     var defaultInteger = new Random.Index.Integer("default", new()
///     {
///         Max = 99999,
///         Min = 10000,
///     });
///
///     var vpc = new AliCloud.Vpc.Network("vpc", new()
///     {
///         Description = $"{name}-{defaultInteger.Result}",
///         CidrBlock = "192.168.0.0/16",
///         VpcName = $"{name}-{defaultInteger.Result}",
///     });
///
///     var vswitch = new AliCloud.Vpc.Switch("vswitch", new()
///     {
///         Description = $"{name}-{defaultInteger.Result}",
///         VpcId = vpc.Id,
///         VswitchName = $"{name}-{defaultInteger.Result}",
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
///         Name = $"{name}-{defaultInteger.Result}",
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
///         KeyPairName = $"terraform-example-{defaultInteger.Result}",
///     });
///
///     var defaultNodePool = new AliCloud.CS.NodePool("default", new()
///     {
///         Name = "desired_size",
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
///         KeyName = defaultKeyPair.KeyName,
///         DesiredSize = "2",
///     });
///
///     var environment_cs = new AliCloud.Arms.Environment("environment-cs", new()
///     {
///         EnvironmentType = "CS",
///         EnvironmentName = $"{name}-{defaultInteger.Result}",
///         BindResourceId = defaultNodePool.ClusterId,
///         EnvironmentSubType = "ManagedKubernetes",
///     });
///
///     var defaultEnvPodMonitor = new AliCloud.Arms.EnvPodMonitor("default", new()
///     {
///         AliyunLang = "en",
///         EnvironmentId = environment_cs.Id,
///         ConfigYaml = @"apiVersion: monitoring.coreos.com/v1
/// kind: PodMonitor
/// metadata:
///   name: arms-admin-pm1
///   namespace: arms-prom
///   annotations:
///     arms.prometheus.io/discovery: 'true'
///     o11y.aliyun.com/addon-name: mysql
///     o11y.aliyun.com/addon-version: 1.0.2
///     o11y.aliyun.com/release-name: mysql2
/// spec:
///   selector:
///     matchLabels:
///       app: arms-prometheus-ack-arms-prometheus
///       release: arms-prometheus
///   namespaceSelector:
///     any: true
///   podMetricsEndpoints:
///   - interval: 30s
///     targetPort: 9335
///     path: /metrics
///   - interval: 11s
///     targetPort: 9335
///     path: /metric
/// ",
///     });
///
///     var ids = AliCloud.Arms.GetEnvPodMonitors.Invoke(new()
///     {
///         EnvironmentId = defaultEnvPodMonitor.EnvironmentId,
///         Ids = new[]
///         {
///             defaultEnvPodMonitor.Id,
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["armsEnvPodMonitorsId0"] = ids.Apply(getEnvPodMonitorsResult => getEnvPodMonitorsResult.Monitors[0]?.Id),
///     };
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
/// defaultInteger, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// Max: 99999,
/// Min: 10000,
/// })
/// if err != nil {
/// return err
/// }
/// vpc, err := vpc.NewNetwork(ctx, "vpc", &vpc.NetworkArgs{
/// Description: pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
/// CidrBlock: pulumi.String("192.168.0.0/16"),
/// VpcName: pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
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
/// Description: pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
/// VpcId: vpc.ID(),
/// VswitchName: pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
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
/// Name: pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
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
/// KeyPairName: pulumi.Sprintf("terraform-example-%v", defaultInteger.Result),
/// })
/// if err != nil {
/// return err
/// }
/// defaultNodePool, err := cs.NewNodePool(ctx, "default", &cs.NodePoolArgs{
/// Name: pulumi.String("desired_size"),
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
/// KeyName: defaultKeyPair.KeyName,
/// DesiredSize: pulumi.String("2"),
/// })
/// if err != nil {
/// return err
/// }
/// environment_cs, err := arms.NewEnvironment(ctx, "environment-cs", &arms.EnvironmentArgs{
/// EnvironmentType: pulumi.String("CS"),
/// EnvironmentName: pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
/// BindResourceId: defaultNodePool.ClusterId,
/// EnvironmentSubType: pulumi.String("ManagedKubernetes"),
/// })
/// if err != nil {
/// return err
/// }
/// defaultEnvPodMonitor, err := arms.NewEnvPodMonitor(ctx, "default", &arms.EnvPodMonitorArgs{
/// AliyunLang: pulumi.String("en"),
/// EnvironmentId: environment_cs.ID(),
/// ConfigYaml: pulumi.String(`apiVersion: monitoring.coreos.com/v1
/// kind: PodMonitor
/// metadata:
///   name: arms-admin-pm1
///   namespace: arms-prom
///   annotations:
///     arms.prometheus.io/discovery: 'true'
///     o11y.aliyun.com/addon-name: mysql
///     o11y.aliyun.com/addon-version: 1.0.2
///     o11y.aliyun.com/release-name: mysql2
/// spec:
///   selector:
///     matchLabels:
///       app: arms-prometheus-ack-arms-prometheus
///       release: arms-prometheus
///   namespaceSelector:
///     any: true
///   podMetricsEndpoints:
///   - interval: 30s
///     targetPort: 9335
///     path: /metrics
///   - interval: 11s
///     targetPort: 9335
///     path: /metric
/// `),
/// })
/// if err != nil {
/// return err
/// }
/// ids := arms.GetEnvPodMonitorsOutput(ctx, arms.GetEnvPodMonitorsOutputArgs{
/// EnvironmentId: defaultEnvPodMonitor.EnvironmentId,
/// Ids: pulumi.StringArray{
/// defaultEnvPodMonitor.ID(),
/// },
/// }, nil);
/// ctx.Export("armsEnvPodMonitorsId0", ids.ApplyT(func(ids arms.GetEnvPodMonitorsResult) (*string, error) {
/// return &ids.Monitors[0].Id, nil
/// }).(pulumi.StringPtrOutput))
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
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetEnhancedNatAvailableZonesArgs;
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
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
/// import com.pulumi.alicloud.arms.EnvPodMonitor;
/// import com.pulumi.alicloud.arms.EnvPodMonitorArgs;
/// import com.pulumi.alicloud.arms.ArmsFunctions;
/// import com.pulumi.alicloud.arms.inputs.GetEnvPodMonitorsArgs;
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
///         final var enhanced = VpcFunctions.getEnhancedNatAvailableZones(GetEnhancedNatAvailableZonesArgs.builder()
///             .build());
///
///         var defaultInteger = new Integer("defaultInteger", IntegerArgs.builder()
///             .max(99999)
///             .min(10000)
///             .build());
///
///         var vpc = new Network("vpc", NetworkArgs.builder()
///             .description(String.format("%s-%s", name,defaultInteger.result()))
///             .cidrBlock("192.168.0.0/16")
///             .vpcName(String.format("%s-%s", name,defaultInteger.result()))
///             .build());
///
///         var vswitch = new Switch("vswitch", SwitchArgs.builder()
///             .description(String.format("%s-%s", name,defaultInteger.result()))
///             .vpcId(vpc.id())
///             .vswitchName(String.format("%s-%s", name,defaultInteger.result()))
///             .zoneId(enhanced.zones()[0].zoneId())
///             .cidrBlock(vpc.cidrBlock().applyValue(_cidrBlock -> StdFunctions.cidrsubnet(CidrsubnetArgs.builder()
///                 .input(_cidrBlock)
///                 .newbits(8)
///                 .netnum(8)
///                 .build())).applyValue(_invoke -> _invoke.result()))
///             .build());
///
///         var defaultSnapshotPolicy = new SnapshotPolicy("defaultSnapshotPolicy", SnapshotPolicyArgs.builder()
///             .name(String.format("%s-%s", name,defaultInteger.result()))
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
///             .keyPairName(String.format("terraform-example-%s", defaultInteger.result()))
///             .build());
///
///         var defaultNodePool = new NodePool("defaultNodePool", NodePoolArgs.builder()
///             .name("desired_size")
///             .clusterId(defaultManagedKubernetes.id())
///             .vswitchIds(vswitch.id())
///             .instanceTypes(default_.applyValue(_default_ -> _default_.instanceTypes()[0].id()))
///             .systemDiskCategory("cloud_efficiency")
///             .systemDiskSize(40)
///             .keyName(defaultKeyPair.keyName())
///             .desiredSize("2")
///             .build());
///
///         var environment_cs = new Environment("environment-cs", EnvironmentArgs.builder()
///             .environmentType("CS")
///             .environmentName(String.format("%s-%s", name,defaultInteger.result()))
///             .bindResourceId(defaultNodePool.clusterId())
///             .environmentSubType("ManagedKubernetes")
///             .build());
///
///         var defaultEnvPodMonitor = new EnvPodMonitor("defaultEnvPodMonitor", EnvPodMonitorArgs.builder()
///             .aliyunLang("en")
///             .environmentId(environment_cs.id())
///             .configYaml("""
/// apiVersion: monitoring.coreos.com/v1
/// kind: PodMonitor
/// metadata:
///   name: arms-admin-pm1
///   namespace: arms-prom
///   annotations:
///     arms.prometheus.io/discovery: 'true'
///     o11y.aliyun.com/addon-name: mysql
///     o11y.aliyun.com/addon-version: 1.0.2
///     o11y.aliyun.com/release-name: mysql2
/// spec:
///   selector:
///     matchLabels:
///       app: arms-prometheus-ack-arms-prometheus
///       release: arms-prometheus
///   namespaceSelector:
///     any: true
///   podMetricsEndpoints:
///   - interval: 30s
///     targetPort: 9335
///     path: /metrics
///   - interval: 11s
///     targetPort: 9335
///     path: /metric
///             """)
///             .build());
///
///         final var ids = ArmsFunctions.getEnvPodMonitors(GetEnvPodMonitorsArgs.builder()
///             .environmentId(defaultEnvPodMonitor.environmentId())
///             .ids(defaultEnvPodMonitor.id())
///             .build());
///
///         ctx.export("armsEnvPodMonitorsId0", ids.applyValue(_ids -> _ids.monitors()[0].id()));
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
///       description: ${name}-${defaultInteger.result}
///       cidrBlock: 192.168.0.0/16
///       vpcName: ${name}-${defaultInteger.result}
///   vswitch:
///     type: alicloud:vpc:Switch
///     properties:
///       description: ${name}-${defaultInteger.result}
///       vpcId: ${vpc.id}
///       vswitchName: ${name}-${defaultInteger.result}
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
///       name: ${name}-${defaultInteger.result}
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
///       keyPairName: terraform-example-${defaultInteger.result}
///   defaultNodePool:
///     type: alicloud:cs:NodePool
///     name: default
///     properties:
///       name: desired_size
///       clusterId: ${defaultManagedKubernetes.id}
///       vswitchIds:
///         - ${vswitch.id}
///       instanceTypes:
///         - ${default.instanceTypes[0].id}
///       systemDiskCategory: cloud_efficiency
///       systemDiskSize: 40
///       keyName: ${defaultKeyPair.keyName}
///       desiredSize: 2
///   environment-cs:
///     type: alicloud:arms:Environment
///     properties:
///       environmentType: CS
///       environmentName: ${name}-${defaultInteger.result}
///       bindResourceId: ${defaultNodePool.clusterId}
///       environmentSubType: ManagedKubernetes
///   defaultEnvPodMonitor:
///     type: alicloud:arms:EnvPodMonitor
///     name: default
///     properties:
///       aliyunLang: en
///       environmentId: ${["environment-cs"].id}
///       configYaml: |
///         apiVersion: monitoring.coreos.com/v1
///         kind: PodMonitor
///         metadata:
///           name: arms-admin-pm1
///           namespace: arms-prom
///           annotations:
///             arms.prometheus.io/discovery: 'true'
///             o11y.aliyun.com/addon-name: mysql
///             o11y.aliyun.com/addon-version: 1.0.2
///             o11y.aliyun.com/release-name: mysql2
///         spec:
///           selector:
///             matchLabels:
///               app: arms-prometheus-ack-arms-prometheus
///               release: arms-prometheus
///           namespaceSelector:
///             any: true
///           podMetricsEndpoints:
///           - interval: 30s
///             targetPort: 9335
///             path: /metrics
///           - interval: 11s
///             targetPort: 9335
///             path: /metric
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
///   ids:
///     fn::invoke:
///       function: alicloud:arms:getEnvPodMonitors
///       arguments:
///         environmentId: ${defaultEnvPodMonitor.environmentId}
///         ids:
///           - ${defaultEnvPodMonitor.id}
/// outputs:
///   armsEnvPodMonitorsId0: ${ids.monitors[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_arms_get_env_pod_monitors_get_env_pod_monitors_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEnvPodMonitorsResult> getEnvPodMonitors(
  GetEnvPodMonitorsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:arms/getEnvPodMonitors:getEnvPodMonitors',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnvPodMonitorsResult.fromMap(result);
}

/// This data source provides the ARMS Env Service Monitors of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.258.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as random from "@pulumi/random";
/// import * as std from "@pulumi/std";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const defaultInteger = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const enhanced = alicloud.vpc.getEnhancedNatAvailableZones({});
/// const vpc = new alicloud.vpc.Network("vpc", {
///     description: "api-resource-test1-hz",
///     cidrBlock: "192.168.0.0/16",
///     vpcName: `${name}-${defaultInteger.result}`,
/// });
/// const vswitch = new alicloud.vpc.Switch("vswitch", {
///     description: "api-resource-test1-hz",
///     vpcId: vpc.id,
///     vswitchName: `${name}-${defaultInteger.result}`,
///     zoneId: enhanced.then(enhanced => enhanced.zones?.[0]?.zoneId),
///     cidrBlock: vpc.cidrBlock.apply(cidrBlock => std.cidrsubnetOutput({
///         input: cidrBlock,
///         newbits: 8,
///         netnum: 8,
///     })).apply(invoke => invoke.result),
/// });
/// const defaultSnapshotPolicy = new alicloud.ecs.SnapshotPolicy("default", {
///     name: `${name}-${defaultInteger.result}`,
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
///     name: `${name}-${defaultInteger.result}`,
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
///     name: "desired_size",
///     clusterId: defaultManagedKubernetes.id,
///     vswitchIds: [vswitch.id],
///     instanceTypes: [_default.apply(_default => _default.instanceTypes?.[0]?.id)],
///     systemDiskCategory: "cloud_efficiency",
///     systemDiskSize: 40,
///     keyName: defaultKeyPair.keyPairName,
///     desiredSize: "2",
/// });
/// const defaultEnvironment = new alicloud.arms.Environment("default", {
///     environmentType: "CS",
///     environmentName: `${name}-${defaultInteger.result}`,
///     bindResourceId: defaultNodePool.clusterId,
///     environmentSubType: "ManagedKubernetes",
/// });
/// const defaultEnvServiceMonitor = new alicloud.arms.EnvServiceMonitor("default", {
///     aliyunLang: "en",
///     environmentId: defaultEnvironment.id,
///     configYaml: `apiVersion: monitoring.coreos.com/v1
/// kind: ServiceMonitor
/// metadata:
///   name: arms-admin1
///   namespace: arms-prom
///   annotations:
///     arms.prometheus.io/discovery: 'true'
///     o11y.aliyun.com/addon-name: mysql
///     o11y.aliyun.com/addon-version: 1.0.1
///     o11y.aliyun.com/release-name: mysql1
/// spec:
///   endpoints:
///   - interval: 30s
///     port: operator
///     path: /metrics
///   - interval: 10s
///     port: operator1
///     path: /metrics
///   namespaceSelector:
///     any: true
///   selector:
///     matchLabels:
///      app: arms-prometheus-ack-arms-prometheus
/// `,
/// });
/// const ids = alicloud.arms.getEnvServiceMonitorsOutput({
///     environmentId: defaultEnvServiceMonitor.environmentId,
///     ids: [defaultEnvServiceMonitor.id],
/// });
/// export const armsEnvServiceMonitorsId0 = ids.apply(ids => ids.monitors?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
/// import pulumi_std as std
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default_integer = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// enhanced = alicloud.vpc.get_enhanced_nat_available_zones()
/// vpc = alicloud.vpc.Network("vpc",
///     description="api-resource-test1-hz",
///     cidr_block="192.168.0.0/16",
///     vpc_name=f"{name}-{default_integer['result']}")
/// vswitch = alicloud.vpc.Switch("vswitch",
///     description="api-resource-test1-hz",
///     vpc_id=vpc.id,
///     vswitch_name=f"{name}-{default_integer['result']}",
///     zone_id=enhanced.zones[0].zone_id,
///     cidr_block=vpc.cidr_block.apply(lambda cidr_block: std.cidrsubnet_output(input=cidr_block,
///         newbits=8,
///         netnum=8)).apply(lambda invoke: invoke.result))
/// default_snapshot_policy = alicloud.ecs.SnapshotPolicy("default",
///     name=f"{name}-{default_integer['result']}",
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
///     name=f"{name}-{default_integer['result']}",
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
///     name="desired_size",
///     cluster_id=default_managed_kubernetes.id,
///     vswitch_ids=[vswitch.id],
///     instance_types=[default.instance_types[0].id],
///     system_disk_category="cloud_efficiency",
///     system_disk_size=40,
///     key_name=default_key_pair.key_pair_name,
///     desired_size="2")
/// default_environment = alicloud.arms.Environment("default",
///     environment_type="CS",
///     environment_name=f"{name}-{default_integer['result']}",
///     bind_resource_id=default_node_pool.cluster_id,
///     environment_sub_type="ManagedKubernetes")
/// default_env_service_monitor = alicloud.arms.EnvServiceMonitor("default",
///     aliyun_lang="en",
///     environment_id=default_environment.id,
///     config_yaml="""apiVersion: monitoring.coreos.com/v1
/// kind: ServiceMonitor
/// metadata:
///   name: arms-admin1
///   namespace: arms-prom
///   annotations:
///     arms.prometheus.io/discovery: 'true'
///     o11y.aliyun.com/addon-name: mysql
///     o11y.aliyun.com/addon-version: 1.0.1
///     o11y.aliyun.com/release-name: mysql1
/// spec:
///   endpoints:
///   - interval: 30s
///     port: operator
///     path: /metrics
///   - interval: 10s
///     port: operator1
///     path: /metrics
///   namespaceSelector:
///     any: true
///   selector:
///     matchLabels:
///      app: arms-prometheus-ack-arms-prometheus
/// """)
/// ids = alicloud.arms.get_env_service_monitors_output(environment_id=default_env_service_monitor.environment_id,
///     ids=[default_env_service_monitor.id])
/// pulumi.export("armsEnvServiceMonitorsId0", ids.monitors[0].id)
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
///     var name = config.Get("name") ?? "terraform-example";
///     var defaultInteger = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var enhanced = AliCloud.Vpc.GetEnhancedNatAvailableZones.Invoke();
///
///     var vpc = new AliCloud.Vpc.Network("vpc", new()
///     {
///         Description = "api-resource-test1-hz",
///         CidrBlock = "192.168.0.0/16",
///         VpcName = $"{name}-{defaultInteger.Result}",
///     });
///
///     var vswitch = new AliCloud.Vpc.Switch("vswitch", new()
///     {
///         Description = "api-resource-test1-hz",
///         VpcId = vpc.Id,
///         VswitchName = $"{name}-{defaultInteger.Result}",
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
///         Name = $"{name}-{defaultInteger.Result}",
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
///         Name = $"{name}-{defaultInteger.Result}",
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
///         Name = "desired_size",
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
///         EnvironmentType = "CS",
///         EnvironmentName = $"{name}-{defaultInteger.Result}",
///         BindResourceId = defaultNodePool.ClusterId,
///         EnvironmentSubType = "ManagedKubernetes",
///     });
///
///     var defaultEnvServiceMonitor = new AliCloud.Arms.EnvServiceMonitor("default", new()
///     {
///         AliyunLang = "en",
///         EnvironmentId = defaultEnvironment.Id,
///         ConfigYaml = @"apiVersion: monitoring.coreos.com/v1
/// kind: ServiceMonitor
/// metadata:
///   name: arms-admin1
///   namespace: arms-prom
///   annotations:
///     arms.prometheus.io/discovery: 'true'
///     o11y.aliyun.com/addon-name: mysql
///     o11y.aliyun.com/addon-version: 1.0.1
///     o11y.aliyun.com/release-name: mysql1
/// spec:
///   endpoints:
///   - interval: 30s
///     port: operator
///     path: /metrics
///   - interval: 10s
///     port: operator1
///     path: /metrics
///   namespaceSelector:
///     any: true
///   selector:
///     matchLabels:
///      app: arms-prometheus-ack-arms-prometheus
/// ",
///     });
///
///     var ids = AliCloud.Arms.GetEnvServiceMonitors.Invoke(new()
///     {
///         EnvironmentId = defaultEnvServiceMonitor.EnvironmentId,
///         Ids = new[]
///         {
///             defaultEnvServiceMonitor.Id,
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["armsEnvServiceMonitorsId0"] = ids.Apply(getEnvServiceMonitorsResult => getEnvServiceMonitorsResult.Monitors[0]?.Id),
///     };
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
/// cfg := config.New(ctx, "")
/// name := "terraform-example";
/// if param := cfg.Get("name"); param != ""{
/// name = param
/// }
/// defaultInteger, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// Min: 10000,
/// Max: 99999,
/// })
/// if err != nil {
/// return err
/// }
/// enhanced, err := vpc.GetEnhancedNatAvailableZones(ctx, &vpc.GetEnhancedNatAvailableZonesArgs{
/// }, nil);
/// if err != nil {
/// return err
/// }
/// vpc, err := vpc.NewNetwork(ctx, "vpc", &vpc.NetworkArgs{
/// Description: pulumi.String("api-resource-test1-hz"),
/// CidrBlock: pulumi.String("192.168.0.0/16"),
/// VpcName: pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
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
/// Description: pulumi.String("api-resource-test1-hz"),
/// VpcId: vpc.ID(),
/// VswitchName: pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
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
/// Name: pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
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
/// Name: pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
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
/// Name: pulumi.String("desired_size"),
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
/// EnvironmentType: pulumi.String("CS"),
/// EnvironmentName: pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
/// BindResourceId: defaultNodePool.ClusterId,
/// EnvironmentSubType: pulumi.String("ManagedKubernetes"),
/// })
/// if err != nil {
/// return err
/// }
/// defaultEnvServiceMonitor, err := arms.NewEnvServiceMonitor(ctx, "default", &arms.EnvServiceMonitorArgs{
/// AliyunLang: pulumi.String("en"),
/// EnvironmentId: defaultEnvironment.ID(),
/// ConfigYaml: pulumi.String(`apiVersion: monitoring.coreos.com/v1
/// kind: ServiceMonitor
/// metadata:
///   name: arms-admin1
///   namespace: arms-prom
///   annotations:
///     arms.prometheus.io/discovery: 'true'
///     o11y.aliyun.com/addon-name: mysql
///     o11y.aliyun.com/addon-version: 1.0.1
///     o11y.aliyun.com/release-name: mysql1
/// spec:
///   endpoints:
///   - interval: 30s
///     port: operator
///     path: /metrics
///   - interval: 10s
///     port: operator1
///     path: /metrics
///   namespaceSelector:
///     any: true
///   selector:
///     matchLabels:
///      app: arms-prometheus-ack-arms-prometheus
/// `),
/// })
/// if err != nil {
/// return err
/// }
/// ids := arms.GetEnvServiceMonitorsOutput(ctx, arms.GetEnvServiceMonitorsOutputArgs{
/// EnvironmentId: defaultEnvServiceMonitor.EnvironmentId,
/// Ids: pulumi.StringArray{
/// defaultEnvServiceMonitor.ID(),
/// },
/// }, nil);
/// ctx.Export("armsEnvServiceMonitorsId0", ids.ApplyT(func(ids arms.GetEnvServiceMonitorsResult) (*string, error) {
/// return &ids.Monitors[0].Id, nil
/// }).(pulumi.StringPtrOutput))
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
/// import com.pulumi.alicloud.arms.EnvServiceMonitor;
/// import com.pulumi.alicloud.arms.EnvServiceMonitorArgs;
/// import com.pulumi.alicloud.arms.ArmsFunctions;
/// import com.pulumi.alicloud.arms.inputs.GetEnvServiceMonitorsArgs;
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
///         var defaultInteger = new Integer("defaultInteger", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         final var enhanced = VpcFunctions.getEnhancedNatAvailableZones(GetEnhancedNatAvailableZonesArgs.builder()
///             .build());
///
///         var vpc = new Network("vpc", NetworkArgs.builder()
///             .description("api-resource-test1-hz")
///             .cidrBlock("192.168.0.0/16")
///             .vpcName(String.format("%s-%s", name,defaultInteger.result()))
///             .build());
///
///         var vswitch = new Switch("vswitch", SwitchArgs.builder()
///             .description("api-resource-test1-hz")
///             .vpcId(vpc.id())
///             .vswitchName(String.format("%s-%s", name,defaultInteger.result()))
///             .zoneId(enhanced.zones()[0].zoneId())
///             .cidrBlock(vpc.cidrBlock().applyValue(_cidrBlock -> StdFunctions.cidrsubnet(CidrsubnetArgs.builder()
///                 .input(_cidrBlock)
///                 .newbits(8)
///                 .netnum(8)
///                 .build())).applyValue(_invoke -> _invoke.result()))
///             .build());
///
///         var defaultSnapshotPolicy = new SnapshotPolicy("defaultSnapshotPolicy", SnapshotPolicyArgs.builder()
///             .name(String.format("%s-%s", name,defaultInteger.result()))
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
///             .name(String.format("%s-%s", name,defaultInteger.result()))
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
///             .name("desired_size")
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
///             .environmentType("CS")
///             .environmentName(String.format("%s-%s", name,defaultInteger.result()))
///             .bindResourceId(defaultNodePool.clusterId())
///             .environmentSubType("ManagedKubernetes")
///             .build());
///
///         var defaultEnvServiceMonitor = new EnvServiceMonitor("defaultEnvServiceMonitor", EnvServiceMonitorArgs.builder()
///             .aliyunLang("en")
///             .environmentId(defaultEnvironment.id())
///             .configYaml("""
/// apiVersion: monitoring.coreos.com/v1
/// kind: ServiceMonitor
/// metadata:
///   name: arms-admin1
///   namespace: arms-prom
///   annotations:
///     arms.prometheus.io/discovery: 'true'
///     o11y.aliyun.com/addon-name: mysql
///     o11y.aliyun.com/addon-version: 1.0.1
///     o11y.aliyun.com/release-name: mysql1
/// spec:
///   endpoints:
///   - interval: 30s
///     port: operator
///     path: /metrics
///   - interval: 10s
///     port: operator1
///     path: /metrics
///   namespaceSelector:
///     any: true
///   selector:
///     matchLabels:
///      app: arms-prometheus-ack-arms-prometheus
///             """)
///             .build());
///
///         final var ids = ArmsFunctions.getEnvServiceMonitors(GetEnvServiceMonitorsArgs.builder()
///             .environmentId(defaultEnvServiceMonitor.environmentId())
///             .ids(defaultEnvServiceMonitor.id())
///             .build());
///
///         ctx.export("armsEnvServiceMonitorsId0", ids.applyValue(_ids -> _ids.monitors()[0].id()));
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
///       min: 10000
///       max: 99999
///   vpc:
///     type: alicloud:vpc:Network
///     properties:
///       description: api-resource-test1-hz
///       cidrBlock: 192.168.0.0/16
///       vpcName: ${name}-${defaultInteger.result}
///   vswitch:
///     type: alicloud:vpc:Switch
///     properties:
///       description: api-resource-test1-hz
///       vpcId: ${vpc.id}
///       vswitchName: ${name}-${defaultInteger.result}
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
///       name: ${name}-${defaultInteger.result}
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
///       name: ${name}-${defaultInteger.result}
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
///       name: desired_size
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
///       environmentType: CS
///       environmentName: ${name}-${defaultInteger.result}
///       bindResourceId: ${defaultNodePool.clusterId}
///       environmentSubType: ManagedKubernetes
///   defaultEnvServiceMonitor:
///     type: alicloud:arms:EnvServiceMonitor
///     name: default
///     properties:
///       aliyunLang: en
///       environmentId: ${defaultEnvironment.id}
///       configYaml: |
///         apiVersion: monitoring.coreos.com/v1
///         kind: ServiceMonitor
///         metadata:
///           name: arms-admin1
///           namespace: arms-prom
///           annotations:
///             arms.prometheus.io/discovery: 'true'
///             o11y.aliyun.com/addon-name: mysql
///             o11y.aliyun.com/addon-version: 1.0.1
///             o11y.aliyun.com/release-name: mysql1
///         spec:
///           endpoints:
///           - interval: 30s
///             port: operator
///             path: /metrics
///           - interval: 10s
///             port: operator1
///             path: /metrics
///           namespaceSelector:
///             any: true
///           selector:
///             matchLabels:
///              app: arms-prometheus-ack-arms-prometheus
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
///   ids:
///     fn::invoke:
///       function: alicloud:arms:getEnvServiceMonitors
///       arguments:
///         environmentId: ${defaultEnvServiceMonitor.environmentId}
///         ids:
///           - ${defaultEnvServiceMonitor.id}
/// outputs:
///   armsEnvServiceMonitorsId0: ${ids.monitors[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_arms_get_env_service_monitors_get_env_service_monitors_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEnvServiceMonitorsResult> getEnvServiceMonitors(
  GetEnvServiceMonitorsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:arms/getEnvServiceMonitors:getEnvServiceMonitors',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnvServiceMonitorsResult.fromMap(result);
}

/// This data source provides the ARMS Environments of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.258.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as random from "@pulumi/random";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = alicloud.resourcemanager.getResourceGroups({
///     status: "OK",
/// });
/// const defaultGetNetworks = alicloud.vpc.getNetworks({
///     nameRegex: "^default-NODELETING$",
/// });
/// const defaultInteger = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const defaultEnvironment = new alicloud.arms.Environment("default", {
///     bindResourceId: defaultGetNetworks.then(defaultGetNetworks => defaultGetNetworks.ids?.[0]),
///     environmentSubType: "ECS",
///     environmentType: "ECS",
///     environmentName: `${name}-${defaultInteger.result}`,
///     resourceGroupId: _default.then(_default => _default.ids?.[1]),
///     tags: {
///         Created: "TF",
///         For: "Environment",
///     },
/// });
/// const ids = alicloud.arms.getEnvironmentsOutput({
///     ids: [defaultEnvironment.id],
/// });
/// export const armsEnvironmentsId0 = ids.apply(ids => ids.environments?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.resourcemanager.get_resource_groups(status="OK")
/// default_get_networks = alicloud.vpc.get_networks(name_regex="^default-NODELETING$")
/// default_integer = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// default_environment = alicloud.arms.Environment("default",
///     bind_resource_id=default_get_networks.ids[0],
///     environment_sub_type="ECS",
///     environment_type="ECS",
///     environment_name=f"{name}-{default_integer['result']}",
///     resource_group_id=default.ids[1],
///     tags={
///         "Created": "TF",
///         "For": "Environment",
///     })
/// ids = alicloud.arms.get_environments_output(ids=[default_environment.id])
/// pulumi.export("armsEnvironmentsId0", ids.environments[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = AliCloud.ResourceManager.GetResourceGroups.Invoke(new()
///     {
///         Status = "OK",
///     });
///
///     var defaultGetNetworks = AliCloud.Vpc.GetNetworks.Invoke(new()
///     {
///         NameRegex = "^default-NODELETING$",
///     });
///
///     var defaultInteger = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var defaultEnvironment = new AliCloud.Arms.Environment("default", new()
///     {
///         BindResourceId = defaultGetNetworks.Apply(getNetworksResult => getNetworksResult.Ids[0]),
///         EnvironmentSubType = "ECS",
///         EnvironmentType = "ECS",
///         EnvironmentName = $"{name}-{defaultInteger.Result}",
///         ResourceGroupId = @default.Apply(@default => @default.Apply(getResourceGroupsResult => getResourceGroupsResult.Ids[1])),
///         Tags =
///         {
///             { "Created", "TF" },
///             { "For", "Environment" },
///         },
///     });
///
///     var ids = AliCloud.Arms.GetEnvironments.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultEnvironment.Id,
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["armsEnvironmentsId0"] = ids.Apply(getEnvironmentsResult => getEnvironmentsResult.Environments[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/arms"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
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
/// 		_default, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{
/// 			Status: pulumi.StringRef("OK"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetNetworks, err := vpc.GetNetworks(ctx, &vpc.GetNetworksArgs{
/// 			NameRegex: pulumi.StringRef("^default-NODELETING$"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInteger, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultEnvironment, err := arms.NewEnvironment(ctx, "default", &arms.EnvironmentArgs{
/// 			BindResourceId:     pulumi.String(defaultGetNetworks.Ids[0]),
/// 			EnvironmentSubType: pulumi.String("ECS"),
/// 			EnvironmentType:    pulumi.String("ECS"),
/// 			EnvironmentName:    pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
/// 			ResourceGroupId:    pulumi.String(_default.Ids[1]),
/// 			Tags: pulumi.StringMap{
/// 				"Created": pulumi.String("TF"),
/// 				"For":     pulumi.String("Environment"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ids := arms.GetEnvironmentsOutput(ctx, arms.GetEnvironmentsOutputArgs{
/// 			Ids: pulumi.StringArray{
/// 				defaultEnvironment.ID(),
/// 			},
/// 		}, nil)
/// 		ctx.Export("armsEnvironmentsId0", ids.ApplyT(func(ids arms.GetEnvironmentsResult) (*string, error) {
/// 			return &ids.Environments[0].Id, nil
/// 		}).(pulumi.StringPtrOutput))
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
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetNetworksArgs;
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.arms.Environment;
/// import com.pulumi.alicloud.arms.EnvironmentArgs;
/// import com.pulumi.alicloud.arms.ArmsFunctions;
/// import com.pulumi.alicloud.arms.inputs.GetEnvironmentsArgs;
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
///         final var default = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .status("OK")
///             .build());
///
///         final var defaultGetNetworks = VpcFunctions.getNetworks(GetNetworksArgs.builder()
///             .nameRegex("^default-NODELETING$")
///             .build());
///
///         var defaultInteger = new Integer("defaultInteger", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var defaultEnvironment = new Environment("defaultEnvironment", EnvironmentArgs.builder()
///             .bindResourceId(defaultGetNetworks.ids()[0])
///             .environmentSubType("ECS")
///             .environmentType("ECS")
///             .environmentName(String.format("%s-%s", name,defaultInteger.result()))
///             .resourceGroupId(default_.ids()[1])
///             .tags(Map.ofEntries(
///                 Map.entry("Created", "TF"),
///                 Map.entry("For", "Environment")
///             ))
///             .build());
///
///         final var ids = ArmsFunctions.getEnvironments(GetEnvironmentsArgs.builder()
///             .ids(defaultEnvironment.id())
///             .build());
///
///         ctx.export("armsEnvironmentsId0", ids.applyValue(_ids -> _ids.environments()[0].id()));
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
///       min: 10000
///       max: 99999
///   defaultEnvironment:
///     type: alicloud:arms:Environment
///     name: default
///     properties:
///       bindResourceId: ${defaultGetNetworks.ids[0]}
///       environmentSubType: ECS
///       environmentType: ECS
///       environmentName: ${name}-${defaultInteger.result}
///       resourceGroupId: ${default.ids[1]}
///       tags:
///         Created: TF
///         For: Environment
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:resourcemanager:getResourceGroups
///       arguments:
///         status: OK
///   defaultGetNetworks:
///     fn::invoke:
///       function: alicloud:vpc:getNetworks
///       arguments:
///         nameRegex: ^default-NODELETING$
///   ids:
///     fn::invoke:
///       function: alicloud:arms:getEnvironments
///       arguments:
///         ids:
///           - ${defaultEnvironment.id}
/// outputs:
///   armsEnvironmentsId0: ${ids.environments[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_arms_get_environments_get_environments_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEnvironmentsResult> getEnvironments(
  GetEnvironmentsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:arms/getEnvironments:getEnvironments',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnvironmentsResult.fromMap(result);
}

/// This data source provides the Arms Integration Exporters of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.203.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const ids = alicloud.arms.getIntegrationExporters({
///     ids: ["example_id"],
///     clusterId: "your_cluster_id",
///     integrationType: "kafka",
/// });
/// export const armsIntegrationExportersId1 = ids.then(ids => ids.integrationExporters?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.arms.get_integration_exporters(ids=["example_id"],
///     cluster_id="your_cluster_id",
///     integration_type="kafka")
/// pulumi.export("armsIntegrationExportersId1", ids.integration_exporters[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Arms.GetIntegrationExporters.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///         ClusterId = "your_cluster_id",
///         IntegrationType = "kafka",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["armsIntegrationExportersId1"] = ids.Apply(getIntegrationExportersResult => getIntegrationExportersResult.IntegrationExporters[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/arms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := arms.GetIntegrationExporters(ctx, &arms.GetIntegrationExportersArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 			ClusterId:       "your_cluster_id",
/// 			IntegrationType: "kafka",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("armsIntegrationExportersId1", ids.IntegrationExporters[0].Id)
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
/// import com.pulumi.alicloud.arms.ArmsFunctions;
/// import com.pulumi.alicloud.arms.inputs.GetIntegrationExportersArgs;
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
///         final var ids = ArmsFunctions.getIntegrationExporters(GetIntegrationExportersArgs.builder()
///             .ids("example_id")
///             .clusterId("your_cluster_id")
///             .integrationType("kafka")
///             .build());
///
///         ctx.export("armsIntegrationExportersId1", ids.integrationExporters()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:arms:getIntegrationExporters
///       arguments:
///         ids:
///           - example_id
///         clusterId: your_cluster_id
///         integrationType: kafka
/// outputs:
///   armsIntegrationExportersId1: ${ids.integrationExporters[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_arms_get_integration_exporters_get_integration_exporters_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIntegrationExportersResult> getIntegrationExporters(
  GetIntegrationExportersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:arms/getIntegrationExporters:getIntegrationExporters',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIntegrationExportersResult.fromMap(result);
}

/// This data source provides the Arms Prometheis of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.203.0.
///
/// &gt; **DEPRECATED:** This data source has been renamed to alicloud.arms.Prometheus from version 1.214.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf-example";
/// const _default = alicloud.vpc.getNetworks({
///     nameRegex: "default-NODELETING",
/// });
/// const defaultGetSwitches = _default.then(_default => alicloud.vpc.getSwitches({
///     vpcId: _default.ids?.[0],
/// }));
/// const defaultGetResourceGroups = alicloud.resourcemanager.getResourceGroups({});
/// const defaultSecurityGroup = new alicloud.ecs.SecurityGroup("default", {vpcId: _default.then(_default => _default.ids?.[0])});
/// const defaultPrometheus = new alicloud.arms.Prometheus("default", {
///     clusterType: "ecs",
///     grafanaInstanceId: "free",
///     vpcId: _default.then(_default => _default.ids?.[0]),
///     vswitchId: defaultGetSwitches.then(defaultGetSwitches => defaultGetSwitches.ids?.[0]),
///     securityGroupId: defaultSecurityGroup.id,
///     clusterName: _default.then(_default => `${name}-${_default.ids?.[0]}`),
///     resourceGroupId: defaultGetResourceGroups.then(defaultGetResourceGroups => defaultGetResourceGroups.groups?.[1]?.id),
///     tags: {
///         Created: "TF",
///         For: "Prometheus",
///     },
/// });
/// const nameRegex = alicloud.arms.getPrometheisOutput({
///     nameRegex: defaultPrometheus.clusterName,
/// });
/// export const armsPrometheisId = nameRegex.apply(nameRegex => nameRegex.prometheis?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-example"
/// default = alicloud.vpc.get_networks(name_regex="default-NODELETING")
/// default_get_switches = alicloud.vpc.get_switches(vpc_id=default.ids[0])
/// default_get_resource_groups = alicloud.resourcemanager.get_resource_groups()
/// default_security_group = alicloud.ecs.SecurityGroup("default", vpc_id=default.ids[0])
/// default_prometheus = alicloud.arms.Prometheus("default",
///     cluster_type="ecs",
///     grafana_instance_id="free",
///     vpc_id=default.ids[0],
///     vswitch_id=default_get_switches.ids[0],
///     security_group_id=default_security_group.id,
///     cluster_name=f"{name}-{default.ids[0]}",
///     resource_group_id=default_get_resource_groups.groups[1].id,
///     tags={
///         "Created": "TF",
///         "For": "Prometheus",
///     })
/// name_regex = alicloud.arms.get_prometheis_output(name_regex=default_prometheus.cluster_name)
/// pulumi.export("armsPrometheisId", name_regex.prometheis[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "tf-example";
///     var @default = AliCloud.Vpc.GetNetworks.Invoke(new()
///     {
///         NameRegex = "default-NODELETING",
///     });
///
///     var defaultGetSwitches = AliCloud.Vpc.GetSwitches.Invoke(new()
///     {
///         VpcId = @default.Apply(getNetworksResult => getNetworksResult.Ids[0]),
///     });
///
///     var defaultGetResourceGroups = AliCloud.ResourceManager.GetResourceGroups.Invoke();
///
///     var defaultSecurityGroup = new AliCloud.Ecs.SecurityGroup("default", new()
///     {
///         VpcId = @default.Apply(@default => @default.Apply(getNetworksResult => getNetworksResult.Ids[0])),
///     });
///
///     var defaultPrometheus = new AliCloud.Arms.Prometheus("default", new()
///     {
///         ClusterType = "ecs",
///         GrafanaInstanceId = "free",
///         VpcId = @default.Apply(@default => @default.Apply(getNetworksResult => getNetworksResult.Ids[0])),
///         VswitchId = defaultGetSwitches.Apply(getSwitchesResult => getSwitchesResult.Ids[0]),
///         SecurityGroupId = defaultSecurityGroup.Id,
///         ClusterName = @default.Apply(@default => $"{name}-{@default.Apply(getNetworksResult => getNetworksResult.Ids[0])}"),
///         ResourceGroupId = defaultGetResourceGroups.Apply(getResourceGroupsResult => getResourceGroupsResult.Groups[1]?.Id),
///         Tags =
///         {
///             { "Created", "TF" },
///             { "For", "Prometheus" },
///         },
///     });
///
///     var nameRegex = AliCloud.Arms.GetPrometheis.Invoke(new()
///     {
///         NameRegex = defaultPrometheus.ClusterName,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["armsPrometheisId"] = nameRegex.Apply(getPrometheisResult => getPrometheisResult.Prometheis[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/arms"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := vpc.GetNetworks(ctx, &vpc.GetNetworksArgs{
/// 			NameRegex: pulumi.StringRef("default-NODELETING"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetSwitches, err := vpc.GetSwitches(ctx, &vpc.GetSwitchesArgs{
/// 			VpcId: pulumi.StringRef(_default.Ids[0]),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetResourceGroups, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSecurityGroup, err := ecs.NewSecurityGroup(ctx, "default", &ecs.SecurityGroupArgs{
/// 			VpcId: pulumi.String(_default.Ids[0]),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultPrometheus, err := arms.NewPrometheus(ctx, "default", &arms.PrometheusArgs{
/// 			ClusterType:       pulumi.String("ecs"),
/// 			GrafanaInstanceId: pulumi.String("free"),
/// 			VpcId:             pulumi.String(_default.Ids[0]),
/// 			VswitchId:         pulumi.String(defaultGetSwitches.Ids[0]),
/// 			SecurityGroupId:   defaultSecurityGroup.ID(),
/// 			ClusterName:       pulumi.Sprintf("%v-%v", name, _default.Ids[0]),
/// 			ResourceGroupId:   pulumi.String(defaultGetResourceGroups.Groups[1].Id),
/// 			Tags: pulumi.StringMap{
/// 				"Created": pulumi.String("TF"),
/// 				"For":     pulumi.String("Prometheus"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		nameRegex := arms.GetPrometheisOutput(ctx, arms.GetPrometheisOutputArgs{
/// 			NameRegex: defaultPrometheus.ClusterName,
/// 		}, nil)
/// 		ctx.Export("armsPrometheisId", nameRegex.ApplyT(func(nameRegex arms.GetPrometheisResult) (*string, error) {
/// 			return &nameRegex.Prometheis[0].Id, nil
/// 		}).(pulumi.StringPtrOutput))
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
/// import com.pulumi.alicloud.vpc.inputs.GetNetworksArgs;
/// import com.pulumi.alicloud.vpc.inputs.GetSwitchesArgs;
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.arms.Prometheus;
/// import com.pulumi.alicloud.arms.PrometheusArgs;
/// import com.pulumi.alicloud.arms.ArmsFunctions;
/// import com.pulumi.alicloud.arms.inputs.GetPrometheisArgs;
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
///         final var default = VpcFunctions.getNetworks(GetNetworksArgs.builder()
///             .nameRegex("default-NODELETING")
///             .build());
///
///         final var defaultGetSwitches = VpcFunctions.getSwitches(GetSwitchesArgs.builder()
///             .vpcId(default_.ids()[0])
///             .build());
///
///         final var defaultGetResourceGroups = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .build());
///
///         var defaultSecurityGroup = new SecurityGroup("defaultSecurityGroup", SecurityGroupArgs.builder()
///             .vpcId(default_.ids()[0])
///             .build());
///
///         var defaultPrometheus = new Prometheus("defaultPrometheus", PrometheusArgs.builder()
///             .clusterType("ecs")
///             .grafanaInstanceId("free")
///             .vpcId(default_.ids()[0])
///             .vswitchId(defaultGetSwitches.ids()[0])
///             .securityGroupId(defaultSecurityGroup.id())
///             .clusterName(String.format("%s-%s", name,default_.ids()[0]))
///             .resourceGroupId(defaultGetResourceGroups.groups()[1].id())
///             .tags(Map.ofEntries(
///                 Map.entry("Created", "TF"),
///                 Map.entry("For", "Prometheus")
///             ))
///             .build());
///
///         final var nameRegex = ArmsFunctions.getPrometheis(GetPrometheisArgs.builder()
///             .nameRegex(defaultPrometheus.clusterName())
///             .build());
///
///         ctx.export("armsPrometheisId", nameRegex.applyValue(_nameRegex -> _nameRegex.prometheis()[0].id()));
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf-example
/// resources:
///   defaultSecurityGroup:
///     type: alicloud:ecs:SecurityGroup
///     name: default
///     properties:
///       vpcId: ${default.ids[0]}
///   defaultPrometheus:
///     type: alicloud:arms:Prometheus
///     name: default
///     properties:
///       clusterType: ecs
///       grafanaInstanceId: free
///       vpcId: ${default.ids[0]}
///       vswitchId: ${defaultGetSwitches.ids[0]}
///       securityGroupId: ${defaultSecurityGroup.id}
///       clusterName: ${name}-${default.ids[0]}
///       resourceGroupId: ${defaultGetResourceGroups.groups[1].id}
///       tags:
///         Created: TF
///         For: Prometheus
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:vpc:getNetworks
///       arguments:
///         nameRegex: default-NODELETING
///   defaultGetSwitches:
///     fn::invoke:
///       function: alicloud:vpc:getSwitches
///       arguments:
///         vpcId: ${default.ids[0]}
///   defaultGetResourceGroups:
///     fn::invoke:
///       function: alicloud:resourcemanager:getResourceGroups
///       arguments: {}
///   nameRegex:
///     fn::invoke:
///       function: alicloud:arms:getPrometheis
///       arguments:
///         nameRegex: ${defaultPrometheus.clusterName}
/// outputs:
///   armsPrometheisId: ${nameRegex.prometheis[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_arms_get_prometheis_get_prometheis_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrometheisResult> getPrometheis(
  GetPrometheisArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:arms/getPrometheis:getPrometheis',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrometheisResult.fromMap(result);
}

/// This data source provides the Arms Prometheus of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.214.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf-example";
/// const _default = alicloud.vpc.getNetworks({
///     nameRegex: "default-NODELETING",
/// });
/// const defaultGetSwitches = _default.then(_default => alicloud.vpc.getSwitches({
///     vpcId: _default.ids?.[0],
/// }));
/// const defaultSecurityGroup = new alicloud.ecs.SecurityGroup("default", {vpcId: _default.then(_default => _default.ids?.[0])});
/// const defaultPrometheus = new alicloud.arms.Prometheus("default", {
///     clusterType: "ecs",
///     grafanaInstanceId: "free",
///     vpcId: _default.then(_default => _default.ids?.[0]),
///     vswitchId: defaultGetSwitches.then(defaultGetSwitches => defaultGetSwitches.ids?.[0]),
///     securityGroupId: defaultSecurityGroup.id,
///     clusterName: _default.then(_default => `${name}-${_default.ids?.[0]}`),
///     tags: {
///         Created: "TF",
///         For: "Prometheus",
///     },
/// });
/// const nameRegex = alicloud.arms.getPrometheusOutput({
///     nameRegex: defaultPrometheus.clusterName,
/// });
/// export const armsPrometheusId = nameRegex.apply(nameRegex => nameRegex.prometheis?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-example"
/// default = alicloud.vpc.get_networks(name_regex="default-NODELETING")
/// default_get_switches = alicloud.vpc.get_switches(vpc_id=default.ids[0])
/// default_security_group = alicloud.ecs.SecurityGroup("default", vpc_id=default.ids[0])
/// default_prometheus = alicloud.arms.Prometheus("default",
///     cluster_type="ecs",
///     grafana_instance_id="free",
///     vpc_id=default.ids[0],
///     vswitch_id=default_get_switches.ids[0],
///     security_group_id=default_security_group.id,
///     cluster_name=f"{name}-{default.ids[0]}",
///     tags={
///         "Created": "TF",
///         "For": "Prometheus",
///     })
/// name_regex = alicloud.arms.get_prometheus_output(name_regex=default_prometheus.cluster_name)
/// pulumi.export("armsPrometheusId", name_regex.prometheis[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "tf-example";
///     var @default = AliCloud.Vpc.GetNetworks.Invoke(new()
///     {
///         NameRegex = "default-NODELETING",
///     });
///
///     var defaultGetSwitches = AliCloud.Vpc.GetSwitches.Invoke(new()
///     {
///         VpcId = @default.Apply(getNetworksResult => getNetworksResult.Ids[0]),
///     });
///
///     var defaultSecurityGroup = new AliCloud.Ecs.SecurityGroup("default", new()
///     {
///         VpcId = @default.Apply(@default => @default.Apply(getNetworksResult => getNetworksResult.Ids[0])),
///     });
///
///     var defaultPrometheus = new AliCloud.Arms.Prometheus("default", new()
///     {
///         ClusterType = "ecs",
///         GrafanaInstanceId = "free",
///         VpcId = @default.Apply(@default => @default.Apply(getNetworksResult => getNetworksResult.Ids[0])),
///         VswitchId = defaultGetSwitches.Apply(getSwitchesResult => getSwitchesResult.Ids[0]),
///         SecurityGroupId = defaultSecurityGroup.Id,
///         ClusterName = @default.Apply(@default => $"{name}-{@default.Apply(getNetworksResult => getNetworksResult.Ids[0])}"),
///         Tags =
///         {
///             { "Created", "TF" },
///             { "For", "Prometheus" },
///         },
///     });
///
///     var nameRegex = AliCloud.Arms.GetPrometheus.Invoke(new()
///     {
///         NameRegex = defaultPrometheus.ClusterName,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["armsPrometheusId"] = nameRegex.Apply(getPrometheusResult => getPrometheusResult.Prometheis[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/arms"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := vpc.GetNetworks(ctx, &vpc.GetNetworksArgs{
/// 			NameRegex: pulumi.StringRef("default-NODELETING"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetSwitches, err := vpc.GetSwitches(ctx, &vpc.GetSwitchesArgs{
/// 			VpcId: pulumi.StringRef(_default.Ids[0]),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSecurityGroup, err := ecs.NewSecurityGroup(ctx, "default", &ecs.SecurityGroupArgs{
/// 			VpcId: pulumi.String(_default.Ids[0]),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultPrometheus, err := arms.NewPrometheus(ctx, "default", &arms.PrometheusArgs{
/// 			ClusterType:       pulumi.String("ecs"),
/// 			GrafanaInstanceId: pulumi.String("free"),
/// 			VpcId:             pulumi.String(_default.Ids[0]),
/// 			VswitchId:         pulumi.String(defaultGetSwitches.Ids[0]),
/// 			SecurityGroupId:   defaultSecurityGroup.ID(),
/// 			ClusterName:       pulumi.Sprintf("%v-%v", name, _default.Ids[0]),
/// 			Tags: pulumi.StringMap{
/// 				"Created": pulumi.String("TF"),
/// 				"For":     pulumi.String("Prometheus"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		nameRegex := arms.LookupPrometheusOutput(ctx, arms.GetPrometheusOutputArgs{
/// 			NameRegex: defaultPrometheus.ClusterName,
/// 		}, nil)
/// 		ctx.Export("armsPrometheusId", nameRegex.ApplyT(func(nameRegex arms.GetPrometheusResult) (*string, error) {
/// 			return &nameRegex.Prometheis[0].Id, nil
/// 		}).(pulumi.StringPtrOutput))
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
/// import com.pulumi.alicloud.vpc.inputs.GetNetworksArgs;
/// import com.pulumi.alicloud.vpc.inputs.GetSwitchesArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.arms.Prometheus;
/// import com.pulumi.alicloud.arms.PrometheusArgs;
/// import com.pulumi.alicloud.arms.ArmsFunctions;
/// import com.pulumi.alicloud.arms.inputs.GetPrometheusArgs;
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
///         final var default = VpcFunctions.getNetworks(GetNetworksArgs.builder()
///             .nameRegex("default-NODELETING")
///             .build());
///
///         final var defaultGetSwitches = VpcFunctions.getSwitches(GetSwitchesArgs.builder()
///             .vpcId(default_.ids()[0])
///             .build());
///
///         var defaultSecurityGroup = new SecurityGroup("defaultSecurityGroup", SecurityGroupArgs.builder()
///             .vpcId(default_.ids()[0])
///             .build());
///
///         var defaultPrometheus = new Prometheus("defaultPrometheus", PrometheusArgs.builder()
///             .clusterType("ecs")
///             .grafanaInstanceId("free")
///             .vpcId(default_.ids()[0])
///             .vswitchId(defaultGetSwitches.ids()[0])
///             .securityGroupId(defaultSecurityGroup.id())
///             .clusterName(String.format("%s-%s", name,default_.ids()[0]))
///             .tags(Map.ofEntries(
///                 Map.entry("Created", "TF"),
///                 Map.entry("For", "Prometheus")
///             ))
///             .build());
///
///         final var nameRegex = ArmsFunctions.getPrometheus(GetPrometheusArgs.builder()
///             .nameRegex(defaultPrometheus.clusterName())
///             .build());
///
///         ctx.export("armsPrometheusId", nameRegex.applyValue(_nameRegex -> _nameRegex.prometheis()[0].id()));
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf-example
/// resources:
///   defaultSecurityGroup:
///     type: alicloud:ecs:SecurityGroup
///     name: default
///     properties:
///       vpcId: ${default.ids[0]}
///   defaultPrometheus:
///     type: alicloud:arms:Prometheus
///     name: default
///     properties:
///       clusterType: ecs
///       grafanaInstanceId: free
///       vpcId: ${default.ids[0]}
///       vswitchId: ${defaultGetSwitches.ids[0]}
///       securityGroupId: ${defaultSecurityGroup.id}
///       clusterName: ${name}-${default.ids[0]}
///       tags:
///         Created: TF
///         For: Prometheus
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:vpc:getNetworks
///       arguments:
///         nameRegex: default-NODELETING
///   defaultGetSwitches:
///     fn::invoke:
///       function: alicloud:vpc:getSwitches
///       arguments:
///         vpcId: ${default.ids[0]}
///   nameRegex:
///     fn::invoke:
///       function: alicloud:arms:getPrometheus
///       arguments:
///         nameRegex: ${defaultPrometheus.clusterName}
/// outputs:
///   armsPrometheusId: ${nameRegex.prometheis[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_arms_get_prometheus_get_prometheus_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrometheusResult> getPrometheus(
  GetPrometheusArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:arms/getPrometheus:getPrometheus',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrometheusResult.fromMap(result);
}

/// This data source provides the Arms Prometheus Alert Rules of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.136.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const ids = alicloud.arms.getPrometheusAlertRules({
///     clusterId: "example_value",
///     ids: [
///         "example_value-1",
///         "example_value-2",
///     ],
/// });
/// export const armsPrometheusAlertRuleId1 = ids.then(ids => ids.rules?.[0]?.id);
/// const nameRegex = alicloud.arms.getPrometheusAlertRules({
///     clusterId: "example_value",
///     nameRegex: "^my-PrometheusAlertRule",
/// });
/// export const armsPrometheusAlertRuleId2 = nameRegex.then(nameRegex => nameRegex.rules?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.arms.get_prometheus_alert_rules(cluster_id="example_value",
///     ids=[
///         "example_value-1",
///         "example_value-2",
///     ])
/// pulumi.export("armsPrometheusAlertRuleId1", ids.rules[0].id)
/// name_regex = alicloud.arms.get_prometheus_alert_rules(cluster_id="example_value",
///     name_regex="^my-PrometheusAlertRule")
/// pulumi.export("armsPrometheusAlertRuleId2", name_regex.rules[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Arms.GetPrometheusAlertRules.Invoke(new()
///     {
///         ClusterId = "example_value",
///         Ids = new[]
///         {
///             "example_value-1",
///             "example_value-2",
///         },
///     });
///
///     var nameRegex = AliCloud.Arms.GetPrometheusAlertRules.Invoke(new()
///     {
///         ClusterId = "example_value",
///         NameRegex = "^my-PrometheusAlertRule",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["armsPrometheusAlertRuleId1"] = ids.Apply(getPrometheusAlertRulesResult => getPrometheusAlertRulesResult.Rules[0]?.Id),
///         ["armsPrometheusAlertRuleId2"] = nameRegex.Apply(getPrometheusAlertRulesResult => getPrometheusAlertRulesResult.Rules[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/arms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := arms.GetPrometheusAlertRules(ctx, &arms.GetPrometheusAlertRulesArgs{
/// 			ClusterId: "example_value",
/// 			Ids: []string{
/// 				"example_value-1",
/// 				"example_value-2",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("armsPrometheusAlertRuleId1", ids.Rules[0].Id)
/// 		nameRegex, err := arms.GetPrometheusAlertRules(ctx, &arms.GetPrometheusAlertRulesArgs{
/// 			ClusterId: "example_value",
/// 			NameRegex: pulumi.StringRef("^my-PrometheusAlertRule"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("armsPrometheusAlertRuleId2", nameRegex.Rules[0].Id)
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
/// import com.pulumi.alicloud.arms.ArmsFunctions;
/// import com.pulumi.alicloud.arms.inputs.GetPrometheusAlertRulesArgs;
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
///         final var ids = ArmsFunctions.getPrometheusAlertRules(GetPrometheusAlertRulesArgs.builder()
///             .clusterId("example_value")
///             .ids(
///                 "example_value-1",
///                 "example_value-2")
///             .build());
///
///         ctx.export("armsPrometheusAlertRuleId1", ids.rules()[0].id());
///         final var nameRegex = ArmsFunctions.getPrometheusAlertRules(GetPrometheusAlertRulesArgs.builder()
///             .clusterId("example_value")
///             .nameRegex("^my-PrometheusAlertRule")
///             .build());
///
///         ctx.export("armsPrometheusAlertRuleId2", nameRegex.rules()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:arms:getPrometheusAlertRules
///       arguments:
///         clusterId: example_value
///         ids:
///           - example_value-1
///           - example_value-2
///   nameRegex:
///     fn::invoke:
///       function: alicloud:arms:getPrometheusAlertRules
///       arguments:
///         clusterId: example_value
///         nameRegex: ^my-PrometheusAlertRule
/// outputs:
///   armsPrometheusAlertRuleId1: ${ids.rules[0].id}
///   armsPrometheusAlertRuleId2: ${nameRegex.rules[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_arms_get_prometheus_alert_rules_get_prometheus_alert_rules_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrometheusAlertRulesResult> getPrometheusAlertRules(
  GetPrometheusAlertRulesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:arms/getPrometheusAlertRules:getPrometheusAlertRules',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrometheusAlertRulesResult.fromMap(result);
}

/// This data source provides the Arms Prometheus Monitorings of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.210.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const ids = alicloud.arms.getPrometheusMonitorings({
///     clusterId: "your_cluster_id",
///     ids: ["example_id"],
/// });
/// export const armsPrometheusMonitoringsId1 = ids.then(ids => ids.prometheusMonitorings?.[0]?.id);
/// const nameRegex = alicloud.arms.getPrometheusMonitorings({
///     clusterId: "your_cluster_id",
///     nameRegex: "tf-example",
/// });
/// export const armsPrometheusMonitoringsId2 = nameRegex.then(nameRegex => nameRegex.prometheusMonitorings?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.arms.get_prometheus_monitorings(cluster_id="your_cluster_id",
///     ids=["example_id"])
/// pulumi.export("armsPrometheusMonitoringsId1", ids.prometheus_monitorings[0].id)
/// name_regex = alicloud.arms.get_prometheus_monitorings(cluster_id="your_cluster_id",
///     name_regex="tf-example")
/// pulumi.export("armsPrometheusMonitoringsId2", name_regex.prometheus_monitorings[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Arms.GetPrometheusMonitorings.Invoke(new()
///     {
///         ClusterId = "your_cluster_id",
///         Ids = new[]
///         {
///             "example_id",
///         },
///     });
///
///     var nameRegex = AliCloud.Arms.GetPrometheusMonitorings.Invoke(new()
///     {
///         ClusterId = "your_cluster_id",
///         NameRegex = "tf-example",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["armsPrometheusMonitoringsId1"] = ids.Apply(getPrometheusMonitoringsResult => getPrometheusMonitoringsResult.PrometheusMonitorings[0]?.Id),
///         ["armsPrometheusMonitoringsId2"] = nameRegex.Apply(getPrometheusMonitoringsResult => getPrometheusMonitoringsResult.PrometheusMonitorings[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/arms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := arms.GetPrometheusMonitorings(ctx, &arms.GetPrometheusMonitoringsArgs{
/// 			ClusterId: "your_cluster_id",
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("armsPrometheusMonitoringsId1", ids.PrometheusMonitorings[0].Id)
/// 		nameRegex, err := arms.GetPrometheusMonitorings(ctx, &arms.GetPrometheusMonitoringsArgs{
/// 			ClusterId: "your_cluster_id",
/// 			NameRegex: pulumi.StringRef("tf-example"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("armsPrometheusMonitoringsId2", nameRegex.PrometheusMonitorings[0].Id)
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
/// import com.pulumi.alicloud.arms.ArmsFunctions;
/// import com.pulumi.alicloud.arms.inputs.GetPrometheusMonitoringsArgs;
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
///         final var ids = ArmsFunctions.getPrometheusMonitorings(GetPrometheusMonitoringsArgs.builder()
///             .clusterId("your_cluster_id")
///             .ids("example_id")
///             .build());
///
///         ctx.export("armsPrometheusMonitoringsId1", ids.prometheusMonitorings()[0].id());
///         final var nameRegex = ArmsFunctions.getPrometheusMonitorings(GetPrometheusMonitoringsArgs.builder()
///             .clusterId("your_cluster_id")
///             .nameRegex("tf-example")
///             .build());
///
///         ctx.export("armsPrometheusMonitoringsId2", nameRegex.prometheusMonitorings()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:arms:getPrometheusMonitorings
///       arguments:
///         clusterId: your_cluster_id
///         ids:
///           - example_id
///   nameRegex:
///     fn::invoke:
///       function: alicloud:arms:getPrometheusMonitorings
///       arguments:
///         clusterId: your_cluster_id
///         nameRegex: tf-example
/// outputs:
///   armsPrometheusMonitoringsId1: ${ids.prometheusMonitorings[0].id}
///   armsPrometheusMonitoringsId2: ${nameRegex.prometheusMonitorings[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_arms_get_prometheus_monitorings_get_prometheus_monitorings_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrometheusMonitoringsResult> getPrometheusMonitorings(
  GetPrometheusMonitoringsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:arms/getPrometheusMonitorings:getPrometheusMonitorings',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrometheusMonitoringsResult.fromMap(result);
}

/// This data source provides the Arms Remote Writes of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.204.0.
///
/// &gt; **DEPRECATED:** This data source has been deprecated since v1.228.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const ids = alicloud.arms.getRemoteWrites({
///     ids: ["example_id"],
///     clusterId: "your_cluster_id",
/// });
/// export const armsRemoteWritesId1 = ids.then(ids => ids.remoteWrites?.[0]?.id);
/// const nameRegex = alicloud.arms.getRemoteWrites({
///     nameRegex: "tf-example",
///     clusterId: "your_cluster_id",
/// });
/// export const armsRemoteWritesId2 = nameRegex.then(nameRegex => nameRegex.remoteWrites?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.arms.get_remote_writes(ids=["example_id"],
///     cluster_id="your_cluster_id")
/// pulumi.export("armsRemoteWritesId1", ids.remote_writes[0].id)
/// name_regex = alicloud.arms.get_remote_writes(name_regex="tf-example",
///     cluster_id="your_cluster_id")
/// pulumi.export("armsRemoteWritesId2", name_regex.remote_writes[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Arms.GetRemoteWrites.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///         ClusterId = "your_cluster_id",
///     });
///
///     var nameRegex = AliCloud.Arms.GetRemoteWrites.Invoke(new()
///     {
///         NameRegex = "tf-example",
///         ClusterId = "your_cluster_id",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["armsRemoteWritesId1"] = ids.Apply(getRemoteWritesResult => getRemoteWritesResult.RemoteWrites[0]?.Id),
///         ["armsRemoteWritesId2"] = nameRegex.Apply(getRemoteWritesResult => getRemoteWritesResult.RemoteWrites[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/arms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := arms.GetRemoteWrites(ctx, &arms.GetRemoteWritesArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 			ClusterId: "your_cluster_id",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("armsRemoteWritesId1", ids.RemoteWrites[0].Id)
/// 		nameRegex, err := arms.GetRemoteWrites(ctx, &arms.GetRemoteWritesArgs{
/// 			NameRegex: pulumi.StringRef("tf-example"),
/// 			ClusterId: "your_cluster_id",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("armsRemoteWritesId2", nameRegex.RemoteWrites[0].Id)
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
/// import com.pulumi.alicloud.arms.ArmsFunctions;
/// import com.pulumi.alicloud.arms.inputs.GetRemoteWritesArgs;
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
///         final var ids = ArmsFunctions.getRemoteWrites(GetRemoteWritesArgs.builder()
///             .ids("example_id")
///             .clusterId("your_cluster_id")
///             .build());
///
///         ctx.export("armsRemoteWritesId1", ids.remoteWrites()[0].id());
///         final var nameRegex = ArmsFunctions.getRemoteWrites(GetRemoteWritesArgs.builder()
///             .nameRegex("tf-example")
///             .clusterId("your_cluster_id")
///             .build());
///
///         ctx.export("armsRemoteWritesId2", nameRegex.remoteWrites()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:arms:getRemoteWrites
///       arguments:
///         ids:
///           - example_id
///         clusterId: your_cluster_id
///   nameRegex:
///     fn::invoke:
///       function: alicloud:arms:getRemoteWrites
///       arguments:
///         nameRegex: tf-example
///         clusterId: your_cluster_id
/// outputs:
///   armsRemoteWritesId1: ${ids.remoteWrites[0].id}
///   armsRemoteWritesId2: ${nameRegex.remoteWrites[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_arms_get_remote_writes_get_remote_writes_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRemoteWritesResult> getRemoteWrites(
  GetRemoteWritesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:arms/getRemoteWrites:getRemoteWrites',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRemoteWritesResult.fromMap(result);
}
