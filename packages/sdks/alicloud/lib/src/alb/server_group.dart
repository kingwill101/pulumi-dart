import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_group_args.dart';
import 'server_group_connection_drain_config.dart';
import 'server_group_health_check_config.dart';
import 'server_group_slow_start_config.dart';
import 'server_group_state.dart';
import 'server_group_sticky_session_config.dart';
import 'server_group_uch_config.dart';

/// Provides a Application Load Balancer (ALB) Server Group resource.
///
///
///
/// For information about Application Load Balancer (ALB) Server Group and how to use it, see [What is Server Group](https://www.alibabacloud.com/help/en/slb/application-load-balancer/developer-reference/api-alb-2020-06-16-createservergroup).
///
/// &gt; **NOTE:** Available since v1.131.0.
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
/// const name = config.get("name") || "terraform-example";
/// const example = alicloud.resourcemanager.getResourceGroups({});
/// const exampleGetZones = alicloud.getZones({
///     availableResourceCreation: "Instance",
/// });
/// const exampleGetInstanceTypes = exampleGetZones.then(exampleGetZones => alicloud.ecs.getInstanceTypes({
///     availabilityZone: exampleGetZones.zones?.[0]?.id,
///     cpuCoreCount: 1,
///     memorySize: 2,
/// }));
/// const exampleGetImages = alicloud.ecs.getImages({
///     nameRegex: "^ubuntu_18.*64",
///     owners: "system",
/// });
/// const exampleNetwork = new alicloud.vpc.Network("example", {
///     vpcName: name,
///     cidrBlock: "10.4.0.0/16",
/// });
/// const exampleSwitch = new alicloud.vpc.Switch("example", {
///     vswitchName: name,
///     cidrBlock: "10.4.0.0/16",
///     vpcId: exampleNetwork.id,
///     zoneId: exampleGetZones.then(exampleGetZones => exampleGetZones.zones?.[0]?.id),
/// });
/// const exampleSecurityGroup = new alicloud.ecs.SecurityGroup("example", {
///     name: name,
///     description: name,
///     vpcId: exampleNetwork.id,
/// });
/// const exampleInstance = new alicloud.ecs.Instance("example", {
///     availabilityZone: exampleGetZones.then(exampleGetZones => exampleGetZones.zones?.[0]?.id),
///     instanceName: name,
///     imageId: exampleGetImages.then(exampleGetImages => exampleGetImages.images?.[0]?.id),
///     instanceType: exampleGetInstanceTypes.then(exampleGetInstanceTypes => exampleGetInstanceTypes.instanceTypes?.[0]?.id),
///     securityGroups: [exampleSecurityGroup.id],
///     vswitchId: exampleSwitch.id,
/// });
/// const exampleServerGroup = new alicloud.alb.ServerGroup("example", {
///     protocol: "HTTP",
///     vpcId: exampleNetwork.id,
///     serverGroupName: name,
///     resourceGroupId: example.then(example => example.groups?.[0]?.id),
///     stickySessionConfig: {
///         stickySessionEnabled: true,
///         cookie: "tf-example",
///         stickySessionType: "Server",
///     },
///     healthCheckConfig: {
///         healthCheckConnectPort: 46325,
///         healthCheckEnabled: true,
///         healthCheckHost: "tf-example.com",
///         healthCheckCodes: [
///             "http_2xx",
///             "http_3xx",
///             "http_4xx",
///         ],
///         healthCheckHttpVersion: "HTTP1.1",
///         healthCheckInterval: 2,
///         healthCheckMethod: "HEAD",
///         healthCheckPath: "/tf-example",
///         healthCheckProtocol: "HTTP",
///         healthCheckTimeout: 5,
///         healthyThreshold: 3,
///         unhealthyThreshold: 3,
///     },
///     servers: [{
///         description: name,
///         port: 80,
///         serverId: exampleInstance.id,
///         serverIp: exampleInstance.privateIp,
///         serverType: "Ecs",
///         weight: 10,
///     }],
///     tags: {
///         Created: "TF",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// example = alicloud.resourcemanager.get_resource_groups()
/// example_get_zones = alicloud.get_zones(available_resource_creation="Instance")
/// example_get_instance_types = alicloud.ecs.get_instance_types(availability_zone=example_get_zones.zones[0].id,
///     cpu_core_count=1,
///     memory_size=2)
/// example_get_images = alicloud.ecs.get_images(name_regex="^ubuntu_18.*64",
///     owners="system")
/// example_network = alicloud.vpc.Network("example",
///     vpc_name=name,
///     cidr_block="10.4.0.0/16")
/// example_switch = alicloud.vpc.Switch("example",
///     vswitch_name=name,
///     cidr_block="10.4.0.0/16",
///     vpc_id=example_network.id,
///     zone_id=example_get_zones.zones[0].id)
/// example_security_group = alicloud.ecs.SecurityGroup("example",
///     name=name,
///     description=name,
///     vpc_id=example_network.id)
/// example_instance = alicloud.ecs.Instance("example",
///     availability_zone=example_get_zones.zones[0].id,
///     instance_name=name,
///     image_id=example_get_images.images[0].id,
///     instance_type=example_get_instance_types.instance_types[0].id,
///     security_groups=[example_security_group.id],
///     vswitch_id=example_switch.id)
/// example_server_group = alicloud.alb.ServerGroup("example",
///     protocol="HTTP",
///     vpc_id=example_network.id,
///     server_group_name=name,
///     resource_group_id=example.groups[0].id,
///     sticky_session_config={
///         "sticky_session_enabled": True,
///         "cookie": "tf-example",
///         "sticky_session_type": "Server",
///     },
///     health_check_config={
///         "health_check_connect_port": 46325,
///         "health_check_enabled": True,
///         "health_check_host": "tf-example.com",
///         "health_check_codes": [
///             "http_2xx",
///             "http_3xx",
///             "http_4xx",
///         ],
///         "health_check_http_version": "HTTP1.1",
///         "health_check_interval": 2,
///         "health_check_method": "HEAD",
///         "health_check_path": "/tf-example",
///         "health_check_protocol": "HTTP",
///         "health_check_timeout": 5,
///         "healthy_threshold": 3,
///         "unhealthy_threshold": 3,
///     },
///     servers=[{
///         "description": name,
///         "port": 80,
///         "server_id": example_instance.id,
///         "server_ip": example_instance.private_ip,
///         "server_type": "Ecs",
///         "weight": 10,
///     }],
///     tags={
///         "Created": "TF",
///     })
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
///     var name = config.Get("name") ?? "terraform-example";
///     var example = AliCloud.ResourceManager.GetResourceGroups.Invoke();
///
///     var exampleGetZones = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "Instance",
///     });
///
///     var exampleGetInstanceTypes = AliCloud.Ecs.GetInstanceTypes.Invoke(new()
///     {
///         AvailabilityZone = exampleGetZones.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///         CpuCoreCount = 1,
///         MemorySize = 2,
///     });
///
///     var exampleGetImages = AliCloud.Ecs.GetImages.Invoke(new()
///     {
///         NameRegex = "^ubuntu_18.*64",
///         Owners = "system",
///     });
///
///     var exampleNetwork = new AliCloud.Vpc.Network("example", new()
///     {
///         VpcName = name,
///         CidrBlock = "10.4.0.0/16",
///     });
///
///     var exampleSwitch = new AliCloud.Vpc.Switch("example", new()
///     {
///         VswitchName = name,
///         CidrBlock = "10.4.0.0/16",
///         VpcId = exampleNetwork.Id,
///         ZoneId = exampleGetZones.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///     });
///
///     var exampleSecurityGroup = new AliCloud.Ecs.SecurityGroup("example", new()
///     {
///         Name = name,
///         Description = name,
///         VpcId = exampleNetwork.Id,
///     });
///
///     var exampleInstance = new AliCloud.Ecs.Instance("example", new()
///     {
///         AvailabilityZone = exampleGetZones.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///         InstanceName = name,
///         ImageId = exampleGetImages.Apply(getImagesResult => getImagesResult.Images[0]?.Id),
///         InstanceType = exampleGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.InstanceTypes[0]?.Id),
///         SecurityGroups = new[]
///         {
///             exampleSecurityGroup.Id,
///         },
///         VswitchId = exampleSwitch.Id,
///     });
///
///     var exampleServerGroup = new AliCloud.Alb.ServerGroup("example", new()
///     {
///         Protocol = "HTTP",
///         VpcId = exampleNetwork.Id,
///         ServerGroupName = name,
///         ResourceGroupId = example.Apply(getResourceGroupsResult => getResourceGroupsResult.Groups[0]?.Id),
///         StickySessionConfig = new AliCloud.Alb.Inputs.ServerGroupStickySessionConfigArgs
///         {
///             StickySessionEnabled = true,
///             Cookie = "tf-example",
///             StickySessionType = "Server",
///         },
///         HealthCheckConfig = new AliCloud.Alb.Inputs.ServerGroupHealthCheckConfigArgs
///         {
///             HealthCheckConnectPort = 46325,
///             HealthCheckEnabled = true,
///             HealthCheckHost = "tf-example.com",
///             HealthCheckCodes = new[]
///             {
///                 "http_2xx",
///                 "http_3xx",
///                 "http_4xx",
///             },
///             HealthCheckHttpVersion = "HTTP1.1",
///             HealthCheckInterval = 2,
///             HealthCheckMethod = "HEAD",
///             HealthCheckPath = "/tf-example",
///             HealthCheckProtocol = "HTTP",
///             HealthCheckTimeout = 5,
///             HealthyThreshold = 3,
///             UnhealthyThreshold = 3,
///         },
///         Servers = new[]
///         {
///             new AliCloud.Alb.Inputs.ServerGroupServerArgs
///             {
///                 Description = name,
///                 Port = 80,
///                 ServerId = exampleInstance.Id,
///                 ServerIp = exampleInstance.PrivateIp,
///                 ServerType = "Ecs",
///                 Weight = 10,
///             },
///         },
///         Tags =
///         {
///             { "Created", "TF" },
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/alb"
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
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		example, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleGetZones, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("Instance"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleGetInstanceTypes, err := ecs.GetInstanceTypes(ctx, &ecs.GetInstanceTypesArgs{
/// 			AvailabilityZone: pulumi.StringRef(exampleGetZones.Zones[0].Id),
/// 			CpuCoreCount:     pulumi.IntRef(1),
/// 			MemorySize:       pulumi.Float64Ref(2),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleGetImages, err := ecs.GetImages(ctx, &ecs.GetImagesArgs{
/// 			NameRegex: pulumi.StringRef("^ubuntu_18.*64"),
/// 			Owners:    pulumi.StringRef("system"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNetwork, err := vpc.NewNetwork(ctx, "example", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("10.4.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSwitch, err := vpc.NewSwitch(ctx, "example", &vpc.SwitchArgs{
/// 			VswitchName: pulumi.String(name),
/// 			CidrBlock:   pulumi.String("10.4.0.0/16"),
/// 			VpcId:       exampleNetwork.ID(),
/// 			ZoneId:      pulumi.String(exampleGetZones.Zones[0].Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSecurityGroup, err := ecs.NewSecurityGroup(ctx, "example", &ecs.SecurityGroupArgs{
/// 			Name:        pulumi.String(name),
/// 			Description: pulumi.String(name),
/// 			VpcId:       exampleNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleInstance, err := ecs.NewInstance(ctx, "example", &ecs.InstanceArgs{
/// 			AvailabilityZone: pulumi.String(exampleGetZones.Zones[0].Id),
/// 			InstanceName:     pulumi.String(name),
/// 			ImageId:          pulumi.String(exampleGetImages.Images[0].Id),
/// 			InstanceType:     pulumi.String(exampleGetInstanceTypes.InstanceTypes[0].Id),
/// 			SecurityGroups: pulumi.StringArray{
/// 				exampleSecurityGroup.ID(),
/// 			},
/// 			VswitchId: exampleSwitch.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = alb.NewServerGroup(ctx, "example", &alb.ServerGroupArgs{
/// 			Protocol:        pulumi.String("HTTP"),
/// 			VpcId:           exampleNetwork.ID(),
/// 			ServerGroupName: pulumi.String(name),
/// 			ResourceGroupId: pulumi.String(example.Groups[0].Id),
/// 			StickySessionConfig: &alb.ServerGroupStickySessionConfigArgs{
/// 				StickySessionEnabled: pulumi.Bool(true),
/// 				Cookie:               pulumi.String("tf-example"),
/// 				StickySessionType:    pulumi.String("Server"),
/// 			},
/// 			HealthCheckConfig: &alb.ServerGroupHealthCheckConfigArgs{
/// 				HealthCheckConnectPort: pulumi.Int(46325),
/// 				HealthCheckEnabled:     pulumi.Bool(true),
/// 				HealthCheckHost:        pulumi.String("tf-example.com"),
/// 				HealthCheckCodes: pulumi.StringArray{
/// 					pulumi.String("http_2xx"),
/// 					pulumi.String("http_3xx"),
/// 					pulumi.String("http_4xx"),
/// 				},
/// 				HealthCheckHttpVersion: pulumi.String("HTTP1.1"),
/// 				HealthCheckInterval:    pulumi.Int(2),
/// 				HealthCheckMethod:      pulumi.String("HEAD"),
/// 				HealthCheckPath:        pulumi.String("/tf-example"),
/// 				HealthCheckProtocol:    pulumi.String("HTTP"),
/// 				HealthCheckTimeout:     pulumi.Int(5),
/// 				HealthyThreshold:       pulumi.Int(3),
/// 				UnhealthyThreshold:     pulumi.Int(3),
/// 			},
/// 			Servers: alb.ServerGroupServerArray{
/// 				&alb.ServerGroupServerArgs{
/// 					Description: pulumi.String(name),
/// 					Port:        pulumi.Int(80),
/// 					ServerId:    exampleInstance.ID(),
/// 					ServerIp:    exampleInstance.PrivateIp,
/// 					ServerType:  pulumi.String("Ecs"),
/// 					Weight:      pulumi.Int(10),
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Created": pulumi.String("TF"),
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
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
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
/// import com.pulumi.alicloud.alb.ServerGroup;
/// import com.pulumi.alicloud.alb.ServerGroupArgs;
/// import com.pulumi.alicloud.alb.inputs.ServerGroupStickySessionConfigArgs;
/// import com.pulumi.alicloud.alb.inputs.ServerGroupHealthCheckConfigArgs;
/// import com.pulumi.alicloud.alb.inputs.ServerGroupServerArgs;
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
///         final var example = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .build());
///
///         final var exampleGetZones = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("Instance")
///             .build());
///
///         final var exampleGetInstanceTypes = EcsFunctions.getInstanceTypes(GetInstanceTypesArgs.builder()
///             .availabilityZone(exampleGetZones.zones()[0].id())
///             .cpuCoreCount(1)
///             .memorySize(2)
///             .build());
///
///         final var exampleGetImages = EcsFunctions.getImages(GetImagesArgs.builder()
///             .nameRegex("^ubuntu_18.*64")
///             .owners("system")
///             .build());
///
///         var exampleNetwork = new Network("exampleNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("10.4.0.0/16")
///             .build());
///
///         var exampleSwitch = new Switch("exampleSwitch", SwitchArgs.builder()
///             .vswitchName(name)
///             .cidrBlock("10.4.0.0/16")
///             .vpcId(exampleNetwork.id())
///             .zoneId(exampleGetZones.zones()[0].id())
///             .build());
///
///         var exampleSecurityGroup = new SecurityGroup("exampleSecurityGroup", SecurityGroupArgs.builder()
///             .name(name)
///             .description(name)
///             .vpcId(exampleNetwork.id())
///             .build());
///
///         var exampleInstance = new Instance("exampleInstance", InstanceArgs.builder()
///             .availabilityZone(exampleGetZones.zones()[0].id())
///             .instanceName(name)
///             .imageId(exampleGetImages.images()[0].id())
///             .instanceType(exampleGetInstanceTypes.instanceTypes()[0].id())
///             .securityGroups(exampleSecurityGroup.id())
///             .vswitchId(exampleSwitch.id())
///             .build());
///
///         var exampleServerGroup = new ServerGroup("exampleServerGroup", ServerGroupArgs.builder()
///             .protocol("HTTP")
///             .vpcId(exampleNetwork.id())
///             .serverGroupName(name)
///             .resourceGroupId(example.groups()[0].id())
///             .stickySessionConfig(ServerGroupStickySessionConfigArgs.builder()
///                 .stickySessionEnabled(true)
///                 .cookie("tf-example")
///                 .stickySessionType("Server")
///                 .build())
///             .healthCheckConfig(ServerGroupHealthCheckConfigArgs.builder()
///                 .healthCheckConnectPort(46325)
///                 .healthCheckEnabled(true)
///                 .healthCheckHost("tf-example.com")
///                 .healthCheckCodes(
///                     "http_2xx",
///                     "http_3xx",
///                     "http_4xx")
///                 .healthCheckHttpVersion("HTTP1.1")
///                 .healthCheckInterval(2)
///                 .healthCheckMethod("HEAD")
///                 .healthCheckPath("/tf-example")
///                 .healthCheckProtocol("HTTP")
///                 .healthCheckTimeout(5)
///                 .healthyThreshold(3)
///                 .unhealthyThreshold(3)
///                 .build())
///             .servers(ServerGroupServerArgs.builder()
///                 .description(name)
///                 .port(80)
///                 .serverId(exampleInstance.id())
///                 .serverIp(exampleInstance.privateIp())
///                 .serverType("Ecs")
///                 .weight(10)
///                 .build())
///             .tags(Map.of("Created", "TF"))
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
///   exampleNetwork:
///     type: alicloud:vpc:Network
///     name: example
///     properties:
///       vpcName: ${name}
///       cidrBlock: 10.4.0.0/16
///   exampleSwitch:
///     type: alicloud:vpc:Switch
///     name: example
///     properties:
///       vswitchName: ${name}
///       cidrBlock: 10.4.0.0/16
///       vpcId: ${exampleNetwork.id}
///       zoneId: ${exampleGetZones.zones[0].id}
///   exampleSecurityGroup:
///     type: alicloud:ecs:SecurityGroup
///     name: example
///     properties:
///       name: ${name}
///       description: ${name}
///       vpcId: ${exampleNetwork.id}
///   exampleInstance:
///     type: alicloud:ecs:Instance
///     name: example
///     properties:
///       availabilityZone: ${exampleGetZones.zones[0].id}
///       instanceName: ${name}
///       imageId: ${exampleGetImages.images[0].id}
///       instanceType: ${exampleGetInstanceTypes.instanceTypes[0].id}
///       securityGroups:
///         - ${exampleSecurityGroup.id}
///       vswitchId: ${exampleSwitch.id}
///   exampleServerGroup:
///     type: alicloud:alb:ServerGroup
///     name: example
///     properties:
///       protocol: HTTP
///       vpcId: ${exampleNetwork.id}
///       serverGroupName: ${name}
///       resourceGroupId: ${example.groups[0].id}
///       stickySessionConfig:
///         stickySessionEnabled: true
///         cookie: tf-example
///         stickySessionType: Server
///       healthCheckConfig:
///         healthCheckConnectPort: '46325'
///         healthCheckEnabled: true
///         healthCheckHost: tf-example.com
///         healthCheckCodes:
///           - http_2xx
///           - http_3xx
///           - http_4xx
///         healthCheckHttpVersion: HTTP1.1
///         healthCheckInterval: '2'
///         healthCheckMethod: HEAD
///         healthCheckPath: /tf-example
///         healthCheckProtocol: HTTP
///         healthCheckTimeout: 5
///         healthyThreshold: 3
///         unhealthyThreshold: 3
///       servers:
///         - description: ${name}
///           port: 80
///           serverId: ${exampleInstance.id}
///           serverIp: ${exampleInstance.privateIp}
///           serverType: Ecs
///           weight: 10
///       tags:
///         Created: TF
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:resourcemanager:getResourceGroups
///       arguments: {}
///   exampleGetZones:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableResourceCreation: Instance
///   exampleGetInstanceTypes:
///     fn::invoke:
///       function: alicloud:ecs:getInstanceTypes
///       arguments:
///         availabilityZone: ${exampleGetZones.zones[0].id}
///         cpuCoreCount: 1
///         memorySize: 2
///   exampleGetImages:
///     fn::invoke:
///       function: alicloud:ecs:getImages
///       arguments:
///         nameRegex: ^ubuntu_18.*64
///         owners: system
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Application Load Balancer (ALB) Server Group can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:alb/serverGroup:ServerGroup example <id>
/// ```
class ServerGroup extends pulumi.CustomResource {
  /// Elegant interrupt configuration. See `connection_drain_config` below.
  late final pulumi.Output<ServerGroupConnectionDrainConfig>
  connectionDrainConfig;

  /// The creation time of the resource
  late final pulumi.Output<String> createTime;

  /// Indicates whether cross-zone load balancing is enabled for the server group. Valid values:
  late final pulumi.Output<bool> crossZoneEnabled;

  /// Whether to PreCheck only this request. Value:
  /// true: Send a check request,
  /// false (default): Send a normal request.
  late final pulumi.Output<bool?> dryRun;

  /// The configuration of health checks See `health_check_config` below.
  late final pulumi.Output<ServerGroupHealthCheckConfig> healthCheckConfig;

  /// The ID of the resource group to which you want to transfer the cloud resource.
  ///
  /// &gt; **NOTE:**   You can use resource groups to manage resources within your Alibaba Cloud account by group. This helps you resolve issues such as resource grouping and permission management for your Alibaba Cloud account. For more information, see [What is resource management?](https://www.alibabacloud.com/help/en/doc-detail/94475.html)
  late final pulumi.Output<String?> healthCheckTemplateId;

  /// Enable Ipv6
  late final pulumi.Output<bool?> ipv6Enabled;

  /// The backend protocol. Valid values:
  ///
  /// *   `HTTP`: allows you to associate an HTTPS, HTTP, or QUIC listener with the server group. This is the default value.
  ///
  /// *   `HTTPS`: allows you to associate HTTPS listeners with backend servers.
  ///
  /// *   `gRPC`: allows you to associate an HTTPS or QUIC listener with the server group.
  ///
  /// &gt; **NOTE:**   You do not need to specify a backend protocol if you set `ServerGroupType` to `Fc`.
  late final pulumi.Output<String> protocol;

  /// Elegant interrupt configuration.
  late final pulumi.Output<String> resourceGroupId;

  /// The scheduling algorithm. Valid values:
  ///
  /// *   `Wrr` (default): The weighted round-robin algorithm is used. Backend servers that have higher weights receive more requests than those that have lower weights.
  ///
  /// *   `Wlc`: The weighted least connections algorithm is used. Requests are distributed based on the weights and the number of connections to backend servers. If two backend servers have the same weight, the backend server that has fewer connections is expected to receive more requests.
  ///
  /// *   `Sch`: The consistent hashing algorithm is used. Requests from the same source IP address are distributed to the same backend server.
  ///
  /// &gt; **NOTE:**  This parameter takes effect when the `ServerGroupType` parameter is set to `Instance` or `Ip`.
  late final pulumi.Output<String> scheduler;

  /// The name of the server group. The name must be 2 to 128 characters in length, and can contain letters, digits, periods (.), underscores (\_), and hyphens (-). The name must start with a letter.
  late final pulumi.Output<String> serverGroupName;

  /// The type of server group. Valid values:
  ///
  /// - `Instance` (default): allows you to add servers by specifying `Ecs`, `Eni`, or `Eci`.
  /// - `Ip`: allows you to add servers by specifying IP addresses.
  /// - `Fc`: allows you to add servers by specifying functions of Function Compute.
  late final pulumi.Output<String> serverGroupType;

  /// List of servers. See `servers` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> servers;

  /// Only applicable to the ALB Ingress scenario, indicating the K8s Service name corresponding to the server group.
  late final pulumi.Output<String?> serviceName;

  /// Slow start configuration. See `slow_start_config` below.
  late final pulumi.Output<ServerGroupSlowStartConfig> slowStartConfig;

  /// The status of the resource
  late final pulumi.Output<String> status;

  /// The configuration of health checks See `sticky_session_config` below.
  late final pulumi.Output<ServerGroupStickySessionConfig?> stickySessionConfig;

  /// The creation time of the resource
  late final pulumi.Output<Map<String, String>?> tags;

  /// Url consistency hash parameter configuration See `uch_config` below.
  late final pulumi.Output<ServerGroupUchConfig?> uchConfig;

  /// Specifies whether to enable persistent TCP connections.
  late final pulumi.Output<bool?> upstreamKeepaliveEnabled;

  /// The ID of the virtual private cloud (VPC). You can add only servers that are deployed in the specified VPC to the server group.
  ///
  /// &gt; **NOTE:**   This parameter takes effect when the `ServerGroupType` parameter is set to `Instance` or `Ip`.
  late final pulumi.Output<String?> vpcId;

  /// Creates a new [ServerGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServerGroup]. {@macro pulumi_alb_server_group_server_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServerGroup(
    String name, {
    ServerGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:alb/serverGroup:ServerGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    connectionDrainConfig = registerOutput<ServerGroupConnectionDrainConfig>(
      'connectionDrainConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ServerGroupConnectionDrainConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    createTime = registerOutput<String>('createTime');
    crossZoneEnabled = registerOutput<bool>('crossZoneEnabled');
    dryRun = registerOutput<bool?>('dryRun');
    healthCheckConfig = registerOutput<ServerGroupHealthCheckConfig>(
      'healthCheckConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ServerGroupHealthCheckConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    healthCheckTemplateId = registerOutput<String?>('healthCheckTemplateId');
    ipv6Enabled = registerOutput<bool?>('ipv6Enabled');
    protocol = registerOutput<String>('protocol');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    scheduler = registerOutput<String>('scheduler');
    serverGroupName = registerOutput<String>('serverGroupName');
    serverGroupType = registerOutput<String>('serverGroupType');
    servers = registerOutput<List<Map<String, dynamic>>?>('servers');
    serviceName = registerOutput<String?>('serviceName');
    slowStartConfig = registerOutput<ServerGroupSlowStartConfig>(
      'slowStartConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ServerGroupSlowStartConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    status = registerOutput<String>('status');
    stickySessionConfig = registerOutput<ServerGroupStickySessionConfig?>(
      'stickySessionConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ServerGroupStickySessionConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    uchConfig = registerOutput<ServerGroupUchConfig?>(
      'uchConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ServerGroupUchConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    upstreamKeepaliveEnabled = registerOutput<bool?>(
      'upstreamKeepaliveEnabled',
    );
    vpcId = registerOutput<String?>('vpcId');
  }

  /// Gets an existing [ServerGroup] resource's state with the given [name] and [id].
  static ServerGroup get(
    String name,
    pulumi.Input<String> id, {
    ServerGroupState? state,
  }) {
    return ServerGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ServerGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:alb/serverGroup:ServerGroup',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    connectionDrainConfig = registerOutput<ServerGroupConnectionDrainConfig>(
      'connectionDrainConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ServerGroupConnectionDrainConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    createTime = registerOutput<String>('createTime');
    crossZoneEnabled = registerOutput<bool>('crossZoneEnabled');
    dryRun = registerOutput<bool?>('dryRun');
    healthCheckConfig = registerOutput<ServerGroupHealthCheckConfig>(
      'healthCheckConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ServerGroupHealthCheckConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    healthCheckTemplateId = registerOutput<String?>('healthCheckTemplateId');
    ipv6Enabled = registerOutput<bool?>('ipv6Enabled');
    protocol = registerOutput<String>('protocol');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    scheduler = registerOutput<String>('scheduler');
    serverGroupName = registerOutput<String>('serverGroupName');
    serverGroupType = registerOutput<String>('serverGroupType');
    servers = registerOutput<List<Map<String, dynamic>>?>('servers');
    serviceName = registerOutput<String?>('serviceName');
    slowStartConfig = registerOutput<ServerGroupSlowStartConfig>(
      'slowStartConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ServerGroupSlowStartConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    status = registerOutput<String>('status');
    stickySessionConfig = registerOutput<ServerGroupStickySessionConfig?>(
      'stickySessionConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ServerGroupStickySessionConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    uchConfig = registerOutput<ServerGroupUchConfig?>(
      'uchConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ServerGroupUchConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    upstreamKeepaliveEnabled = registerOutput<bool?>(
      'upstreamKeepaliveEnabled',
    );
    vpcId = registerOutput<String?>('vpcId');
  }
}
