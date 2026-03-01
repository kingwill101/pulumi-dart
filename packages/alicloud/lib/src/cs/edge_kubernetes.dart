import 'package:pulumi/pulumi.dart' as pulumi;
import 'edge_kubernetes_addon.dart';
import 'edge_kubernetes_args.dart';
import 'edge_kubernetes_certificate_authority.dart';
import 'edge_kubernetes_connections.dart';
import 'edge_kubernetes_log_config.dart';
import 'edge_kubernetes_runtime.dart';
import 'edge_kubernetes_worker_data_disk.dart';
import 'edge_kubernetes_worker_node.dart';

/// This resource will help you to manage a Edge Kubernetes Cluster in Alibaba Cloud Kubernetes Service, see [What is edge kubernetes](https://www.alibabacloud.com/help/en/ack/ack-managed-and-ack-dedicated/developer-reference/create-an-ack-edge-cluster).
///
/// > **NOTE:** Kubernetes cluster only supports VPC network and it can access internet while creating kubernetes cluster.
/// A Nat Gateway and configuring a SNAT for it can ensure one VPC network access internet. If there is no nat gateway in the
/// VPC, you can set `new_nat_gateway` to "true" to create one automatically.
///
/// > **NOTE:** Creating kubernetes cluster need to install several packages and it will cost about 15 minutes. Please be patient.
///
/// > **NOTE:** The provider supports to download kube config, client certificate, client key and cluster ca certificate
/// after creating cluster successfully, and you can put them into the specified location, like '~/.kube/config'.
///
/// > **NOTE:** The provider supports disabling internet load balancer for API Server by setting `false` to `slb_internet_enabled`.
///
/// > **NOTE:** If you want to manage Kubernetes, you can use Kubernetes Provider.
///
/// > **NOTE:** Available since v1.103.0.
///
/// > **NOTE:** From version 1.185.0+, support new fields `cluster_spec`, `runtime` and `load_balancer_spec`.
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
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf-example";
/// const _default = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const defaultGetInstanceTypes = _default.then(_default => alicloud.ecs.getInstanceTypes({
///     availabilityZone: _default.zones?.[0]?.id,
///     cpuCoreCount: 4,
///     memorySize: 8,
///     kubernetesNodeRole: "Master",
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
/// const defaultEdgeKubernetes = new alicloud.cs.EdgeKubernetes("default", {
///     namePrefix: name,
///     workerVswitchIds: [defaultSwitch.id],
///     workerInstanceTypes: [defaultGetInstanceTypes.then(defaultGetInstanceTypes => defaultGetInstanceTypes.instanceTypes?.[0]?.id)],
///     version: "1.26.3-aliyun.1",
///     workerNumber: 1,
///     password: "Test12345",
///     podCidr: "10.99.0.0/16",
///     serviceCidr: "172.16.0.0/16",
///     workerInstanceChargeType: "PostPaid",
///     newNatGateway: true,
///     nodeCidrMask: 24,
///     installCloudMonitor: true,
///     slbInternetEnabled: true,
///     isEnterpriseSecurityGroup: true,
///     skipSetCertificateAuthority: true,
///     workerDataDisks: [{
///         category: "cloud_ssd",
///         size: "200",
///         encrypted: "false",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-example"
/// default = alicloud.get_zones(available_resource_creation="VSwitch")
/// default_get_instance_types = alicloud.ecs.get_instance_types(availability_zone=default.zones[0].id,
///     cpu_core_count=4,
///     memory_size=8,
///     kubernetes_node_role="Master")
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="10.4.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vswitch_name=name,
///     cidr_block="10.4.0.0/24",
///     vpc_id=default_network.id,
///     zone_id=default.zones[0].id)
/// default_edge_kubernetes = alicloud.cs.EdgeKubernetes("default",
///     name_prefix=name,
///     worker_vswitch_ids=[default_switch.id],
///     worker_instance_types=[default_get_instance_types.instance_types[0].id],
///     version="1.26.3-aliyun.1",
///     worker_number=1,
///     password="Test12345",
///     pod_cidr="10.99.0.0/16",
///     service_cidr="172.16.0.0/16",
///     worker_instance_charge_type="PostPaid",
///     new_nat_gateway=True,
///     node_cidr_mask=24,
///     install_cloud_monitor=True,
///     slb_internet_enabled=True,
///     is_enterprise_security_group=True,
///     skip_set_certificate_authority=True,
///     worker_data_disks=[{
///         "category": "cloud_ssd",
///         "size": "200",
///         "encrypted": "false",
///     }])
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
///         KubernetesNodeRole = "Master",
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
///     var defaultEdgeKubernetes = new AliCloud.CS.EdgeKubernetes("default", new()
///     {
///         NamePrefix = name,
///         WorkerVswitchIds = new[]
///         {
///             defaultSwitch.Id,
///         },
///         WorkerInstanceTypes = new[]
///         {
///             defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.InstanceTypes[0]?.Id),
///         },
///         Version = "1.26.3-aliyun.1",
///         WorkerNumber = 1,
///         Password = "Test12345",
///         PodCidr = "10.99.0.0/16",
///         ServiceCidr = "172.16.0.0/16",
///         WorkerInstanceChargeType = "PostPaid",
///         NewNatGateway = true,
///         NodeCidrMask = 24,
///         InstallCloudMonitor = true,
///         SlbInternetEnabled = true,
///         IsEnterpriseSecurityGroup = true,
///         SkipSetCertificateAuthority = true,
///         WorkerDataDisks = new[]
///         {
///             new AliCloud.CS.Inputs.EdgeKubernetesWorkerDataDiskArgs
///             {
///                 Category = "cloud_ssd",
///                 Size = "200",
///                 Encrypted = "false",
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
/// 			KubernetesNodeRole: pulumi.StringRef("Master"),
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
/// 		_, err = cs.NewEdgeKubernetes(ctx, "default", &cs.EdgeKubernetesArgs{
/// 			NamePrefix: pulumi.String(name),
/// 			WorkerVswitchIds: pulumi.StringArray{
/// 				defaultSwitch.ID(),
/// 			},
/// 			WorkerInstanceTypes: pulumi.StringArray{
/// 				pulumi.String(defaultGetInstanceTypes.InstanceTypes[0].Id),
/// 			},
/// 			Version:                     pulumi.String("1.26.3-aliyun.1"),
/// 			WorkerNumber:                pulumi.Int(1),
/// 			Password:                    pulumi.String("Test12345"),
/// 			PodCidr:                     pulumi.String("10.99.0.0/16"),
/// 			ServiceCidr:                 pulumi.String("172.16.0.0/16"),
/// 			WorkerInstanceChargeType:    pulumi.String("PostPaid"),
/// 			NewNatGateway:               pulumi.Bool(true),
/// 			NodeCidrMask:                pulumi.Int(24),
/// 			InstallCloudMonitor:         pulumi.Bool(true),
/// 			SlbInternetEnabled:          pulumi.Bool(true),
/// 			IsEnterpriseSecurityGroup:   pulumi.Bool(true),
/// 			SkipSetCertificateAuthority: pulumi.Bool(true),
/// 			WorkerDataDisks: cs.EdgeKubernetesWorkerDataDiskArray{
/// 				&cs.EdgeKubernetesWorkerDataDiskArgs{
/// 					Category:  pulumi.String("cloud_ssd"),
/// 					Size:      pulumi.String("200"),
/// 					Encrypted: pulumi.String("false"),
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
/// import com.pulumi.alicloud.ecs.inputs.GetInstanceTypesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.cs.EdgeKubernetes;
/// import com.pulumi.alicloud.cs.EdgeKubernetesArgs;
/// import com.pulumi.alicloud.cs.inputs.EdgeKubernetesWorkerDataDiskArgs;
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
///         final var defaultGetInstanceTypes = EcsFunctions.getInstanceTypes(GetInstanceTypesArgs.builder()
///             .availabilityZone(default_.zones()[0].id())
///             .cpuCoreCount(4)
///             .memorySize(8)
///             .kubernetesNodeRole("Master")
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
///         var defaultEdgeKubernetes = new EdgeKubernetes("defaultEdgeKubernetes", EdgeKubernetesArgs.builder()
///             .namePrefix(name)
///             .workerVswitchIds(defaultSwitch.id())
///             .workerInstanceTypes(defaultGetInstanceTypes.instanceTypes()[0].id())
///             .version("1.26.3-aliyun.1")
///             .workerNumber(1)
///             .password("Test12345")
///             .podCidr("10.99.0.0/16")
///             .serviceCidr("172.16.0.0/16")
///             .workerInstanceChargeType("PostPaid")
///             .newNatGateway(true)
///             .nodeCidrMask(24)
///             .installCloudMonitor(true)
///             .slbInternetEnabled(true)
///             .isEnterpriseSecurityGroup(true)
///             .skipSetCertificateAuthority(true)
///             .workerDataDisks(EdgeKubernetesWorkerDataDiskArgs.builder()
///                 .category("cloud_ssd")
///                 .size("200")
///                 .encrypted("false")
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
///   defaultEdgeKubernetes:
///     type: alicloud:cs:EdgeKubernetes
///     name: default
///     properties:
///       namePrefix: ${name}
///       workerVswitchIds:
///         - ${defaultSwitch.id}
///       workerInstanceTypes:
///         - ${defaultGetInstanceTypes.instanceTypes[0].id}
///       version: 1.26.3-aliyun.1
///       workerNumber: 1
///       password: Test12345
///       podCidr: 10.99.0.0/16
///       serviceCidr: 172.16.0.0/16
///       workerInstanceChargeType: PostPaid
///       newNatGateway: true
///       nodeCidrMask: 24
///       installCloudMonitor: true
///       slbInternetEnabled: true
///       isEnterpriseSecurityGroup: true
///       skipSetCertificateAuthority: true
///       workerDataDisks:
///         - category: cloud_ssd
///           size: '200'
///           encrypted: 'false'
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
///         kubernetesNodeRole: Master
/// ```
///
///
/// You could create a professional kubernetes edge cluster now.
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf_example";
/// const _default = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const defaultGetInstanceTypes = _default.then(_default => alicloud.ecs.getInstanceTypes({
///     availabilityZone: _default.zones?.[0]?.id,
///     cpuCoreCount: 4,
///     memorySize: 8,
///     kubernetesNodeRole: "Master",
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
/// const defaultEdgeKubernetes = new alicloud.cs.EdgeKubernetes("default", {
///     namePrefix: name,
///     workerVswitchIds: [defaultSwitch.id],
///     workerInstanceTypes: [defaultGetInstanceTypes.then(defaultGetInstanceTypes => defaultGetInstanceTypes.instanceTypes?.[0]?.id)],
///     clusterSpec: "ack.pro.small",
///     workerNumber: 1,
///     password: "Test12345",
///     podCidr: "10.99.0.0/16",
///     serviceCidr: "172.16.0.0/16",
///     workerInstanceChargeType: "PostPaid",
///     newNatGateway: true,
///     nodeCidrMask: 24,
///     loadBalancerSpec: "slb.s2.small",
///     installCloudMonitor: true,
///     slbInternetEnabled: true,
///     isEnterpriseSecurityGroup: true,
///     skipSetCertificateAuthority: true,
///     workerDataDisks: [{
///         category: "cloud_ssd",
///         size: "200",
///         encrypted: "false",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf_example"
/// default = alicloud.get_zones(available_resource_creation="VSwitch")
/// default_get_instance_types = alicloud.ecs.get_instance_types(availability_zone=default.zones[0].id,
///     cpu_core_count=4,
///     memory_size=8,
///     kubernetes_node_role="Master")
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="10.4.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vswitch_name=name,
///     cidr_block="10.4.0.0/24",
///     vpc_id=default_network.id,
///     zone_id=default.zones[0].id)
/// default_edge_kubernetes = alicloud.cs.EdgeKubernetes("default",
///     name_prefix=name,
///     worker_vswitch_ids=[default_switch.id],
///     worker_instance_types=[default_get_instance_types.instance_types[0].id],
///     cluster_spec="ack.pro.small",
///     worker_number=1,
///     password="Test12345",
///     pod_cidr="10.99.0.0/16",
///     service_cidr="172.16.0.0/16",
///     worker_instance_charge_type="PostPaid",
///     new_nat_gateway=True,
///     node_cidr_mask=24,
///     load_balancer_spec="slb.s2.small",
///     install_cloud_monitor=True,
///     slb_internet_enabled=True,
///     is_enterprise_security_group=True,
///     skip_set_certificate_authority=True,
///     worker_data_disks=[{
///         "category": "cloud_ssd",
///         "size": "200",
///         "encrypted": "false",
///     }])
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
///     var name = config.Get("name") ?? "tf_example";
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
///         KubernetesNodeRole = "Master",
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
///     var defaultEdgeKubernetes = new AliCloud.CS.EdgeKubernetes("default", new()
///     {
///         NamePrefix = name,
///         WorkerVswitchIds = new[]
///         {
///             defaultSwitch.Id,
///         },
///         WorkerInstanceTypes = new[]
///         {
///             defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.InstanceTypes[0]?.Id),
///         },
///         ClusterSpec = "ack.pro.small",
///         WorkerNumber = 1,
///         Password = "Test12345",
///         PodCidr = "10.99.0.0/16",
///         ServiceCidr = "172.16.0.0/16",
///         WorkerInstanceChargeType = "PostPaid",
///         NewNatGateway = true,
///         NodeCidrMask = 24,
///         LoadBalancerSpec = "slb.s2.small",
///         InstallCloudMonitor = true,
///         SlbInternetEnabled = true,
///         IsEnterpriseSecurityGroup = true,
///         SkipSetCertificateAuthority = true,
///         WorkerDataDisks = new[]
///         {
///             new AliCloud.CS.Inputs.EdgeKubernetesWorkerDataDiskArgs
///             {
///                 Category = "cloud_ssd",
///                 Size = "200",
///                 Encrypted = "false",
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf_example"
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
/// 			KubernetesNodeRole: pulumi.StringRef("Master"),
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
/// 		_, err = cs.NewEdgeKubernetes(ctx, "default", &cs.EdgeKubernetesArgs{
/// 			NamePrefix: pulumi.String(name),
/// 			WorkerVswitchIds: pulumi.StringArray{
/// 				defaultSwitch.ID(),
/// 			},
/// 			WorkerInstanceTypes: pulumi.StringArray{
/// 				pulumi.String(defaultGetInstanceTypes.InstanceTypes[0].Id),
/// 			},
/// 			ClusterSpec:                 pulumi.String("ack.pro.small"),
/// 			WorkerNumber:                pulumi.Int(1),
/// 			Password:                    pulumi.String("Test12345"),
/// 			PodCidr:                     pulumi.String("10.99.0.0/16"),
/// 			ServiceCidr:                 pulumi.String("172.16.0.0/16"),
/// 			WorkerInstanceChargeType:    pulumi.String("PostPaid"),
/// 			NewNatGateway:               pulumi.Bool(true),
/// 			NodeCidrMask:                pulumi.Int(24),
/// 			LoadBalancerSpec:            pulumi.String("slb.s2.small"),
/// 			InstallCloudMonitor:         pulumi.Bool(true),
/// 			SlbInternetEnabled:          pulumi.Bool(true),
/// 			IsEnterpriseSecurityGroup:   pulumi.Bool(true),
/// 			SkipSetCertificateAuthority: pulumi.Bool(true),
/// 			WorkerDataDisks: cs.EdgeKubernetesWorkerDataDiskArray{
/// 				&cs.EdgeKubernetesWorkerDataDiskArgs{
/// 					Category:  pulumi.String("cloud_ssd"),
/// 					Size:      pulumi.String("200"),
/// 					Encrypted: pulumi.String("false"),
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
/// import com.pulumi.alicloud.ecs.inputs.GetInstanceTypesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.cs.EdgeKubernetes;
/// import com.pulumi.alicloud.cs.EdgeKubernetesArgs;
/// import com.pulumi.alicloud.cs.inputs.EdgeKubernetesWorkerDataDiskArgs;
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
///         final var name = config.get("name").orElse("tf_example");
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         final var defaultGetInstanceTypes = EcsFunctions.getInstanceTypes(GetInstanceTypesArgs.builder()
///             .availabilityZone(default_.zones()[0].id())
///             .cpuCoreCount(4)
///             .memorySize(8)
///             .kubernetesNodeRole("Master")
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
///         var defaultEdgeKubernetes = new EdgeKubernetes("defaultEdgeKubernetes", EdgeKubernetesArgs.builder()
///             .namePrefix(name)
///             .workerVswitchIds(defaultSwitch.id())
///             .workerInstanceTypes(defaultGetInstanceTypes.instanceTypes()[0].id())
///             .clusterSpec("ack.pro.small")
///             .workerNumber(1)
///             .password("Test12345")
///             .podCidr("10.99.0.0/16")
///             .serviceCidr("172.16.0.0/16")
///             .workerInstanceChargeType("PostPaid")
///             .newNatGateway(true)
///             .nodeCidrMask(24)
///             .loadBalancerSpec("slb.s2.small")
///             .installCloudMonitor(true)
///             .slbInternetEnabled(true)
///             .isEnterpriseSecurityGroup(true)
///             .skipSetCertificateAuthority(true)
///             .workerDataDisks(EdgeKubernetesWorkerDataDiskArgs.builder()
///                 .category("cloud_ssd")
///                 .size("200")
///                 .encrypted("false")
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
///     default: tf_example
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
///   defaultEdgeKubernetes:
///     type: alicloud:cs:EdgeKubernetes
///     name: default
///     properties:
///       namePrefix: ${name}
///       workerVswitchIds:
///         - ${defaultSwitch.id}
///       workerInstanceTypes:
///         - ${defaultGetInstanceTypes.instanceTypes[0].id}
///       clusterSpec: ack.pro.small
///       workerNumber: 1
///       password: Test12345
///       podCidr: 10.99.0.0/16
///       serviceCidr: 172.16.0.0/16
///       workerInstanceChargeType: PostPaid
///       newNatGateway: true
///       nodeCidrMask: 24
///       loadBalancerSpec: slb.s2.small
///       installCloudMonitor: true
///       slbInternetEnabled: true
///       isEnterpriseSecurityGroup: true
///       skipSetCertificateAuthority: true
///       workerDataDisks:
///         - category: cloud_ssd
///           size: '200'
///           encrypted: 'false'
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
///         kubernetesNodeRole: Master
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Kubernetes edge cluster can be imported using the id, e.g. Then complete the main.tf accords to the result of `pulumi preview`.
///
/// ```sh
/// $ pulumi import alicloud:cs/edgeKubernetes:EdgeKubernetes main cluster-id
/// ```
class EdgeKubernetes extends pulumi.CustomResource {
  /// The addon you want to install in cluster. See `addons` below.
  late final pulumi.Output<List<EdgeKubernetesAddon>?> addons;
  /// The ID of availability zone.
  late final pulumi.Output<String> availabilityZone;
  /// (Map, Deprecated from v1.248.0) Nested attribute containing certificate authority data for your cluster. Please use the attribute certificate_authority of new DataSource `alicloud.cs.getClusterCredential` to replace it.
  late final pulumi.Output<EdgeKubernetesCertificateAuthority> certificateAuthority;
  /// From version 1.248.0, new DataSource `alicloud.cs.getClusterCredential` is recommended to manage cluster's kubeconfig, you can also save the certificate_authority.client_cert attribute content of new DataSource `alicloud.cs.getClusterCredential` to an appropriate path(like ~/.kube/client-cert.pem) for replace it.
  late final pulumi.Output<String?> clientCert;
  /// From version 1.248.0, new DataSource `alicloud.cs.getClusterCredential` is recommended to manage cluster's kubeconfig, you can also save the certificate_authority.client_key attribute content of new DataSource `alicloud.cs.getClusterCredential` to an appropriate path(like ~/.kube/client-key.pem) for replace it.
  late final pulumi.Output<String?> clientKey;
  /// From version 1.248.0, new DataSource `alicloud.cs.getClusterCredential` is recommended to manage cluster's kubeconfig, you can also save the certificate_authority.cluster_cert attribute content of new DataSource `alicloud.cs.getClusterCredential` to an appropriate path(like ~/.kube/cluster-ca-cert.pem) for replace it.
  ///
  /// *Removed params*
  late final pulumi.Output<String?> clusterCaCert;
  /// The cluster specifications of kubernetes cluster,which can be empty. Valid values:
  /// * ack.standard : Standard edge clusters.
  /// * ack.pro.small : Professional edge clusters.
  late final pulumi.Output<String> clusterSpec;
  /// (Map) Map of kubernetes cluster connection information.
  late final pulumi.Output<EdgeKubernetesConnections> connections;
  /// Whether to enable cluster deletion protection.
  late final pulumi.Output<bool?> deletionProtection;
  /// Install cloud monitor agent on ECS. default: `true`.
  late final pulumi.Output<bool?> installCloudMonitor;
  /// Enable to create advanced security group. default: false. See [Advanced security group](https://www.alibabacloud.com/help/doc-detail/120621.htm).
  late final pulumi.Output<bool> isEnterpriseSecurityGroup;
  /// The keypair of ssh login cluster node, you have to create it first. You have to specify one of `password` `key_name` `kms_encrypted_password` fields.
  late final pulumi.Output<String?> keyName;
  /// The path of kube config, like ~/.kube/config. Please use the attribute output_file of new DataSource `alicloud.cs.getClusterCredential` to replace it.
  late final pulumi.Output<String?> kubeConfig;
  /// The cluster api server load balance instance specification. For more information on how to select a LB instance specification, see [SLB instance overview](https://help.aliyun.com/document_detail/85931.html).
  /// ->NOTE: If you want to use `Flannel` as CNI network plugin, You need to specific the `pod_cidr` field and addons with `flannel`.
  ///
  /// *Worker params*
  late final pulumi.Output<String> loadBalancerSpec;
  /// A list of one element containing information about the associated log store. See `log_config` below.
  late final pulumi.Output<EdgeKubernetesLogConfig?> logConfig;
  /// The kubernetes cluster's name. It is unique in one Alicloud account.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String?> namePrefix;
  /// The ID of nat gateway used to launch kubernetes cluster.
  late final pulumi.Output<String> natGatewayId;
  /// Whether to create a new nat gateway while creating kubernetes cluster. Default to true. Then openapi in Alibaba Cloud are not all on intranet, So turn this option on is a good choice.
  late final pulumi.Output<bool?> newNatGateway;
  /// The node cidr block to specific how many pods can run on single node. 24-28 is allowed. 24 means 2^(32-24)-1=255 and the node can run at most 255 pods. default: 24
  late final pulumi.Output<int?> nodeCidrMask;
  /// The password of ssh login cluster node. You have to specify one of `password`, `key_name` `kms_encrypted_password` fields.
  late final pulumi.Output<String?> password;
  /// [Flannel Specific] The CIDR block for the pod network when using Flannel.
  late final pulumi.Output<String?> podCidr;
  /// Proxy mode is option of kube-proxy. options: iptables|ipvs. default: ipvs.
  late final pulumi.Output<String?> proxyMode;
  /// RDS instance list, You can choose which RDS instances whitelist to add instances to.
  late final pulumi.Output<List<String>?> rdsInstances;
  /// The ID of the resource group,by default these cloud resources are automatically assigned to the default resource group.
  late final pulumi.Output<String> resourceGroupId;
  late final pulumi.Output<List<String>?> retainResources;
  /// The runtime of containers. If you select another container runtime, see [Comparison of Docker, containerd, and Sandboxed-Container](https://www.alibabacloud.com/help/doc-detail/160313.htm). See `runtime` below.
  late final pulumi.Output<EdgeKubernetesRuntime?> runtime;
  /// The ID of the security group to which the ECS instances in the cluster belong. If it is not specified, a new Security group will be built.
  late final pulumi.Output<String> securityGroupId;
  /// The CIDR block for the service network. It cannot be duplicated with the VPC CIDR and CIDR used by Kubernetes cluster in VPC, cannot be modified after creation.
  late final pulumi.Output<String?> serviceCidr;
  /// Configure whether to save certificate authority data for your cluster to attribute `certificate_authority`. For cluster security, recommended configuration as `true`. Will be removed with attribute certificate_authority removed.
  ///
  /// *Network params*
  late final pulumi.Output<bool?> skipSetCertificateAuthority;
  /// The public ip of load balancer.
  late final pulumi.Output<String> slbInternet;
  /// Whether to create internet load balancer for API Server. Default to true.
  late final pulumi.Output<bool?> slbInternetEnabled;
  /// The ID of private load balancer where the current cluster master node is located.
  late final pulumi.Output<String> slbIntranet;
  /// Default nil, A map of tags assigned to the kubernetes cluster and work node.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Windows instances support batch and PowerShell scripts. If your script file is larger than 1 KB, we recommend that you upload the script to Object Storage Service (OSS) and pull it through the internal endpoint of your OSS bucket.
  late final pulumi.Output<String?> userData;
  /// Desired Kubernetes version. If you do not specify a value, the latest available version at resource creation is used and no upgrades will occur except you set a higher version number. The value must be configured and increased to upgrade the version when desired. Downgrades are not supported by ACK.
  late final pulumi.Output<String> version;
  /// The ID of VPC where the current cluster is located.
  late final pulumi.Output<String> vpcId;
  /// The data disk configurations of worker nodes, such as the disk type and disk size. See `worker_data_disks` below.
  late final pulumi.Output<List<EdgeKubernetesWorkerDataDisk>?> workerDataDisks;
  /// The system disk category of worker node. Its valid value are `cloud_efficiency`, `cloud_ssd` and `cloud_essd` and . Default to `cloud_efficiency`.
  late final pulumi.Output<String?> workerDiskCategory;
  /// Worker node system disk performance level, when `worker_disk_category` values `cloud_essd`, the optional values are `PL0`, `PL1`, `PL2` or `PL3`, but the specific performance level is related to the disk capacity. For more information, see [Enhanced SSDs](https://www.alibabacloud.com/help/doc-detail/122389.htm). Default is `PL1`.
  late final pulumi.Output<String?> workerDiskPerformanceLevel;
  /// The system disk size of worker node. Its valid value range [20~32768] in GB. Default to 40.
  late final pulumi.Output<int?> workerDiskSize;
  /// Worker node system disk auto snapshot policy.
  ///
  /// *Computed params*
  ///
  /// You can set some file paths to save kube_config information, but this way is cumbersome. Since version 1.105.0, we've written it to tf state file. About its use，see export attribute certificate_authority. From version 1.187.0+, new DataSource `alicloud.cs.getClusterCredential` is recommended to manage cluster's kube_config.
  late final pulumi.Output<String?> workerDiskSnapshotPolicyId;
  /// Worker payment type, its valid value is `PostPaid`. Defaults to `PostPaid`. More charge details in [ACK@edge charge](https://help.aliyun.com/document_detail/178718.html).
  late final pulumi.Output<String?> workerInstanceChargeType;
  /// The instance types of worker node, you can set multiple types to avoid NoStock of a certain type.
  late final pulumi.Output<List<String>> workerInstanceTypes;
  /// List of cluster worker nodes.
  late final pulumi.Output<List<EdgeKubernetesWorkerNode>> workerNodes;
  /// The cloud worker node number of the edge kubernetes cluster. Default to 1. It is limited up to 50 and if you want to enlarge it, please apply white list or contact with us.
  late final pulumi.Output<int> workerNumber;
  /// The RamRole Name attached to worker node.
  late final pulumi.Output<String> workerRamRoleName;
  /// The vswitches used by workers.
  late final pulumi.Output<List<String>> workerVswitchIds;

  /// Creates a new [EdgeKubernetes].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EdgeKubernetes]. {@macro pulumi_cs_edge_kubernetes_edge_kubernetes_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EdgeKubernetes(
    String name, {
    EdgeKubernetesArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cs/edgeKubernetes:EdgeKubernetes',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.addons = registerOutput<List<EdgeKubernetesAddon>?>('addons');
    this.availabilityZone = registerOutput<String>('availabilityZone');
    this.certificateAuthority = registerOutput<EdgeKubernetesCertificateAuthority>('certificateAuthority');
    this.clientCert = registerOutput<String?>('clientCert');
    this.clientKey = registerOutput<String?>('clientKey');
    this.clusterCaCert = registerOutput<String?>('clusterCaCert');
    this.clusterSpec = registerOutput<String>('clusterSpec');
    this.connections = registerOutput<EdgeKubernetesConnections>('connections');
    this.deletionProtection = registerOutput<bool?>('deletionProtection');
    this.installCloudMonitor = registerOutput<bool?>('installCloudMonitor');
    this.isEnterpriseSecurityGroup = registerOutput<bool>('isEnterpriseSecurityGroup');
    this.keyName = registerOutput<String?>('keyName');
    this.kubeConfig = registerOutput<String?>('kubeConfig');
    this.loadBalancerSpec = registerOutput<String>('loadBalancerSpec');
    this.logConfig = registerOutput<EdgeKubernetesLogConfig?>('logConfig');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String?>('namePrefix');
    this.natGatewayId = registerOutput<String>('natGatewayId');
    this.newNatGateway = registerOutput<bool?>('newNatGateway');
    this.nodeCidrMask = registerOutput<int?>('nodeCidrMask');
    this.password = registerOutput<String?>('password');
    this.podCidr = registerOutput<String?>('podCidr');
    this.proxyMode = registerOutput<String?>('proxyMode');
    this.rdsInstances = registerOutput<List<String>?>('rdsInstances');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.retainResources = registerOutput<List<String>?>('retainResources');
    this.runtime = registerOutput<EdgeKubernetesRuntime?>('runtime');
    this.securityGroupId = registerOutput<String>('securityGroupId');
    this.serviceCidr = registerOutput<String?>('serviceCidr');
    this.skipSetCertificateAuthority = registerOutput<bool?>('skipSetCertificateAuthority');
    this.slbInternet = registerOutput<String>('slbInternet');
    this.slbInternetEnabled = registerOutput<bool?>('slbInternetEnabled');
    this.slbIntranet = registerOutput<String>('slbIntranet');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.userData = registerOutput<String?>('userData');
    this.version = registerOutput<String>('version');
    this.vpcId = registerOutput<String>('vpcId');
    this.workerDataDisks = registerOutput<List<EdgeKubernetesWorkerDataDisk>?>('workerDataDisks');
    this.workerDiskCategory = registerOutput<String?>('workerDiskCategory');
    this.workerDiskPerformanceLevel = registerOutput<String?>('workerDiskPerformanceLevel');
    this.workerDiskSize = registerOutput<int?>('workerDiskSize');
    this.workerDiskSnapshotPolicyId = registerOutput<String?>('workerDiskSnapshotPolicyId');
    this.workerInstanceChargeType = registerOutput<String?>('workerInstanceChargeType');
    this.workerInstanceTypes = registerOutput<List<String>>('workerInstanceTypes');
    this.workerNodes = registerOutput<List<EdgeKubernetesWorkerNode>>('workerNodes');
    this.workerNumber = registerOutput<int>('workerNumber');
    this.workerRamRoleName = registerOutput<String>('workerRamRoleName');
    this.workerVswitchIds = registerOutput<List<String>>('workerVswitchIds');
  }
}
