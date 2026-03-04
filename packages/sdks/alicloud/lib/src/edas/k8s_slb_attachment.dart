import 'package:pulumi/pulumi.dart' as pulumi;
import 'k8s_slb_attachment_args.dart';
import 'k8s_slb_attachment_state.dart';

/// Binds SLBs to an EDAS k8s application.
///
/// For information about EDAS k8s slb attachment and how to use it, see [What is k8s slb attachment](https://www.alibabacloud.com/help/en/enterprise-distributed-application-service/latest/bindk8sslb).
///
/// &gt; **NOTE:** Available since v1.194.0.
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
/// const defaultK8sSlbAttachment = new alicloud.edas.K8sSlbAttachment("default", {
///     appId: defaultK8sApplication.id,
///     slbConfigs: [{
///         type: "internet",
///         scheduler: "rr",
///         portMappings: [{
///             loadbalancerProtocol: "TCP",
///             servicePort: {
///                 port: 80,
///                 protocol: "TCP",
///                 targetPort: 8080,
///             },
///         }],
///     }],
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
/// default_k8s_slb_attachment = alicloud.edas.K8sSlbAttachment("default",
///     app_id=default_k8s_application.id,
///     slb_configs=[{
///         "type": "internet",
///         "scheduler": "rr",
///         "port_mappings": [{
///             "loadbalancer_protocol": "TCP",
///             "service_port": {
///                 "port": 80,
///                 "protocol": "TCP",
///                 "target_port": 8080,
///             },
///         }],
///     }])
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
///     var defaultK8sSlbAttachment = new AliCloud.Edas.K8sSlbAttachment("default", new()
///     {
///         AppId = defaultK8sApplication.Id,
///         SlbConfigs = new[]
///         {
///             new AliCloud.Edas.Inputs.K8sSlbAttachmentSlbConfigArgs
///             {
///                 Type = "internet",
///                 Scheduler = "rr",
///                 PortMappings = new[]
///                 {
///                     new AliCloud.Edas.Inputs.K8sSlbAttachmentSlbConfigPortMappingArgs
///                     {
///                         LoadbalancerProtocol = "TCP",
///                         ServicePort = new AliCloud.Edas.Inputs.K8sSlbAttachmentSlbConfigPortMappingServicePortArgs
///                         {
///                             Port = 80,
///                             Protocol = "TCP",
///                             TargetPort = 8080,
///                         },
///                     },
///                 },
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
/// 		defaultK8sApplication, err := edas.NewK8sApplication(ctx, "default", &edas.K8sApplicationArgs{
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
/// 		_, err = edas.NewK8sSlbAttachment(ctx, "default", &edas.K8sSlbAttachmentArgs{
/// 			AppId: defaultK8sApplication.ID(),
/// 			SlbConfigs: edas.K8sSlbAttachmentSlbConfigArray{
/// 				&edas.K8sSlbAttachmentSlbConfigArgs{
/// 					Type:      pulumi.String("internet"),
/// 					Scheduler: pulumi.String("rr"),
/// 					PortMappings: edas.K8sSlbAttachmentSlbConfigPortMappingArray{
/// 						&edas.K8sSlbAttachmentSlbConfigPortMappingArgs{
/// 							LoadbalancerProtocol: pulumi.String("TCP"),
/// 							ServicePort: &edas.K8sSlbAttachmentSlbConfigPortMappingServicePortArgs{
/// 								Port:       pulumi.Int(80),
/// 								Protocol:   pulumi.String("TCP"),
/// 								TargetPort: pulumi.Int(8080),
/// 							},
/// 						},
/// 					},
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
/// import com.pulumi.alicloud.edas.K8sSlbAttachment;
/// import com.pulumi.alicloud.edas.K8sSlbAttachmentArgs;
/// import com.pulumi.alicloud.edas.inputs.K8sSlbAttachmentSlbConfigArgs;
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
///         var defaultK8sSlbAttachment = new K8sSlbAttachment("defaultK8sSlbAttachment", K8sSlbAttachmentArgs.builder()
///             .appId(defaultK8sApplication.id())
///             .slbConfigs(K8sSlbAttachmentSlbConfigArgs.builder()
///                 .type("internet")
///                 .scheduler("rr")
///                 .portMappings(K8sSlbAttachmentSlbConfigPortMappingArgs.builder()
///                     .loadbalancerProtocol("TCP")
///                     .servicePort(K8sSlbAttachmentSlbConfigPortMappingServicePortArgs.builder()
///                         .port(80)
///                         .protocol("TCP")
///                         .targetPort(8080)
///                         .build())
///                     .build())
///                 .build())
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
///   defaultK8sSlbAttachment:
///     type: alicloud:edas:K8sSlbAttachment
///     name: default
///     properties:
///       appId: ${defaultK8sApplication.id}
///       slbConfigs:
///         - type: internet
///           scheduler: rr
///           portMappings:
///             - loadbalancerProtocol: TCP
///               servicePort:
///                 port: 80
///                 protocol: TCP
///                 targetPort: 8080
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
/// Slb information of EDAS k8s application can be imported using the ID of an EDAS k8s application. e.g.
///
/// ```sh
/// $ pulumi import alicloud:edas/k8sSlbAttachment:K8sSlbAttachment example <EDAS k8s app id>
/// ```
class K8sSlbAttachment extends pulumi.CustomResource {
  /// The ID of the EDAS k8s application to which you want to bind SLB instances.
  late final pulumi.Output<String> appId;

  /// The configurations of SLB attachment, which is supported for multiple configurations. See `slb_configs` below.
  late final pulumi.Output<List<Map<String, dynamic>>> slbConfigs;

  /// Creates a new [K8sSlbAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [K8sSlbAttachment]. {@macro pulumi_edas_k8s_slb_attachment_k8s_slb_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  K8sSlbAttachment(
    String name, {
    K8sSlbAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:edas/k8sSlbAttachment:K8sSlbAttachment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    appId = registerOutput<String>('appId');
    slbConfigs = registerOutput<List<Map<String, dynamic>>>('slbConfigs');
  }

  /// Gets an existing [K8sSlbAttachment] resource's state with the given [name] and [id].
  static K8sSlbAttachment get(
    String name,
    pulumi.Input<String> id, {
    K8sSlbAttachmentState? state,
  }) {
    return K8sSlbAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  K8sSlbAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:edas/k8sSlbAttachment:K8sSlbAttachment',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    appId = registerOutput<String>('appId');
    slbConfigs = registerOutput<List<Map<String, dynamic>>>('slbConfigs');
  }
}
