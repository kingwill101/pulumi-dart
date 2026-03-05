import 'package:pulumi/pulumi.dart' as pulumi;
import 'master_slave_server_group_args.dart';
import 'master_slave_server_group_state.dart';

/// A master slave server group contains two ECS instances. The master slave server group can help you to define multiple listening dimension.
///
/// &gt; **NOTE:** One ECS instance can be added into multiple master slave server groups.
///
/// &gt; **NOTE:** One master slave server group can only add two ECS instances, which are master server and slave server.
///
/// &gt; **NOTE:** One master slave server group can be attached with tcp/udp listeners in one load balancer.
///
/// &gt; **NOTE:** One Classic and Internet load balancer, its master slave server group can add Classic and VPC ECS instances.
///
/// &gt; **NOTE:** One Classic and Intranet load balancer, its master slave server group can only add Classic ECS instances.
///
/// &gt; **NOTE:** One VPC load balancer, its master slave server group can only add the same VPC ECS instances.
///
/// &gt; **NOTE:** Available since v1.54.0+
///
/// ## Example Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const msServerGroup = alicloud.getZones({
///     availableDiskCategory: "cloud_efficiency",
///     availableResourceCreation: "VSwitch",
/// });
/// const msServerGroupGetInstanceTypes = msServerGroup.then(msServerGroup => alicloud.ecs.getInstanceTypes({
///     availabilityZone: msServerGroup.zones?.[0]?.id,
///     cpuCoreCount: 2,
///     memorySize: 8,
///     instanceTypeFamily: "ecs.g6",
/// }));
/// const image = alicloud.ecs.getImages({
///     nameRegex: "^ubuntu_18.*64",
///     mostRecent: true,
///     owners: "system",
/// });
/// const config = new pulumi.Config();
/// const slbMasterSlaveServerGroup = config.get("slbMasterSlaveServerGroup") || "forSlbMasterSlaveServerGroup";
/// const main = new alicloud.vpc.Network("main", {
///     vpcName: slbMasterSlaveServerGroup,
///     cidrBlock: "172.16.0.0/16",
/// });
/// const mainSwitch = new alicloud.vpc.Switch("main", {
///     vpcId: main.id,
///     cidrBlock: "172.16.0.0/16",
///     zoneId: msServerGroup.then(msServerGroup => msServerGroup.zones?.[0]?.id),
///     vswitchName: slbMasterSlaveServerGroup,
/// });
/// const group = new alicloud.ecs.SecurityGroup("group", {
///     securityGroupName: slbMasterSlaveServerGroup,
///     vpcId: main.id,
/// });
/// const msServerGroupInstance: alicloud.ecs.Instance[] = [];
/// for (const range = {value: 0}; range.value < 2; range.value++) {
///     msServerGroupInstance.push(new alicloud.ecs.Instance(`ms_server_group-${range.value}`, {
///         imageId: image.then(image => image.images?.[0]?.id),
///         instanceType: msServerGroupGetInstanceTypes.then(msServerGroupGetInstanceTypes => msServerGroupGetInstanceTypes.instanceTypes?.[0]?.id),
///         instanceName: slbMasterSlaveServerGroup,
///         securityGroups: [group.id],
///         internetChargeType: "PayByTraffic",
///         internetMaxBandwidthOut: 10,
///         availabilityZone: msServerGroup.then(msServerGroup => msServerGroup.zones?.[0]?.id),
///         instanceChargeType: "PostPaid",
///         systemDiskCategory: "cloud_efficiency",
///         vswitchId: mainSwitch.id,
///     }));
/// }
/// const msServerGroupApplicationLoadBalancer = new alicloud.slb.ApplicationLoadBalancer("ms_server_group", {
///     loadBalancerName: slbMasterSlaveServerGroup,
///     vswitchId: mainSwitch.id,
///     loadBalancerSpec: "slb.s2.small",
/// });
/// const msServerGroupEcsNetworkInterface = new alicloud.ecs.EcsNetworkInterface("ms_server_group", {
///     networkInterfaceName: slbMasterSlaveServerGroup,
///     vswitchId: mainSwitch.id,
///     securityGroupIds: [group.id],
/// });
/// const msServerGroupEcsNetworkInterfaceAttachment = new alicloud.ecs.EcsNetworkInterfaceAttachment("ms_server_group", {
///     instanceId: msServerGroupInstance[0].id,
///     networkInterfaceId: msServerGroupEcsNetworkInterface.id,
/// });
/// const groupMasterSlaveServerGroup = new alicloud.slb.MasterSlaveServerGroup("group", {
///     loadBalancerId: msServerGroupApplicationLoadBalancer.id,
///     name: slbMasterSlaveServerGroup,
///     servers: [
///         {
///             serverId: msServerGroupInstance[0].id,
///             port: 100,
///             weight: 100,
///             serverType: "Master",
///         },
///         {
///             serverId: msServerGroupInstance[1].id,
///             port: 100,
///             weight: 100,
///             serverType: "Slave",
///         },
///     ],
/// });
/// const tcp = new alicloud.slb.Listener("tcp", {
///     loadBalancerId: msServerGroupApplicationLoadBalancer.id,
///     masterSlaveServerGroupId: groupMasterSlaveServerGroup.id,
///     frontendPort: 22,
///     protocol: "tcp",
///     bandwidth: 10,
///     healthCheckType: "tcp",
///     persistenceTimeout: 3600,
///     healthyThreshold: 8,
///     unhealthyThreshold: 8,
///     healthCheckTimeout: 8,
///     healthCheckInterval: 5,
///     healthCheckHttpCode: "http_2xx",
///     healthCheckConnectPort: 20,
///     healthCheckUri: "/console",
///     establishedTimeout: 600,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ms_server_group = alicloud.get_zones(available_disk_category="cloud_efficiency",
///     available_resource_creation="VSwitch")
/// ms_server_group_get_instance_types = alicloud.ecs.get_instance_types(availability_zone=ms_server_group.zones[0].id,
///     cpu_core_count=2,
///     memory_size=8,
///     instance_type_family="ecs.g6")
/// image = alicloud.ecs.get_images(name_regex="^ubuntu_18.*64",
///     most_recent=True,
///     owners="system")
/// config = pulumi.Config()
/// slb_master_slave_server_group = config.get("slbMasterSlaveServerGroup")
/// if slb_master_slave_server_group is None:
///     slb_master_slave_server_group = "forSlbMasterSlaveServerGroup"
/// main = alicloud.vpc.Network("main",
///     vpc_name=slb_master_slave_server_group,
///     cidr_block="172.16.0.0/16")
/// main_switch = alicloud.vpc.Switch("main",
///     vpc_id=main.id,
///     cidr_block="172.16.0.0/16",
///     zone_id=ms_server_group.zones[0].id,
///     vswitch_name=slb_master_slave_server_group)
/// group = alicloud.ecs.SecurityGroup("group",
///     security_group_name=slb_master_slave_server_group,
///     vpc_id=main.id)
/// ms_server_group_instance = []
/// for range in [{"value": i} for i in range(0, 2)]:
///     ms_server_group_instance.append(alicloud.ecs.Instance(f"ms_server_group-{range['value']}",
///         image_id=image.images[0].id,
///         instance_type=ms_server_group_get_instance_types.instance_types[0].id,
///         instance_name=slb_master_slave_server_group,
///         security_groups=[group.id],
///         internet_charge_type="PayByTraffic",
///         internet_max_bandwidth_out=10,
///         availability_zone=ms_server_group.zones[0].id,
///         instance_charge_type="PostPaid",
///         system_disk_category="cloud_efficiency",
///         vswitch_id=main_switch.id))
/// ms_server_group_application_load_balancer = alicloud.slb.ApplicationLoadBalancer("ms_server_group",
///     load_balancer_name=slb_master_slave_server_group,
///     vswitch_id=main_switch.id,
///     load_balancer_spec="slb.s2.small")
/// ms_server_group_ecs_network_interface = alicloud.ecs.EcsNetworkInterface("ms_server_group",
///     network_interface_name=slb_master_slave_server_group,
///     vswitch_id=main_switch.id,
///     security_group_ids=[group.id])
/// ms_server_group_ecs_network_interface_attachment = alicloud.ecs.EcsNetworkInterfaceAttachment("ms_server_group",
///     instance_id=ms_server_group_instance[0].id,
///     network_interface_id=ms_server_group_ecs_network_interface.id)
/// group_master_slave_server_group = alicloud.slb.MasterSlaveServerGroup("group",
///     load_balancer_id=ms_server_group_application_load_balancer.id,
///     name=slb_master_slave_server_group,
///     servers=[
///         {
///             "server_id": ms_server_group_instance[0].id,
///             "port": 100,
///             "weight": 100,
///             "server_type": "Master",
///         },
///         {
///             "server_id": ms_server_group_instance[1].id,
///             "port": 100,
///             "weight": 100,
///             "server_type": "Slave",
///         },
///     ])
/// tcp = alicloud.slb.Listener("tcp",
///     load_balancer_id=ms_server_group_application_load_balancer.id,
///     master_slave_server_group_id=group_master_slave_server_group.id,
///     frontend_port=22,
///     protocol="tcp",
///     bandwidth=10,
///     health_check_type="tcp",
///     persistence_timeout=3600,
///     healthy_threshold=8,
///     unhealthy_threshold=8,
///     health_check_timeout=8,
///     health_check_interval=5,
///     health_check_http_code="http_2xx",
///     health_check_connect_port=20,
///     health_check_uri="/console",
///     established_timeout=600)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var msServerGroup = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableDiskCategory = "cloud_efficiency",
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var msServerGroupGetInstanceTypes = AliCloud.Ecs.GetInstanceTypes.Invoke(new()
///     {
///         AvailabilityZone = msServerGroup.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///         CpuCoreCount = 2,
///         MemorySize = 8,
///         InstanceTypeFamily = "ecs.g6",
///     });
///
///     var image = AliCloud.Ecs.GetImages.Invoke(new()
///     {
///         NameRegex = "^ubuntu_18.*64",
///         MostRecent = true,
///         Owners = "system",
///     });
///
///     var config = new Config();
///     var slbMasterSlaveServerGroup = config.Get("slbMasterSlaveServerGroup") ?? "forSlbMasterSlaveServerGroup";
///     var main = new AliCloud.Vpc.Network("main", new()
///     {
///         VpcName = slbMasterSlaveServerGroup,
///         CidrBlock = "172.16.0.0/16",
///     });
///
///     var mainSwitch = new AliCloud.Vpc.Switch("main", new()
///     {
///         VpcId = main.Id,
///         CidrBlock = "172.16.0.0/16",
///         ZoneId = msServerGroup.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///         VswitchName = slbMasterSlaveServerGroup,
///     });
///
///     var @group = new AliCloud.Ecs.SecurityGroup("group", new()
///     {
///         SecurityGroupName = slbMasterSlaveServerGroup,
///         VpcId = main.Id,
///     });
///
///     var msServerGroupInstance = new List<AliCloud.Ecs.Instance>();
///     for (var rangeIndex = 0; rangeIndex < 2; rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         msServerGroupInstance.Add(new AliCloud.Ecs.Instance($"ms_server_group-{range.Value}", new()
///         {
///             ImageId = image.Apply(getImagesResult => getImagesResult.Images[0]?.Id),
///             InstanceType = msServerGroupGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.InstanceTypes[0]?.Id),
///             InstanceName = slbMasterSlaveServerGroup,
///             SecurityGroups = new[]
///             {
///                 @group.Id,
///             },
///             InternetChargeType = "PayByTraffic",
///             InternetMaxBandwidthOut = 10,
///             AvailabilityZone = msServerGroup.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///             InstanceChargeType = "PostPaid",
///             SystemDiskCategory = "cloud_efficiency",
///             VswitchId = mainSwitch.Id,
///         }));
///     }
///     var msServerGroupApplicationLoadBalancer = new AliCloud.Slb.ApplicationLoadBalancer("ms_server_group", new()
///     {
///         LoadBalancerName = slbMasterSlaveServerGroup,
///         VswitchId = mainSwitch.Id,
///         LoadBalancerSpec = "slb.s2.small",
///     });
///
///     var msServerGroupEcsNetworkInterface = new AliCloud.Ecs.EcsNetworkInterface("ms_server_group", new()
///     {
///         NetworkInterfaceName = slbMasterSlaveServerGroup,
///         VswitchId = mainSwitch.Id,
///         SecurityGroupIds = new[]
///         {
///             @group.Id,
///         },
///     });
///
///     var msServerGroupEcsNetworkInterfaceAttachment = new AliCloud.Ecs.EcsNetworkInterfaceAttachment("ms_server_group", new()
///     {
///         InstanceId = msServerGroupInstance[0].Id,
///         NetworkInterfaceId = msServerGroupEcsNetworkInterface.Id,
///     });
///
///     var groupMasterSlaveServerGroup = new AliCloud.Slb.MasterSlaveServerGroup("group", new()
///     {
///         LoadBalancerId = msServerGroupApplicationLoadBalancer.Id,
///         Name = slbMasterSlaveServerGroup,
///         Servers = new[]
///         {
///             new AliCloud.Slb.Inputs.MasterSlaveServerGroupServerArgs
///             {
///                 ServerId = msServerGroupInstance[0].Id,
///                 Port = 100,
///                 Weight = 100,
///                 ServerType = "Master",
///             },
///             new AliCloud.Slb.Inputs.MasterSlaveServerGroupServerArgs
///             {
///                 ServerId = msServerGroupInstance[1].Id,
///                 Port = 100,
///                 Weight = 100,
///                 ServerType = "Slave",
///             },
///         },
///     });
///
///     var tcp = new AliCloud.Slb.Listener("tcp", new()
///     {
///         LoadBalancerId = msServerGroupApplicationLoadBalancer.Id,
///         MasterSlaveServerGroupId = groupMasterSlaveServerGroup.Id,
///         FrontendPort = 22,
///         Protocol = "tcp",
///         Bandwidth = 10,
///         HealthCheckType = "tcp",
///         PersistenceTimeout = 3600,
///         HealthyThreshold = 8,
///         UnhealthyThreshold = 8,
///         HealthCheckTimeout = 8,
///         HealthCheckInterval = 5,
///         HealthCheckHttpCode = "http_2xx",
///         HealthCheckConnectPort = 20,
///         HealthCheckUri = "/console",
///         EstablishedTimeout = 600,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/slb"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		msServerGroup, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableDiskCategory:     pulumi.StringRef("cloud_efficiency"),
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		msServerGroupGetInstanceTypes, err := ecs.GetInstanceTypes(ctx, &ecs.GetInstanceTypesArgs{
/// 			AvailabilityZone:   pulumi.StringRef(msServerGroup.Zones[0].Id),
/// 			CpuCoreCount:       pulumi.IntRef(2),
/// 			MemorySize:         pulumi.Float64Ref(8),
/// 			InstanceTypeFamily: pulumi.StringRef("ecs.g6"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		image, err := ecs.GetImages(ctx, &ecs.GetImagesArgs{
/// 			NameRegex:  pulumi.StringRef("^ubuntu_18.*64"),
/// 			MostRecent: pulumi.BoolRef(true),
/// 			Owners:     pulumi.StringRef("system"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cfg := config.New(ctx, "")
/// 		slbMasterSlaveServerGroup := "forSlbMasterSlaveServerGroup"
/// 		if param := cfg.Get("slbMasterSlaveServerGroup"); param != "" {
/// 			slbMasterSlaveServerGroup = param
/// 		}
/// 		main, err := vpc.NewNetwork(ctx, "main", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(slbMasterSlaveServerGroup),
/// 			CidrBlock: pulumi.String("172.16.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		mainSwitch, err := vpc.NewSwitch(ctx, "main", &vpc.SwitchArgs{
/// 			VpcId:       main.ID(),
/// 			CidrBlock:   pulumi.String("172.16.0.0/16"),
/// 			ZoneId:      pulumi.String(msServerGroup.Zones[0].Id),
/// 			VswitchName: pulumi.String(slbMasterSlaveServerGroup),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		group, err := ecs.NewSecurityGroup(ctx, "group", &ecs.SecurityGroupArgs{
/// 			SecurityGroupName: pulumi.String(slbMasterSlaveServerGroup),
/// 			VpcId:             main.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		var msServerGroupInstance []*ecs.Instance
/// 		for index := 0; index < 2; index++ {
/// 			key0 := index
/// 			_ := index
/// 			__res, err := ecs.NewInstance(ctx, fmt.Sprintf("ms_server_group-%v", key0), &ecs.InstanceArgs{
/// 				ImageId:      pulumi.String(image.Images[0].Id),
/// 				InstanceType: pulumi.String(msServerGroupGetInstanceTypes.InstanceTypes[0].Id),
/// 				InstanceName: pulumi.String(slbMasterSlaveServerGroup),
/// 				SecurityGroups: pulumi.StringArray{
/// 					group.ID(),
/// 				},
/// 				InternetChargeType:      pulumi.String("PayByTraffic"),
/// 				InternetMaxBandwidthOut: pulumi.Int(10),
/// 				AvailabilityZone:        pulumi.String(msServerGroup.Zones[0].Id),
/// 				InstanceChargeType:      pulumi.String("PostPaid"),
/// 				SystemDiskCategory:      pulumi.String("cloud_efficiency"),
/// 				VswitchId:               mainSwitch.ID(),
/// 			})
/// 			if err != nil {
/// 				return err
/// 			}
/// 			msServerGroupInstance = append(msServerGroupInstance, __res)
/// 		}
/// 		msServerGroupApplicationLoadBalancer, err := slb.NewApplicationLoadBalancer(ctx, "ms_server_group", &slb.ApplicationLoadBalancerArgs{
/// 			LoadBalancerName: pulumi.String(slbMasterSlaveServerGroup),
/// 			VswitchId:        mainSwitch.ID(),
/// 			LoadBalancerSpec: pulumi.String("slb.s2.small"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		msServerGroupEcsNetworkInterface, err := ecs.NewEcsNetworkInterface(ctx, "ms_server_group", &ecs.EcsNetworkInterfaceArgs{
/// 			NetworkInterfaceName: pulumi.String(slbMasterSlaveServerGroup),
/// 			VswitchId:            mainSwitch.ID(),
/// 			SecurityGroupIds: pulumi.StringArray{
/// 				group.ID(),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ecs.NewEcsNetworkInterfaceAttachment(ctx, "ms_server_group", &ecs.EcsNetworkInterfaceAttachmentArgs{
/// 			InstanceId:         msServerGroupInstance[0].ID(),
/// 			NetworkInterfaceId: msServerGroupEcsNetworkInterface.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		groupMasterSlaveServerGroup, err := slb.NewMasterSlaveServerGroup(ctx, "group", &slb.MasterSlaveServerGroupArgs{
/// 			LoadBalancerId: msServerGroupApplicationLoadBalancer.ID(),
/// 			Name:           pulumi.String(slbMasterSlaveServerGroup),
/// 			Servers: slb.MasterSlaveServerGroupServerArray{
/// 				&slb.MasterSlaveServerGroupServerArgs{
/// 					ServerId:   msServerGroupInstance[0].ID(),
/// 					Port:       pulumi.Int(100),
/// 					Weight:     pulumi.Int(100),
/// 					ServerType: pulumi.String("Master"),
/// 				},
/// 				&slb.MasterSlaveServerGroupServerArgs{
/// 					ServerId:   msServerGroupInstance[1].ID(),
/// 					Port:       pulumi.Int(100),
/// 					Weight:     pulumi.Int(100),
/// 					ServerType: pulumi.String("Slave"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = slb.NewListener(ctx, "tcp", &slb.ListenerArgs{
/// 			LoadBalancerId:           msServerGroupApplicationLoadBalancer.ID(),
/// 			MasterSlaveServerGroupId: groupMasterSlaveServerGroup.ID(),
/// 			FrontendPort:             pulumi.Int(22),
/// 			Protocol:                 pulumi.String("tcp"),
/// 			Bandwidth:                pulumi.Int(10),
/// 			HealthCheckType:          pulumi.String("tcp"),
/// 			PersistenceTimeout:       pulumi.Int(3600),
/// 			HealthyThreshold:         pulumi.Int(8),
/// 			UnhealthyThreshold:       pulumi.Int(8),
/// 			HealthCheckTimeout:       pulumi.Int(8),
/// 			HealthCheckInterval:      pulumi.Int(5),
/// 			HealthCheckHttpCode:      pulumi.String("http_2xx"),
/// 			HealthCheckConnectPort:   pulumi.Int(20),
/// 			HealthCheckUri:           pulumi.String("/console"),
/// 			EstablishedTimeout:       pulumi.Int(600),
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
/// import com.pulumi.alicloud.ecs.inputs.GetImagesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.ecs.Instance;
/// import com.pulumi.alicloud.ecs.InstanceArgs;
/// import com.pulumi.alicloud.slb.ApplicationLoadBalancer;
/// import com.pulumi.alicloud.slb.ApplicationLoadBalancerArgs;
/// import com.pulumi.alicloud.ecs.EcsNetworkInterface;
/// import com.pulumi.alicloud.ecs.EcsNetworkInterfaceArgs;
/// import com.pulumi.alicloud.ecs.EcsNetworkInterfaceAttachment;
/// import com.pulumi.alicloud.ecs.EcsNetworkInterfaceAttachmentArgs;
/// import com.pulumi.alicloud.slb.MasterSlaveServerGroup;
/// import com.pulumi.alicloud.slb.MasterSlaveServerGroupArgs;
/// import com.pulumi.alicloud.slb.inputs.MasterSlaveServerGroupServerArgs;
/// import com.pulumi.alicloud.slb.Listener;
/// import com.pulumi.alicloud.slb.ListenerArgs;
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
///         final var msServerGroup = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableDiskCategory("cloud_efficiency")
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         final var msServerGroupGetInstanceTypes = EcsFunctions.getInstanceTypes(GetInstanceTypesArgs.builder()
///             .availabilityZone(msServerGroup.zones()[0].id())
///             .cpuCoreCount(2)
///             .memorySize(8)
///             .instanceTypeFamily("ecs.g6")
///             .build());
///
///         final var image = EcsFunctions.getImages(GetImagesArgs.builder()
///             .nameRegex("^ubuntu_18.*64")
///             .mostRecent(true)
///             .owners("system")
///             .build());
///
///         final var slbMasterSlaveServerGroup = config.get("slbMasterSlaveServerGroup").orElse("forSlbMasterSlaveServerGroup");
///         var main = new Network("main", NetworkArgs.builder()
///             .vpcName(slbMasterSlaveServerGroup)
///             .cidrBlock("172.16.0.0/16")
///             .build());
///
///         var mainSwitch = new Switch("mainSwitch", SwitchArgs.builder()
///             .vpcId(main.id())
///             .cidrBlock("172.16.0.0/16")
///             .zoneId(msServerGroup.zones()[0].id())
///             .vswitchName(slbMasterSlaveServerGroup)
///             .build());
///
///         var group = new SecurityGroup("group", SecurityGroupArgs.builder()
///             .securityGroupName(slbMasterSlaveServerGroup)
///             .vpcId(main.id())
///             .build());
///
///         for (var i = 0; i < 2; i++) {
///             new Instance("msServerGroupInstance-" + i, InstanceArgs.builder()
///                 .imageId(image.images()[0].id())
///                 .instanceType(msServerGroupGetInstanceTypes.instanceTypes()[0].id())
///                 .instanceName(slbMasterSlaveServerGroup)
///                 .securityGroups(group.id())
///                 .internetChargeType("PayByTraffic")
///                 .internetMaxBandwidthOut(10)
///                 .availabilityZone(msServerGroup.zones()[0].id())
///                 .instanceChargeType("PostPaid")
///                 .systemDiskCategory("cloud_efficiency")
///                 .vswitchId(mainSwitch.id())
///                 .build());
///
///
/// }
///         var msServerGroupApplicationLoadBalancer = new ApplicationLoadBalancer("msServerGroupApplicationLoadBalancer", ApplicationLoadBalancerArgs.builder()
///             .loadBalancerName(slbMasterSlaveServerGroup)
///             .vswitchId(mainSwitch.id())
///             .loadBalancerSpec("slb.s2.small")
///             .build());
///
///         var msServerGroupEcsNetworkInterface = new EcsNetworkInterface("msServerGroupEcsNetworkInterface", EcsNetworkInterfaceArgs.builder()
///             .networkInterfaceName(slbMasterSlaveServerGroup)
///             .vswitchId(mainSwitch.id())
///             .securityGroupIds(group.id())
///             .build());
///
///         var msServerGroupEcsNetworkInterfaceAttachment = new EcsNetworkInterfaceAttachment("msServerGroupEcsNetworkInterfaceAttachment", EcsNetworkInterfaceAttachmentArgs.builder()
///             .instanceId(msServerGroupInstance[0].id())
///             .networkInterfaceId(msServerGroupEcsNetworkInterface.id())
///             .build());
///
///         var groupMasterSlaveServerGroup = new MasterSlaveServerGroup("groupMasterSlaveServerGroup", MasterSlaveServerGroupArgs.builder()
///             .loadBalancerId(msServerGroupApplicationLoadBalancer.id())
///             .name(slbMasterSlaveServerGroup)
///             .servers(
///                 MasterSlaveServerGroupServerArgs.builder()
///                     .serverId(msServerGroupInstance[0].id())
///                     .port(100)
///                     .weight(100)
///                     .serverType("Master")
///                     .build(),
///                 MasterSlaveServerGroupServerArgs.builder()
///                     .serverId(msServerGroupInstance[1].id())
///                     .port(100)
///                     .weight(100)
///                     .serverType("Slave")
///                     .build())
///             .build());
///
///         var tcp = new Listener("tcp", ListenerArgs.builder()
///             .loadBalancerId(msServerGroupApplicationLoadBalancer.id())
///             .masterSlaveServerGroupId(groupMasterSlaveServerGroup.id())
///             .frontendPort(22)
///             .protocol("tcp")
///             .bandwidth(10)
///             .healthCheckType("tcp")
///             .persistenceTimeout(3600)
///             .healthyThreshold(8)
///             .unhealthyThreshold(8)
///             .healthCheckTimeout(8)
///             .healthCheckInterval(5)
///             .healthCheckHttpCode("http_2xx")
///             .healthCheckConnectPort(20)
///             .healthCheckUri("/console")
///             .establishedTimeout(600)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   slbMasterSlaveServerGroup:
///     type: string
///     default: forSlbMasterSlaveServerGroup
/// resources:
///   main:
///     type: alicloud:vpc:Network
///     properties:
///       vpcName: ${slbMasterSlaveServerGroup}
///       cidrBlock: 172.16.0.0/16
///   mainSwitch:
///     type: alicloud:vpc:Switch
///     name: main
///     properties:
///       vpcId: ${main.id}
///       cidrBlock: 172.16.0.0/16
///       zoneId: ${msServerGroup.zones[0].id}
///       vswitchName: ${slbMasterSlaveServerGroup}
///   group:
///     type: alicloud:ecs:SecurityGroup
///     properties:
///       securityGroupName: ${slbMasterSlaveServerGroup}
///       vpcId: ${main.id}
///   msServerGroupInstance:
///     type: alicloud:ecs:Instance
///     name: ms_server_group
///     properties:
///       imageId: ${image.images[0].id}
///       instanceType: ${msServerGroupGetInstanceTypes.instanceTypes[0].id}
///       instanceName: ${slbMasterSlaveServerGroup}
///       securityGroups:
///         - ${group.id}
///       internetChargeType: PayByTraffic
///       internetMaxBandwidthOut: '10'
///       availabilityZone: ${msServerGroup.zones[0].id}
///       instanceChargeType: PostPaid
///       systemDiskCategory: cloud_efficiency
///       vswitchId: ${mainSwitch.id}
///     options: {}
///   msServerGroupApplicationLoadBalancer:
///     type: alicloud:slb:ApplicationLoadBalancer
///     name: ms_server_group
///     properties:
///       loadBalancerName: ${slbMasterSlaveServerGroup}
///       vswitchId: ${mainSwitch.id}
///       loadBalancerSpec: slb.s2.small
///   msServerGroupEcsNetworkInterface:
///     type: alicloud:ecs:EcsNetworkInterface
///     name: ms_server_group
///     properties:
///       networkInterfaceName: ${slbMasterSlaveServerGroup}
///       vswitchId: ${mainSwitch.id}
///       securityGroupIds:
///         - ${group.id}
///   msServerGroupEcsNetworkInterfaceAttachment:
///     type: alicloud:ecs:EcsNetworkInterfaceAttachment
///     name: ms_server_group
///     properties:
///       instanceId: ${msServerGroupInstance[0].id}
///       networkInterfaceId: ${msServerGroupEcsNetworkInterface.id}
///   groupMasterSlaveServerGroup:
///     type: alicloud:slb:MasterSlaveServerGroup
///     name: group
///     properties:
///       loadBalancerId: ${msServerGroupApplicationLoadBalancer.id}
///       name: ${slbMasterSlaveServerGroup}
///       servers:
///         - serverId: ${msServerGroupInstance[0].id}
///           port: 100
///           weight: 100
///           serverType: Master
///         - serverId: ${msServerGroupInstance[1].id}
///           port: 100
///           weight: 100
///           serverType: Slave
///   tcp:
///     type: alicloud:slb:Listener
///     properties:
///       loadBalancerId: ${msServerGroupApplicationLoadBalancer.id}
///       masterSlaveServerGroupId: ${groupMasterSlaveServerGroup.id}
///       frontendPort: '22'
///       protocol: tcp
///       bandwidth: '10'
///       healthCheckType: tcp
///       persistenceTimeout: 3600
///       healthyThreshold: 8
///       unhealthyThreshold: 8
///       healthCheckTimeout: 8
///       healthCheckInterval: 5
///       healthCheckHttpCode: http_2xx
///       healthCheckConnectPort: 20
///       healthCheckUri: /console
///       establishedTimeout: 600
/// variables:
///   msServerGroup:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableDiskCategory: cloud_efficiency
///         availableResourceCreation: VSwitch
///   msServerGroupGetInstanceTypes:
///     fn::invoke:
///       function: alicloud:ecs:getInstanceTypes
///       arguments:
///         availabilityZone: ${msServerGroup.zones[0].id}
///         cpuCoreCount: 2
///         memorySize: 8
///         instanceTypeFamily: ecs.g6
///   image:
///     fn::invoke:
///       function: alicloud:ecs:getImages
///       arguments:
///         nameRegex: ^ubuntu_18.*64
///         mostRecent: true
///         owners: system
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Load balancer master slave server group can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:slb/masterSlaveServerGroup:MasterSlaveServerGroup example abc123456
/// ```
class MasterSlaveServerGroup extends pulumi.CustomResource {
  /// Checking DeleteProtection of SLB instance before deleting. If true, this resource will not be deleted when its SLB instance enabled DeleteProtection. Default to false.
  late final pulumi.Output<bool?> deleteProtectionValidation;
  /// The Load Balancer ID which is used to launch a new master slave server group.
  late final pulumi.Output<String> loadBalancerId;
  /// Name of the master slave server group.
  late final pulumi.Output<String> name;
  /// A list of ECS instances to be added. Only two ECS instances can be supported in one resource. See `servers` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> servers;

  /// Creates a new [MasterSlaveServerGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MasterSlaveServerGroup]. {@macro pulumi_slb_master_slave_server_group_master_slave_server_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MasterSlaveServerGroup(
    String name, {
    MasterSlaveServerGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:slb/masterSlaveServerGroup:MasterSlaveServerGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deleteProtectionValidation = registerOutput<bool?>('deleteProtectionValidation');
    loadBalancerId = registerOutput<String>('loadBalancerId');
    this.name = registerOutput<String>('name');
    servers = registerOutput<List<Map<String, dynamic>>?>('servers');
  }

  /// Gets an existing [MasterSlaveServerGroup] resource's state with the given [name] and [id].
  static MasterSlaveServerGroup get(
    String name,
    pulumi.Input<String> id, {
    MasterSlaveServerGroupState? state,
  }) {
    return MasterSlaveServerGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  MasterSlaveServerGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:slb/masterSlaveServerGroup:MasterSlaveServerGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deleteProtectionValidation = registerOutput<bool?>('deleteProtectionValidation');
    loadBalancerId = registerOutput<String>('loadBalancerId');
    this.name = registerOutput<String>('name');
    servers = registerOutput<List<Map<String, dynamic>>?>('servers');
  }
}
