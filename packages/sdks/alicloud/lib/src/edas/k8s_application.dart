import 'package:pulumi/pulumi.dart' as pulumi;
import 'k8s_application_args.dart';
import 'k8s_application_state.dart';

/// Create an EDAS k8s application.For information about EDAS K8s Application and how to use it, see [What is EDAS K8s Application](https://www.alibabacloud.com/help/en/edas/developer-reference/api-edas-2017-08-01-insertk8sapplication).
///
/// > **NOTE:** Available since v1.105.0.
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
/// import * as std from "@pulumi/std";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf-example";
/// const _default = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const defaultGetImages = alicloud.ecs.getImages({
///     nameRegex: "^ubuntu_18.*64",
///     mostRecent: true,
///     owners: "system",
/// });
/// const defaultGetInstanceTypes = _default.then(_default => alicloud.ecs.getInstanceTypes({
///     availabilityZone: _default.zones?.[0]?.id,
///     cpuCoreCount: 4,
///     memorySize: 8,
///     kubernetesNodeRole: "Worker",
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
/// const defaultNodePool = new alicloud.cs.NodePool("default", {
///     name: name,
///     clusterId: defaultManagedKubernetes.id,
///     vswitchIds: [defaultSwitch.id],
///     instanceTypes: [defaultGetInstanceTypes.then(defaultGetInstanceTypes => defaultGetInstanceTypes.instanceTypes?.[0]?.id)],
///     systemDiskCategory: "cloud_efficiency",
///     systemDiskSize: 40,
///     desiredSize: "2",
/// });
/// const defaultK8sCluster = new alicloud.edas.K8sCluster("default", {csClusterId: defaultNodePool.clusterId});
/// const defaultK8sApplication = new alicloud.edas.K8sApplication("default", {
///     applicationName: name,
///     clusterId: defaultK8sCluster.id,
///     packageType: "FatJar",
///     packageUrl: "http://edas-bj.oss-cn-beijing.aliyuncs.com/prod/demo/SPRING_CLOUD_PROVIDER.jar",
///     jdk: "Open JDK 8",
///     replicas: 2,
///     readiness: "{\"failureThreshold\": 3,\"initialDelaySeconds\": 5,\"successThreshold\": 1,\"timeoutSeconds\": 1,\"tcpSocket\":{\"port\":18081}}",
///     liveness: "{\"failureThreshold\": 3,\"initialDelaySeconds\": 5,\"successThreshold\": 1,\"timeoutSeconds\": 1,\"tcpSocket\":{\"port\":18081}}",
///     applicationDescriotion: name,
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
///     name = "tf-example"
/// default = alicloud.get_zones(available_resource_creation="VSwitch")
/// default_get_images = alicloud.ecs.get_images(name_regex="^ubuntu_18.*64",
///     most_recent=True,
///     owners="system")
/// default_get_instance_types = alicloud.ecs.get_instance_types(availability_zone=default.zones[0].id,
///     cpu_core_count=4,
///     memory_size=8,
///     kubernetes_node_role="Worker")
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
/// default_node_pool = alicloud.cs.NodePool("default",
///     name=name,
///     cluster_id=default_managed_kubernetes.id,
///     vswitch_ids=[default_switch.id],
///     instance_types=[default_get_instance_types.instance_types[0].id],
///     system_disk_category="cloud_efficiency",
///     system_disk_size=40,
///     desired_size="2")
/// default_k8s_cluster = alicloud.edas.K8sCluster("default", cs_cluster_id=default_node_pool.cluster_id)
/// default_k8s_application = alicloud.edas.K8sApplication("default",
///     application_name=name,
///     cluster_id=default_k8s_cluster.id,
///     package_type="FatJar",
///     package_url="http://edas-bj.oss-cn-beijing.aliyuncs.com/prod/demo/SPRING_CLOUD_PROVIDER.jar",
///     jdk="Open JDK 8",
///     replicas=2,
///     readiness="{\"failureThreshold\": 3,\"initialDelaySeconds\": 5,\"successThreshold\": 1,\"timeoutSeconds\": 1,\"tcpSocket\":{\"port\":18081}}",
///     liveness="{\"failureThreshold\": 3,\"initialDelaySeconds\": 5,\"successThreshold\": 1,\"timeoutSeconds\": 1,\"tcpSocket\":{\"port\":18081}}",
///     application_descriotion=name)
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
///     var name = config.Get("name") ?? "tf-example";
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var defaultGetImages = AliCloud.Ecs.GetImages.Invoke(new()
///     {
///         NameRegex = "^ubuntu_18.*64",
///         MostRecent = true,
///         Owners = "system",
///     });
///
///     var defaultGetInstanceTypes = AliCloud.Ecs.GetInstanceTypes.Invoke(new()
///     {
///         AvailabilityZone = @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///         CpuCoreCount = 4,
///         MemorySize = 8,
///         KubernetesNodeRole = "Worker",
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
///     var defaultNodePool = new AliCloud.CS.NodePool("default", new()
///     {
///         Name = name,
///         ClusterId = defaultManagedKubernetes.Id,
///         VswitchIds = new[]
///         {
///             defaultSwitch.Id,
///         },
///         InstanceTypes = new[]
///         {
///             defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.InstanceTypes[0]?.Id),
///         },
///         SystemDiskCategory = "cloud_efficiency",
///         SystemDiskSize = 40,
///         DesiredSize = "2",
///     });
///
///     var defaultK8sCluster = new AliCloud.Edas.K8sCluster("default", new()
///     {
///         CsClusterId = defaultNodePool.ClusterId,
///     });
///
///     var defaultK8sApplication = new AliCloud.Edas.K8sApplication("default", new()
///     {
///         ApplicationName = name,
///         ClusterId = defaultK8sCluster.Id,
///         PackageType = "FatJar",
///         PackageUrl = "http://edas-bj.oss-cn-beijing.aliyuncs.com/prod/demo/SPRING_CLOUD_PROVIDER.jar",
///         Jdk = "Open JDK 8",
///         Replicas = 2,
///         Readiness = "{\"failureThreshold\": 3,\"initialDelaySeconds\": 5,\"successThreshold\": 1,\"timeoutSeconds\": 1,\"tcpSocket\":{\"port\":18081}}",
///         Liveness = "{\"failureThreshold\": 3,\"initialDelaySeconds\": 5,\"successThreshold\": 1,\"timeoutSeconds\": 1,\"tcpSocket\":{\"port\":18081}}",
///         ApplicationDescriotion = name,
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/edas"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
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
/// 		_default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ecs.GetImages(ctx, &ecs.GetImagesArgs{
/// 			NameRegex:  pulumi.StringRef("^ubuntu_18.*64"),
/// 			MostRecent: pulumi.BoolRef(true),
/// 			Owners:     pulumi.StringRef("system"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetInstanceTypes, err := ecs.GetInstanceTypes(ctx, &ecs.GetInstanceTypesArgs{
/// 			AvailabilityZone:   pulumi.StringRef(_default.Zones[0].Id),
/// 			CpuCoreCount:       pulumi.IntRef(4),
/// 			MemorySize:         pulumi.Float64Ref(8),
/// 			KubernetesNodeRole: pulumi.StringRef("Worker"),
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
/// 		defaultNodePool, err := cs.NewNodePool(ctx, "default", &cs.NodePoolArgs{
/// 			Name:      pulumi.String(name),
/// 			ClusterId: defaultManagedKubernetes.ID(),
/// 			VswitchIds: pulumi.StringArray{
/// 				defaultSwitch.ID(),
/// 			},
/// 			InstanceTypes: pulumi.StringArray{
/// 				pulumi.String(defaultGetInstanceTypes.InstanceTypes[0].Id),
/// 			},
/// 			SystemDiskCategory: pulumi.String("cloud_efficiency"),
/// 			SystemDiskSize:     pulumi.Int(40),
/// 			DesiredSize:        pulumi.String("2"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultK8sCluster, err := edas.NewK8sCluster(ctx, "default", &edas.K8sClusterArgs{
/// 			CsClusterId: defaultNodePool.ClusterId,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = edas.NewK8sApplication(ctx, "default", &edas.K8sApplicationArgs{
/// 			ApplicationName:        pulumi.String(name),
/// 			ClusterId:              defaultK8sCluster.ID(),
/// 			PackageType:            pulumi.String("FatJar"),
/// 			PackageUrl:             pulumi.String("http://edas-bj.oss-cn-beijing.aliyuncs.com/prod/demo/SPRING_CLOUD_PROVIDER.jar"),
/// 			Jdk:                    pulumi.String("Open JDK 8"),
/// 			Replicas:               pulumi.Int(2),
/// 			Readiness:              pulumi.String("{\"failureThreshold\": 3,\"initialDelaySeconds\": 5,\"successThreshold\": 1,\"timeoutSeconds\": 1,\"tcpSocket\":{\"port\":18081}}"),
/// 			Liveness:               pulumi.String("{\"failureThreshold\": 3,\"initialDelaySeconds\": 5,\"successThreshold\": 1,\"timeoutSeconds\": 1,\"tcpSocket\":{\"port\":18081}}"),
/// 			ApplicationDescriotion: pulumi.String(name),
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
/// import com.pulumi.alicloud.ecs.inputs.GetImagesArgs;
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
/// import com.pulumi.alicloud.edas.K8sCluster;
/// import com.pulumi.alicloud.edas.K8sClusterArgs;
/// import com.pulumi.alicloud.edas.K8sApplication;
/// import com.pulumi.alicloud.edas.K8sApplicationArgs;
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
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         final var defaultGetImages = EcsFunctions.getImages(GetImagesArgs.builder()
///             .nameRegex("^ubuntu_18.*64")
///             .mostRecent(true)
///             .owners("system")
///             .build());
///
///         final var defaultGetInstanceTypes = EcsFunctions.getInstanceTypes(GetInstanceTypesArgs.builder()
///             .availabilityZone(default_.zones()[0].id())
///             .cpuCoreCount(4)
///             .memorySize(8)
///             .kubernetesNodeRole("Worker")
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
///         var defaultNodePool = new NodePool("defaultNodePool", NodePoolArgs.builder()
///             .name(name)
///             .clusterId(defaultManagedKubernetes.id())
///             .vswitchIds(defaultSwitch.id())
///             .instanceTypes(defaultGetInstanceTypes.instanceTypes()[0].id())
///             .systemDiskCategory("cloud_efficiency")
///             .systemDiskSize(40)
///             .desiredSize("2")
///             .build());
///
///         var defaultK8sCluster = new K8sCluster("defaultK8sCluster", K8sClusterArgs.builder()
///             .csClusterId(defaultNodePool.clusterId())
///             .build());
///
///         var defaultK8sApplication = new K8sApplication("defaultK8sApplication", K8sApplicationArgs.builder()
///             .applicationName(name)
///             .clusterId(defaultK8sCluster.id())
///             .packageType("FatJar")
///             .packageUrl("http://edas-bj.oss-cn-beijing.aliyuncs.com/prod/demo/SPRING_CLOUD_PROVIDER.jar")
///             .jdk("Open JDK 8")
///             .replicas(2)
///             .readiness("{\"failureThreshold\": 3,\"initialDelaySeconds\": 5,\"successThreshold\": 1,\"timeoutSeconds\": 1,\"tcpSocket\":{\"port\":18081}}")
///             .liveness("{\"failureThreshold\": 3,\"initialDelaySeconds\": 5,\"successThreshold\": 1,\"timeoutSeconds\": 1,\"tcpSocket\":{\"port\":18081}}")
///             .applicationDescriotion(name)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf-example
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
///       name: ${name}
///       clusterId: ${defaultManagedKubernetes.id}
///       vswitchIds:
///         - ${defaultSwitch.id}
///       instanceTypes:
///         - ${defaultGetInstanceTypes.instanceTypes[0].id}
///       systemDiskCategory: cloud_efficiency
///       systemDiskSize: 40
///       desiredSize: 2
///   defaultK8sCluster:
///     type: alicloud:edas:K8sCluster
///     name: default
///     properties:
///       csClusterId: ${defaultNodePool.clusterId}
///   defaultK8sApplication:
///     type: alicloud:edas:K8sApplication
///     name: default
///     properties:
///       applicationName: ${name}
///       clusterId: ${defaultK8sCluster.id}
///       packageType: FatJar
///       packageUrl: http://edas-bj.oss-cn-beijing.aliyuncs.com/prod/demo/SPRING_CLOUD_PROVIDER.jar
///       jdk: Open JDK 8
///       replicas: 2
///       readiness: '{"failureThreshold": 3,"initialDelaySeconds": 5,"successThreshold": 1,"timeoutSeconds": 1,"tcpSocket":{"port":18081}}'
///       liveness: '{"failureThreshold": 3,"initialDelaySeconds": 5,"successThreshold": 1,"timeoutSeconds": 1,"tcpSocket":{"port":18081}}'
///       applicationDescriotion: ${name}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableResourceCreation: VSwitch
///   defaultGetImages:
///     fn::invoke:
///       function: alicloud:ecs:getImages
///       arguments:
///         nameRegex: ^ubuntu_18.*64
///         mostRecent: true
///         owners: system
///   defaultGetInstanceTypes:
///     fn::invoke:
///       function: alicloud:ecs:getInstanceTypes
///       arguments:
///         availabilityZone: ${default.zones[0].id}
///         cpuCoreCount: 4
///         memorySize: 8
///         kubernetesNodeRole: Worker
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// EDAS k8s application can be imported as below, e.g.
///
/// ```sh
/// $ pulumi import alicloud:edas/k8sApplication:K8sApplication new_k8s_application application_id
/// ```
class K8sApplication extends pulumi.CustomResource {
  /// The description of the application
  late final pulumi.Output<String?> applicationDescriotion;
  /// The name of the application you want to create. Must start with character,supports numbers, letters and dashes (-), supports up to 36 characters
  late final pulumi.Output<String> applicationName;
  /// The ID of the alicloud container service kubernetes cluster that you want to import to. You can call the ListCluster operation to query.
  late final pulumi.Output<String> clusterId;
  /// The set command, if set, will replace the startup command in the mirror when the mirror is started.
  late final pulumi.Output<String?> command;
  /// Used in combination with the command, the parameter of the command is a JsonArray string in the format: `[{"argument":"-c"},{"argument":"test"}]`. Among them, -c and test are two parameters that need to be set.
  late final pulumi.Output<List<String>?> commandArgs;
  /// EDAS-Container version that the deployed package depends on. Image does not support this parameter.
  late final pulumi.Output<String?> edasContainerVersion;
  /// Deployment environment variables, the format must conform to the JSON object array, such as: `{"name":"x","value":"y"},{"name":"x2","value":"y2"}`, If you want to cancel the configuration, you need to set an empty JSON array "" to indicate no configuration.
  late final pulumi.Output<Map<String, String>?> envs;
  /// Mirror address. When the package_type is set to 'Image', this parameter item is required.
  late final pulumi.Output<String?> imageUrl;
  /// Public network SLB ID. If not configured, EDAS will automatically purchase a new SLB for the user.
  /// It has been deprecated, and new resource 'alicloud_edas_k8s_slb_attachment' replaces it.
  late final pulumi.Output<String?> internetSlbId;
  /// The public network SLB front-end port, range 1~65535. It has been deprecated and new resource 'alicloud_edas_k8s_slb_attachment' replaces it.
  late final pulumi.Output<int?> internetSlbPort;
  /// The public network SLB protocol supports TCP, HTTP and HTTPS protocols. It has been deprecated, and new resource 'alicloud_edas_k8s_slb_attachment' replaces it.
  late final pulumi.Output<String?> internetSlbProtocol;
  /// The private SLB back-end port, is also the service port of the application, ranging from 1 to 65535.
  /// It has been deprecated, and new resource 'alicloud_edas_k8s_slb_attachment' replaces it.
  late final pulumi.Output<int?> internetTargetPort;
  /// The JDK version that the deployed package depends on. The optional parameter values are Open JDK 7 and Open JDK 8. Image does not support this parameter.
  late final pulumi.Output<String?> jdk;
  /// The CPU quota of the application instance during application operation. Unit: Number of millcores, set to 0 means unlimited, similar to request_cpu.
  late final pulumi.Output<int?> limitMCpu;
  /// The memory limit of the application instance during application operation, unit: M.
  late final pulumi.Output<int?> limitMem;
  /// Container survival status monitoring, format such as: `{"failureThreshold": 3,"initialDelaySeconds": 5,"successThreshold": 1,"timeoutSeconds": 1,"tcpSocket":{"host":"", "port":8080} }`.
  late final pulumi.Output<String?> liveness;
  /// The configuration of the host file mounted to the container. For example: `[{"type":"","nodePath":"/localfiles","mountPath":"/app/files"},{"type":"Directory","nodePath":"/mnt", "mountPath":"/app/storage"}]`. Among them, nodePath is the host path; mountPath is the path in the container; type is the mount type.
  late final pulumi.Output<String?> localVolume;
  /// The ID corresponding to the EDAS namespace, the non-default namespace must be filled in.
  late final pulumi.Output<String?> logicalRegionId;
  /// Mount configuration description, as a serialized JSON. For example: `[{"nasPath": "/k8s","mountPath": "/mnt"},{"nasPath": "/files","mountPath": "/app/files"}]`. Among them, nasPath refers to the file storage path; mountPath refers to the path mounted in the container.
  late final pulumi.Output<String?> mountDescs;
  /// The namespace of the K8s cluster, it will determine which K8s namespace your application is deployed in. The default is 'default'.
  late final pulumi.Output<String?> namespace;
  /// The ID of the mounted NAS must be in the same region as the cluster. It must have an available mount point creation quota, or its mount point must be on a switch in the VPC. If it is not filled in and the mountDescs field exists, a NAS will be automatically purchased and mounted on the switch in the VPC by default.
  late final pulumi.Output<String?> nasId;
  /// Application package type. Optional parameter values include: FatJar, WAR and Image.
  late final pulumi.Output<String?> packageType;
  /// The url of the package to deploy.Applications deployed through FatJar or WAR packages need to configure it.
  late final pulumi.Output<String?> packageUrl;
  /// The version number of the deployment package. WAR and FatJar types are required. Please customize its meaning.
  late final pulumi.Output<String> packageVersion;
  /// Execute script after startup
  late final pulumi.Output<String?> postStart;
  /// Execute script before stopping
  late final pulumi.Output<String?> preStop;
  /// Container service status check. If the check fails, the traffic passing through K8s Service will not be transferred to the container. The format is: `{"failureThreshold": 3,"initialDelaySeconds": 5,"successThreshold": 1,"timeoutSeconds": 1, "httpGet": {"path": "/consumer","port": 8080,"scheme": "HTTP","httpHeaders": [{"name": "test","value": "testvalue"} ]}}`.
  late final pulumi.Output<String?> readiness;
  /// Number of application instances.
  late final pulumi.Output<int?> replicas;
  /// When the application is created, the CPU quota of the application instance, unit: number of millcores, similar to request_cpu
  late final pulumi.Output<int?> requestsMCpu;
  /// When the application is created, the memory limit of the application instance, unit: M. When set to 0, it means unlimited.
  late final pulumi.Output<int?> requestsMem;
  /// The Tomcat version that the deployment package depends on. Applicable to Spring Cloud and Dubbo applications deployed through WAR packages. Image does not support this parameter.
  late final pulumi.Output<String?> webContainer;

  /// Creates a new [K8sApplication].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [K8sApplication]. {@macro pulumi_edas_k8s_application_k8s_application_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  K8sApplication(
    String name, {
    K8sApplicationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:edas/k8sApplication:K8sApplication',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applicationDescriotion = registerOutput<String?>('applicationDescriotion');
    this.applicationName = registerOutput<String>('applicationName');
    this.clusterId = registerOutput<String>('clusterId');
    this.command = registerOutput<String?>('command');
    this.commandArgs = registerOutput<List<String>?>('commandArgs');
    this.edasContainerVersion = registerOutput<String?>('edasContainerVersion');
    this.envs = registerOutput<Map<String, String>?>('envs');
    this.imageUrl = registerOutput<String?>('imageUrl');
    this.internetSlbId = registerOutput<String?>('internetSlbId');
    this.internetSlbPort = registerOutput<int?>('internetSlbPort');
    this.internetSlbProtocol = registerOutput<String?>('internetSlbProtocol');
    this.internetTargetPort = registerOutput<int?>('internetTargetPort');
    this.jdk = registerOutput<String?>('jdk');
    this.limitMCpu = registerOutput<int?>('limitMCpu');
    this.limitMem = registerOutput<int?>('limitMem');
    this.liveness = registerOutput<String?>('liveness');
    this.localVolume = registerOutput<String?>('localVolume');
    this.logicalRegionId = registerOutput<String?>('logicalRegionId');
    this.mountDescs = registerOutput<String?>('mountDescs');
    this.namespace = registerOutput<String?>('namespace');
    this.nasId = registerOutput<String?>('nasId');
    this.packageType = registerOutput<String?>('packageType');
    this.packageUrl = registerOutput<String?>('packageUrl');
    this.packageVersion = registerOutput<String>('packageVersion');
    this.postStart = registerOutput<String?>('postStart');
    this.preStop = registerOutput<String?>('preStop');
    this.readiness = registerOutput<String?>('readiness');
    this.replicas = registerOutput<int?>('replicas');
    this.requestsMCpu = registerOutput<int?>('requestsMCpu');
    this.requestsMem = registerOutput<int?>('requestsMem');
    this.webContainer = registerOutput<String?>('webContainer');
  }

  /// Gets an existing [K8sApplication] resource's state with the given [name] and [id].
  static K8sApplication get(
    String name,
    pulumi.Input<String> id, {
    K8sApplicationState? state,
  }) {
    return K8sApplication._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  K8sApplication._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:edas/k8sApplication:K8sApplication',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applicationDescriotion = registerOutput<String?>('applicationDescriotion');
    this.applicationName = registerOutput<String>('applicationName');
    this.clusterId = registerOutput<String>('clusterId');
    this.command = registerOutput<String?>('command');
    this.commandArgs = registerOutput<List<String>?>('commandArgs');
    this.edasContainerVersion = registerOutput<String?>('edasContainerVersion');
    this.envs = registerOutput<Map<String, String>?>('envs');
    this.imageUrl = registerOutput<String?>('imageUrl');
    this.internetSlbId = registerOutput<String?>('internetSlbId');
    this.internetSlbPort = registerOutput<int?>('internetSlbPort');
    this.internetSlbProtocol = registerOutput<String?>('internetSlbProtocol');
    this.internetTargetPort = registerOutput<int?>('internetTargetPort');
    this.jdk = registerOutput<String?>('jdk');
    this.limitMCpu = registerOutput<int?>('limitMCpu');
    this.limitMem = registerOutput<int?>('limitMem');
    this.liveness = registerOutput<String?>('liveness');
    this.localVolume = registerOutput<String?>('localVolume');
    this.logicalRegionId = registerOutput<String?>('logicalRegionId');
    this.mountDescs = registerOutput<String?>('mountDescs');
    this.namespace = registerOutput<String?>('namespace');
    this.nasId = registerOutput<String?>('nasId');
    this.packageType = registerOutput<String?>('packageType');
    this.packageUrl = registerOutput<String?>('packageUrl');
    this.packageVersion = registerOutput<String>('packageVersion');
    this.postStart = registerOutput<String?>('postStart');
    this.preStop = registerOutput<String?>('preStop');
    this.readiness = registerOutput<String?>('readiness');
    this.replicas = registerOutput<int?>('replicas');
    this.requestsMCpu = registerOutput<int?>('requestsMCpu');
    this.requestsMem = registerOutput<int?>('requestsMem');
    this.webContainer = registerOutput<String?>('webContainer');
  }
}
