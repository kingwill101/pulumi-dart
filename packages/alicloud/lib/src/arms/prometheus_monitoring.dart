import 'package:pulumi/pulumi.dart' as pulumi;
import 'prometheus_monitoring_args.dart';

/// Provides a ARMS Prometheus Monitoring resource. Including serviceMonitor, podMonitor, customJob, probe and other four types of monitoring.
///
/// For information about ARMS Prometheus Monitoring and how to use it, see [What is Prometheus Monitoring](https://www.alibabacloud.com/help/en/arms/prometheus-monitoring/api-arms-2019-08-08-createprometheusmonitoring).
///
/// > **NOTE:** Available since v1.209.0.
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
/// const name = config.get("name") || "terraform-example";
/// const _default = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const defaultGetResourceGroups = alicloud.resourcemanager.getResourceGroups({});
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     cidrBlock: "192.168.0.0/16",
///     vpcName: name,
/// });
/// const vswitch = new alicloud.vpc.Switch("vswitch", {
///     vpcId: defaultNetwork.id,
///     cidrBlock: defaultNetwork.cidrBlock.apply(cidrBlock => std.cidrsubnetOutput({
///         input: cidrBlock,
///         newbits: 8,
///         netnum: 8,
///     })).apply(invoke => invoke.result),
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
///     vswitchName: name,
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
/// const defaultGetInstanceTypes = vswitch.zoneId.apply(zoneId => alicloud.ecs.getInstanceTypesOutput({
///     availabilityZone: zoneId,
///     cpuCoreCount: 2,
///     memorySize: 4,
///     kubernetesNodeRole: "Worker",
///     instanceTypeFamily: "ecs.sn1ne",
/// }));
/// const defaultManagedKubernetes = new alicloud.cs.ManagedKubernetes("default", {
///     name: name,
///     clusterSpec: "ack.pro.small",
///     version: "1.24.6-aliyun.1",
///     newNatGateway: true,
///     nodeCidrMask: 26,
///     proxyMode: "ipvs",
///     serviceCidr: "172.23.0.0/16",
///     podCidr: "10.95.0.0/16",
///     workerVswitchIds: [vswitch.id],
/// });
/// const defaultInteger = new random.index.Integer("default", {
///     max: 99999,
///     min: 10000,
/// });
/// const defaultKeyPair = new alicloud.ecs.KeyPair("default", {keyPairName: `${name}-${defaultInteger.result}`});
/// const defaultNodePool = new alicloud.cs.NodePool("default", {
///     nodePoolName: "desired_size",
///     clusterId: defaultManagedKubernetes.id,
///     vswitchIds: [vswitch.id],
///     instanceTypes: [defaultGetInstanceTypes.apply(defaultGetInstanceTypes => defaultGetInstanceTypes.instanceTypes?.[0]?.id)],
///     systemDiskCategory: "cloud_efficiency",
///     systemDiskSize: 40,
///     keyName: defaultKeyPair.keyPairName,
///     desiredSize: "2",
/// });
/// const defaultPrometheus = new alicloud.arms.Prometheus("default", {
///     clusterType: "aliyun-cs",
///     grafanaInstanceId: "free",
///     clusterId: defaultNodePool.clusterId,
/// });
/// const defaultPrometheusMonitoring = new alicloud.arms.PrometheusMonitoring("default", {
///     status: "run",
///     type: "serviceMonitor",
///     clusterId: defaultPrometheus.clusterId,
///     configYaml: `apiVersion: monitoring.coreos.com/v1
/// kind: ServiceMonitor
/// metadata:
///   name: tomcat-demo
///   namespace: default
/// spec:
///   endpoints:
///   - bearerTokenSecret:
///       key: ''
///     interval: 30s
///     path: /metrics
///     port: tomcat-monitor
///   namespaceSelector:
///     any: true
///   selector:
///     matchLabels:
///       app: tomcat
/// `,
/// });
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
/// default = alicloud.get_zones(available_resource_creation="VSwitch")
/// default_get_resource_groups = alicloud.resourcemanager.get_resource_groups()
/// default_network = alicloud.vpc.Network("default",
///     cidr_block="192.168.0.0/16",
///     vpc_name=name)
/// vswitch = alicloud.vpc.Switch("vswitch",
///     vpc_id=default_network.id,
///     cidr_block=default_network.cidr_block.apply(lambda cidr_block: std.cidrsubnet_output(input=cidr_block,
///         newbits=8,
///         netnum=8)).apply(lambda invoke: invoke.result),
///     zone_id=default.zones[0].id,
///     vswitch_name=name)
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
/// default_get_instance_types = vswitch.zone_id.apply(lambda zone_id: alicloud.ecs.get_instance_types_output(availability_zone=zone_id,
///     cpu_core_count=2,
///     memory_size=4,
///     kubernetes_node_role="Worker",
///     instance_type_family="ecs.sn1ne"))
/// default_managed_kubernetes = alicloud.cs.ManagedKubernetes("default",
///     name=name,
///     cluster_spec="ack.pro.small",
///     version="1.24.6-aliyun.1",
///     new_nat_gateway=True,
///     node_cidr_mask=26,
///     proxy_mode="ipvs",
///     service_cidr="172.23.0.0/16",
///     pod_cidr="10.95.0.0/16",
///     worker_vswitch_ids=[vswitch.id])
/// default_integer = random.index.Integer("default",
///     max=99999,
///     min=10000)
/// default_key_pair = alicloud.ecs.KeyPair("default", key_pair_name=f"{name}-{default_integer['result']}")
/// default_node_pool = alicloud.cs.NodePool("default",
///     node_pool_name="desired_size",
///     cluster_id=default_managed_kubernetes.id,
///     vswitch_ids=[vswitch.id],
///     instance_types=[default_get_instance_types.instance_types[0].id],
///     system_disk_category="cloud_efficiency",
///     system_disk_size=40,
///     key_name=default_key_pair.key_pair_name,
///     desired_size="2")
/// default_prometheus = alicloud.arms.Prometheus("default",
///     cluster_type="aliyun-cs",
///     grafana_instance_id="free",
///     cluster_id=default_node_pool.cluster_id)
/// default_prometheus_monitoring = alicloud.arms.PrometheusMonitoring("default",
///     status="run",
///     type="serviceMonitor",
///     cluster_id=default_prometheus.cluster_id,
///     config_yaml="""apiVersion: monitoring.coreos.com/v1
/// kind: ServiceMonitor
/// metadata:
///   name: tomcat-demo
///   namespace: default
/// spec:
///   endpoints:
///   - bearerTokenSecret:
///       key: ''
///     interval: 30s
///     path: /metrics
///     port: tomcat-monitor
///   namespaceSelector:
///     any: true
///   selector:
///     matchLabels:
///       app: tomcat
/// """)
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
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var defaultGetResourceGroups = AliCloud.ResourceManager.GetResourceGroups.Invoke();
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         CidrBlock = "192.168.0.0/16",
///         VpcName = name,
///     });
///
///     var vswitch = new AliCloud.Vpc.Switch("vswitch", new()
///     {
///         VpcId = defaultNetwork.Id,
///         CidrBlock = defaultNetwork.CidrBlock.Apply(cidrBlock => Std.Cidrsubnet.Invoke(new()
///         {
///             Input = cidrBlock,
///             Newbits = 8,
///             Netnum = 8,
///         })).Apply(invoke => invoke.Result),
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         VswitchName = name,
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
///     var defaultGetInstanceTypes = AliCloud.Ecs.GetInstanceTypes.Invoke(new()
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
///         Name = name,
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
///     var defaultInteger = new Random.Index.Integer("default", new()
///     {
///         Max = 99999,
///         Min = 10000,
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
///             defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.InstanceTypes[0]?.Id),
///         },
///         SystemDiskCategory = "cloud_efficiency",
///         SystemDiskSize = 40,
///         KeyName = defaultKeyPair.KeyPairName,
///         DesiredSize = "2",
///     });
///
///     var defaultPrometheus = new AliCloud.Arms.Prometheus("default", new()
///     {
///         ClusterType = "aliyun-cs",
///         GrafanaInstanceId = "free",
///         ClusterId = defaultNodePool.ClusterId,
///     });
///
///     var defaultPrometheusMonitoring = new AliCloud.Arms.PrometheusMonitoring("default", new()
///     {
///         Status = "run",
///         Type = "serviceMonitor",
///         ClusterId = defaultPrometheus.ClusterId,
///         ConfigYaml = @"apiVersion: monitoring.coreos.com/v1
/// kind: ServiceMonitor
/// metadata:
///   name: tomcat-demo
///   namespace: default
/// spec:
///   endpoints:
///   - bearerTokenSecret:
///       key: ''
///     interval: 30s
///     path: /metrics
///     port: tomcat-monitor
///   namespaceSelector:
///     any: true
///   selector:
///     matchLabels:
///       app: tomcat
/// ",
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/arms"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
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
/// _default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// _, err = resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{
/// }, nil);
/// if err != nil {
/// return err
/// }
/// defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
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
/// VpcId: defaultNetwork.ID(),
/// CidrBlock: pulumi.String(defaultNetwork.CidrBlock.ApplyT(func(cidrBlock string) (std.CidrsubnetResult, error) {
/// %!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference)).(std.CidrsubnetResultOutput).ApplyT(func(invoke std.CidrsubnetResult) (*string, error) {
/// return invoke.Result, nil
/// }).(pulumi.StringPtrOutput)),
/// ZoneId: pulumi.String(_default.Zones[0].Id),
/// VswitchName: pulumi.String(name),
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
/// defaultGetInstanceTypes := vswitch.ZoneId.ApplyT(func(zoneId string) (ecs.GetInstanceTypesResult, error) {
/// return ecs.GetInstanceTypesResult(interface{}(ecs.GetInstanceTypes(ctx, &ecs.GetInstanceTypesArgs{
/// AvailabilityZone: pulumi.StringRef(pulumi.StringRef(zoneId)),
/// CpuCoreCount: pulumi.IntRef(pulumi.IntRef(int(2))),
/// MemorySize: pulumi.Float64Ref(pulumi.Float64Ref(4)),
/// KubernetesNodeRole: pulumi.StringRef(pulumi.StringRef("Worker")),
/// InstanceTypeFamily: pulumi.StringRef(pulumi.StringRef("ecs.sn1ne")),
/// }, nil))), nil
/// }).(ecs.GetInstanceTypesResultOutput)
/// defaultManagedKubernetes, err := cs.NewManagedKubernetes(ctx, "default", &cs.ManagedKubernetesArgs{
/// Name: pulumi.String(name),
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
/// defaultInteger, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// Max: 99999,
/// Min: 10000,
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
/// pulumi.String(defaultGetInstanceTypes.ApplyT(func(defaultGetInstanceTypes ecs.GetInstanceTypesResult) (*string, error) {
/// return &defaultGetInstanceTypes.InstanceTypes[0].Id, nil
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
/// defaultPrometheus, err := arms.NewPrometheus(ctx, "default", &arms.PrometheusArgs{
/// ClusterType: pulumi.String("aliyun-cs"),
/// GrafanaInstanceId: pulumi.String("free"),
/// ClusterId: defaultNodePool.ClusterId,
/// })
/// if err != nil {
/// return err
/// }
/// _, err = arms.NewPrometheusMonitoring(ctx, "default", &arms.PrometheusMonitoringArgs{
/// Status: pulumi.String("run"),
/// Type: pulumi.String("serviceMonitor"),
/// ClusterId: defaultPrometheus.ClusterId,
/// ConfigYaml: pulumi.String(`apiVersion: monitoring.coreos.com/v1
/// kind: ServiceMonitor
/// metadata:
///   name: tomcat-demo
///   namespace: default
/// spec:
///   endpoints:
///   - bearerTokenSecret:
///       key: ''
///     interval: 30s
///     path: /metrics
///     port: tomcat-monitor
///   namespaceSelector:
///     any: true
///   selector:
///     matchLabels:
///       app: tomcat
/// `),
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
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
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.ecs.KeyPair;
/// import com.pulumi.alicloud.ecs.KeyPairArgs;
/// import com.pulumi.alicloud.cs.NodePool;
/// import com.pulumi.alicloud.cs.NodePoolArgs;
/// import com.pulumi.alicloud.arms.Prometheus;
/// import com.pulumi.alicloud.arms.PrometheusArgs;
/// import com.pulumi.alicloud.arms.PrometheusMonitoring;
/// import com.pulumi.alicloud.arms.PrometheusMonitoringArgs;
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
///         final var defaultGetResourceGroups = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .cidrBlock("192.168.0.0/16")
///             .vpcName(name)
///             .build());
///
///         var vswitch = new Switch("vswitch", SwitchArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .cidrBlock(defaultNetwork.cidrBlock().applyValue(_cidrBlock -> StdFunctions.cidrsubnet(CidrsubnetArgs.builder()
///                 .input(_cidrBlock)
///                 .newbits(8)
///                 .netnum(8)
///                 .build())).applyValue(_invoke -> _invoke.result()))
///             .zoneId(default_.zones()[0].id())
///             .vswitchName(name)
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
///         final var defaultGetInstanceTypes = vswitch.zoneId().applyValue(_zoneId -> EcsFunctions.getInstanceTypes(GetInstanceTypesArgs.builder()
///             .availabilityZone(_zoneId)
///             .cpuCoreCount(2)
///             .memorySize(4)
///             .kubernetesNodeRole("Worker")
///             .instanceTypeFamily("ecs.sn1ne")
///             .build()));
///
///         var defaultManagedKubernetes = new ManagedKubernetes("defaultManagedKubernetes", ManagedKubernetesArgs.builder()
///             .name(name)
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
///         var defaultInteger = new Integer("defaultInteger", IntegerArgs.builder()
///             .max(99999)
///             .min(10000)
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
///             .instanceTypes(defaultGetInstanceTypes.applyValue(_defaultGetInstanceTypes -> _defaultGetInstanceTypes.instanceTypes()[0].id()))
///             .systemDiskCategory("cloud_efficiency")
///             .systemDiskSize(40)
///             .keyName(defaultKeyPair.keyPairName())
///             .desiredSize("2")
///             .build());
///
///         var defaultPrometheus = new Prometheus("defaultPrometheus", PrometheusArgs.builder()
///             .clusterType("aliyun-cs")
///             .grafanaInstanceId("free")
///             .clusterId(defaultNodePool.clusterId())
///             .build());
///
///         var defaultPrometheusMonitoring = new PrometheusMonitoring("defaultPrometheusMonitoring", PrometheusMonitoringArgs.builder()
///             .status("run")
///             .type("serviceMonitor")
///             .clusterId(defaultPrometheus.clusterId())
///             .configYaml("""
/// apiVersion: monitoring.coreos.com/v1
/// kind: ServiceMonitor
/// metadata:
///   name: tomcat-demo
///   namespace: default
/// spec:
///   endpoints:
///   - bearerTokenSecret:
///       key: ''
///     interval: 30s
///     path: /metrics
///     port: tomcat-monitor
///   namespaceSelector:
///     any: true
///   selector:
///     matchLabels:
///       app: tomcat
///             """)
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
///       cidrBlock: 192.168.0.0/16
///       vpcName: ${name}
///   vswitch:
///     type: alicloud:vpc:Switch
///     properties:
///       vpcId: ${defaultNetwork.id}
///       cidrBlock:
///         fn::invoke:
///           function: std:cidrsubnet
///           arguments:
///             input: ${defaultNetwork.cidrBlock}
///             newbits: 8
///             netnum: 8
///           return: result
///       zoneId: ${default.zones[0].id}
///       vswitchName: ${name}
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
///       name: ${name}
///       clusterSpec: ack.pro.small
///       version: 1.24.6-aliyun.1
///       newNatGateway: true
///       nodeCidrMask: 26
///       proxyMode: ipvs
///       serviceCidr: 172.23.0.0/16
///       podCidr: 10.95.0.0/16
///       workerVswitchIds:
///         - ${vswitch.id}
///   defaultInteger:
///     type: random:Integer
///     name: default
///     properties:
///       max: 99999
///       min: 10000
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
///         - ${defaultGetInstanceTypes.instanceTypes[0].id}
///       systemDiskCategory: cloud_efficiency
///       systemDiskSize: 40
///       keyName: ${defaultKeyPair.keyPairName}
///       desiredSize: 2
///   defaultPrometheus:
///     type: alicloud:arms:Prometheus
///     name: default
///     properties:
///       clusterType: aliyun-cs
///       grafanaInstanceId: free
///       clusterId: ${defaultNodePool.clusterId}
///   defaultPrometheusMonitoring:
///     type: alicloud:arms:PrometheusMonitoring
///     name: default
///     properties:
///       status: run
///       type: serviceMonitor
///       clusterId: ${defaultPrometheus.clusterId}
///       configYaml: |
///         apiVersion: monitoring.coreos.com/v1
///         kind: ServiceMonitor
///         metadata:
///           name: tomcat-demo
///           namespace: default
///         spec:
///           endpoints:
///           - bearerTokenSecret:
///               key: ''
///             interval: 30s
///             path: /metrics
///             port: tomcat-monitor
///           namespaceSelector:
///             any: true
///           selector:
///             matchLabels:
///               app: tomcat
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableResourceCreation: VSwitch
///   defaultGetResourceGroups:
///     fn::invoke:
///       function: alicloud:resourcemanager:getResourceGroups
///       arguments: {}
///   defaultGetInstanceTypes:
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
/// ARMS Prometheus Monitoring can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:arms/prometheusMonitoring:PrometheusMonitoring example <cluster_id>:<monitoring_name>:<type>
/// ```
class PrometheusMonitoring extends pulumi.CustomResource {
  /// The ID of the prometheus instance.
  late final pulumi.Output<String> clusterId;
  /// Yaml configuration for monitoring.
  late final pulumi.Output<String> configYaml;
  /// The name of the resource.
  late final pulumi.Output<String> monitoringName;
  /// Valid values: `stop`, `run`.
  late final pulumi.Output<String> status;
  /// Monitoring type: `serviceMonitor`, `podMonitor`, `customJob`, `probe`.
  late final pulumi.Output<String> type;

  /// Creates a new [PrometheusMonitoring].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrometheusMonitoring]. {@macro pulumi_arms_prometheus_monitoring_prometheus_monitoring_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrometheusMonitoring(
    String name, {
    PrometheusMonitoringArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:arms/prometheusMonitoring:PrometheusMonitoring',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clusterId = registerOutput<String>('clusterId');
    this.configYaml = registerOutput<String>('configYaml');
    this.monitoringName = registerOutput<String>('monitoringName');
    this.status = registerOutput<String>('status');
    this.type = registerOutput<String>('type');
  }
}
