import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_group_attachment_args.dart';
import 'server_group_attachment_state.dart';

/// Attaches/Detaches server group to a specified scaling group.
///
/// For information about  server group attachment, see [AttachServerGroups](https://www.alibabacloud.com/help/en/auto-scaling/developer-reference/api-attachservergroups).
///
/// &gt; **NOTE:** If scaling group's network type is `VPC`, the server groups must be in the same `VPC`.
///
/// &gt; **NOTE:** server group attachment is defined uniquely by `scaling_group_id`, `server_group_id`,`type`, `port`.
///
/// &gt; **NOTE:** Resource `alicloud.ess.ServerGroupAttachment` don't support modification.
///
/// &gt; **NOTE:** Available since v1.231.0.
///
/// ## Example Usage
///
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
/// const myName = `${name}-${defaultInteger.result}`;
/// const _default = alicloud.getZones({
///     availableDiskCategory: "cloud_efficiency",
///     availableResourceCreation: "VSwitch",
/// });
/// const defaultGetInstanceTypes = _default.then(_default => alicloud.ecs.getInstanceTypes({
///     availabilityZone: _default.zones?.[0]?.id,
///     cpuCoreCount: 2,
///     memorySize: 4,
/// }));
/// const defaultGetImages = alicloud.ecs.getImages({
///     nameRegex: "^ubuntu_18.*64",
///     mostRecent: true,
///     owners: "system",
/// });
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: myName,
///     cidrBlock: "172.16.0.0/16",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vpcId: defaultNetwork.id,
///     cidrBlock: "172.16.0.0/24",
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
///     vswitchName: myName,
/// });
/// const defaultSecurityGroup = new alicloud.ecs.SecurityGroup("default", {
///     securityGroupName: myName,
///     vpcId: defaultNetwork.id,
/// });
/// const defaultScalingGroup = new alicloud.ess.ScalingGroup("default", {
///     minSize: 0,
///     maxSize: 2,
///     scalingGroupName: myName,
///     defaultCooldown: 200,
///     removalPolicies: ["OldestInstance"],
///     vswitchIds: [defaultSwitch.id],
/// });
/// const defaultScalingConfiguration = new alicloud.ess.ScalingConfiguration("default", {
///     scalingGroupId: defaultScalingGroup.id,
///     imageId: defaultGetImages.then(defaultGetImages => defaultGetImages.images?.[0]?.id),
///     instanceType: defaultGetInstanceTypes.then(defaultGetInstanceTypes => defaultGetInstanceTypes.instanceTypes?.[0]?.id),
///     securityGroupId: defaultSecurityGroup.id,
///     systemDiskSize: 50,
///     forceDelete: true,
///     active: true,
///     enable: true,
/// });
/// const defaultServerGroup = new alicloud.alb.ServerGroup("default", {
///     serverGroupName: myName,
///     vpcId: defaultNetwork.id,
///     healthCheckConfig: {
///         healthCheckEnabled: false,
///     },
///     stickySessionConfig: {
///         stickySessionEnabled: true,
///         cookie: "tf-example",
///         stickySessionType: "Server",
///     },
/// });
/// const defaultServerGroupAttachment = new alicloud.ess.ServerGroupAttachment("default", {
///     scalingGroupId: defaultScalingConfiguration.scalingGroupId,
///     serverGroupId: defaultServerGroup.id,
///     port: 9000,
///     type: "ALB",
///     weight: 50,
///     forceAttach: true,
/// });
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
/// my_name = f"{name}-{default_integer['result']}"
/// default = alicloud.get_zones(available_disk_category="cloud_efficiency",
///     available_resource_creation="VSwitch")
/// default_get_instance_types = alicloud.ecs.get_instance_types(availability_zone=default.zones[0].id,
///     cpu_core_count=2,
///     memory_size=4)
/// default_get_images = alicloud.ecs.get_images(name_regex="^ubuntu_18.*64",
///     most_recent=True,
///     owners="system")
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=my_name,
///     cidr_block="172.16.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vpc_id=default_network.id,
///     cidr_block="172.16.0.0/24",
///     zone_id=default.zones[0].id,
///     vswitch_name=my_name)
/// default_security_group = alicloud.ecs.SecurityGroup("default",
///     security_group_name=my_name,
///     vpc_id=default_network.id)
/// default_scaling_group = alicloud.ess.ScalingGroup("default",
///     min_size=0,
///     max_size=2,
///     scaling_group_name=my_name,
///     default_cooldown=200,
///     removal_policies=["OldestInstance"],
///     vswitch_ids=[default_switch.id])
/// default_scaling_configuration = alicloud.ess.ScalingConfiguration("default",
///     scaling_group_id=default_scaling_group.id,
///     image_id=default_get_images.images[0].id,
///     instance_type=default_get_instance_types.instance_types[0].id,
///     security_group_id=default_security_group.id,
///     system_disk_size=50,
///     force_delete=True,
///     active=True,
///     enable=True)
/// default_server_group = alicloud.alb.ServerGroup("default",
///     server_group_name=my_name,
///     vpc_id=default_network.id,
///     health_check_config={
///         "health_check_enabled": False,
///     },
///     sticky_session_config={
///         "sticky_session_enabled": True,
///         "cookie": "tf-example",
///         "sticky_session_type": "Server",
///     })
/// default_server_group_attachment = alicloud.ess.ServerGroupAttachment("default",
///     scaling_group_id=default_scaling_configuration.scaling_group_id,
///     server_group_id=default_server_group.id,
///     port=9000,
///     type="ALB",
///     weight=50,
///     force_attach=True)
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
///     var myName = $"{name}-{defaultInteger.Result}";
///
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableDiskCategory = "cloud_efficiency",
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var defaultGetInstanceTypes = AliCloud.Ecs.GetInstanceTypes.Invoke(new()
///     {
///         AvailabilityZone = @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///         CpuCoreCount = 2,
///         MemorySize = 4,
///     });
///
///     var defaultGetImages = AliCloud.Ecs.GetImages.Invoke(new()
///     {
///         NameRegex = "^ubuntu_18.*64",
///         MostRecent = true,
///         Owners = "system",
///     });
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = myName,
///         CidrBlock = "172.16.0.0/16",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VpcId = defaultNetwork.Id,
///         CidrBlock = "172.16.0.0/24",
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         VswitchName = myName,
///     });
///
///     var defaultSecurityGroup = new AliCloud.Ecs.SecurityGroup("default", new()
///     {
///         SecurityGroupName = myName,
///         VpcId = defaultNetwork.Id,
///     });
///
///     var defaultScalingGroup = new AliCloud.Ess.ScalingGroup("default", new()
///     {
///         MinSize = 0,
///         MaxSize = 2,
///         ScalingGroupName = myName,
///         DefaultCooldown = 200,
///         RemovalPolicies = new[]
///         {
///             "OldestInstance",
///         },
///         VswitchIds = new[]
///         {
///             defaultSwitch.Id,
///         },
///     });
///
///     var defaultScalingConfiguration = new AliCloud.Ess.ScalingConfiguration("default", new()
///     {
///         ScalingGroupId = defaultScalingGroup.Id,
///         ImageId = defaultGetImages.Apply(getImagesResult => getImagesResult.Images[0]?.Id),
///         InstanceType = defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.InstanceTypes[0]?.Id),
///         SecurityGroupId = defaultSecurityGroup.Id,
///         SystemDiskSize = 50,
///         ForceDelete = true,
///         Active = true,
///         Enable = true,
///     });
///
///     var defaultServerGroup = new AliCloud.Alb.ServerGroup("default", new()
///     {
///         ServerGroupName = myName,
///         VpcId = defaultNetwork.Id,
///         HealthCheckConfig = new AliCloud.Alb.Inputs.ServerGroupHealthCheckConfigArgs
///         {
///             HealthCheckEnabled = false,
///         },
///         StickySessionConfig = new AliCloud.Alb.Inputs.ServerGroupStickySessionConfigArgs
///         {
///             StickySessionEnabled = true,
///             Cookie = "tf-example",
///             StickySessionType = "Server",
///         },
///     });
///
///     var defaultServerGroupAttachment = new AliCloud.Ess.ServerGroupAttachment("default", new()
///     {
///         ScalingGroupId = defaultScalingConfiguration.ScalingGroupId,
///         ServerGroupId = defaultServerGroup.Id,
///         Port = 9000,
///         Type = "ALB",
///         Weight = 50,
///         ForceAttach = true,
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/alb"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ess"
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
/// 		myName := fmt.Sprintf("%v-%v", name, defaultInteger.Result)
/// 		_default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableDiskCategory:     pulumi.StringRef("cloud_efficiency"),
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetInstanceTypes, err := ecs.GetInstanceTypes(ctx, &ecs.GetInstanceTypesArgs{
/// 			AvailabilityZone: pulumi.StringRef(_default.Zones[0].Id),
/// 			CpuCoreCount:     pulumi.IntRef(2),
/// 			MemorySize:       pulumi.Float64Ref(4),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetImages, err := ecs.GetImages(ctx, &ecs.GetImagesArgs{
/// 			NameRegex:  pulumi.StringRef("^ubuntu_18.*64"),
/// 			MostRecent: pulumi.BoolRef(true),
/// 			Owners:     pulumi.StringRef("system"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(myName),
/// 			CidrBlock: pulumi.String("172.16.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VpcId:       defaultNetwork.ID(),
/// 			CidrBlock:   pulumi.String("172.16.0.0/24"),
/// 			ZoneId:      pulumi.String(_default.Zones[0].Id),
/// 			VswitchName: pulumi.String(myName),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSecurityGroup, err := ecs.NewSecurityGroup(ctx, "default", &ecs.SecurityGroupArgs{
/// 			SecurityGroupName: pulumi.String(myName),
/// 			VpcId:             defaultNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultScalingGroup, err := ess.NewScalingGroup(ctx, "default", &ess.ScalingGroupArgs{
/// 			MinSize:          pulumi.Int(0),
/// 			MaxSize:          pulumi.Int(2),
/// 			ScalingGroupName: pulumi.String(myName),
/// 			DefaultCooldown:  pulumi.Int(200),
/// 			RemovalPolicies: pulumi.StringArray{
/// 				pulumi.String("OldestInstance"),
/// 			},
/// 			VswitchIds: pulumi.StringArray{
/// 				defaultSwitch.ID(),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultScalingConfiguration, err := ess.NewScalingConfiguration(ctx, "default", &ess.ScalingConfigurationArgs{
/// 			ScalingGroupId:  defaultScalingGroup.ID(),
/// 			ImageId:         pulumi.String(defaultGetImages.Images[0].Id),
/// 			InstanceType:    pulumi.String(defaultGetInstanceTypes.InstanceTypes[0].Id),
/// 			SecurityGroupId: defaultSecurityGroup.ID(),
/// 			SystemDiskSize:  pulumi.Int(50),
/// 			ForceDelete:     pulumi.Bool(true),
/// 			Active:          pulumi.Bool(true),
/// 			Enable:          pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultServerGroup, err := alb.NewServerGroup(ctx, "default", &alb.ServerGroupArgs{
/// 			ServerGroupName: pulumi.String(myName),
/// 			VpcId:           defaultNetwork.ID(),
/// 			HealthCheckConfig: &alb.ServerGroupHealthCheckConfigArgs{
/// 				HealthCheckEnabled: pulumi.Bool(false),
/// 			},
/// 			StickySessionConfig: &alb.ServerGroupStickySessionConfigArgs{
/// 				StickySessionEnabled: pulumi.Bool(true),
/// 				Cookie:               pulumi.String("tf-example"),
/// 				StickySessionType:    pulumi.String("Server"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ess.NewServerGroupAttachment(ctx, "default", &ess.ServerGroupAttachmentArgs{
/// 			ScalingGroupId: defaultScalingConfiguration.ScalingGroupId,
/// 			ServerGroupId:  defaultServerGroup.ID(),
/// 			Port:           pulumi.Int(9000),
/// 			Type:           pulumi.String("ALB"),
/// 			Weight:         pulumi.Int(50),
/// 			ForceAttach:    pulumi.Bool(true),
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
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
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
/// import com.pulumi.alicloud.ess.ScalingGroup;
/// import com.pulumi.alicloud.ess.ScalingGroupArgs;
/// import com.pulumi.alicloud.ess.ScalingConfiguration;
/// import com.pulumi.alicloud.ess.ScalingConfigurationArgs;
/// import com.pulumi.alicloud.alb.ServerGroup;
/// import com.pulumi.alicloud.alb.ServerGroupArgs;
/// import com.pulumi.alicloud.alb.inputs.ServerGroupHealthCheckConfigArgs;
/// import com.pulumi.alicloud.alb.inputs.ServerGroupStickySessionConfigArgs;
/// import com.pulumi.alicloud.ess.ServerGroupAttachment;
/// import com.pulumi.alicloud.ess.ServerGroupAttachmentArgs;
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
///         final var myName = String.format("%s-%s", name,defaultInteger.result());
///
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableDiskCategory("cloud_efficiency")
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         final var defaultGetInstanceTypes = EcsFunctions.getInstanceTypes(GetInstanceTypesArgs.builder()
///             .availabilityZone(default_.zones()[0].id())
///             .cpuCoreCount(2)
///             .memorySize(4)
///             .build());
///
///         final var defaultGetImages = EcsFunctions.getImages(GetImagesArgs.builder()
///             .nameRegex("^ubuntu_18.*64")
///             .mostRecent(true)
///             .owners("system")
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(myName)
///             .cidrBlock("172.16.0.0/16")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .cidrBlock("172.16.0.0/24")
///             .zoneId(default_.zones()[0].id())
///             .vswitchName(myName)
///             .build());
///
///         var defaultSecurityGroup = new SecurityGroup("defaultSecurityGroup", SecurityGroupArgs.builder()
///             .securityGroupName(myName)
///             .vpcId(defaultNetwork.id())
///             .build());
///
///         var defaultScalingGroup = new ScalingGroup("defaultScalingGroup", ScalingGroupArgs.builder()
///             .minSize(0)
///             .maxSize(2)
///             .scalingGroupName(myName)
///             .defaultCooldown(200)
///             .removalPolicies("OldestInstance")
///             .vswitchIds(defaultSwitch.id())
///             .build());
///
///         var defaultScalingConfiguration = new ScalingConfiguration("defaultScalingConfiguration", ScalingConfigurationArgs.builder()
///             .scalingGroupId(defaultScalingGroup.id())
///             .imageId(defaultGetImages.images()[0].id())
///             .instanceType(defaultGetInstanceTypes.instanceTypes()[0].id())
///             .securityGroupId(defaultSecurityGroup.id())
///             .systemDiskSize(50)
///             .forceDelete(true)
///             .active(true)
///             .enable(true)
///             .build());
///
///         var defaultServerGroup = new ServerGroup("defaultServerGroup", ServerGroupArgs.builder()
///             .serverGroupName(myName)
///             .vpcId(defaultNetwork.id())
///             .healthCheckConfig(ServerGroupHealthCheckConfigArgs.builder()
///                 .healthCheckEnabled(false)
///                 .build())
///             .stickySessionConfig(ServerGroupStickySessionConfigArgs.builder()
///                 .stickySessionEnabled(true)
///                 .cookie("tf-example")
///                 .stickySessionType("Server")
///                 .build())
///             .build());
///
///         var defaultServerGroupAttachment = new ServerGroupAttachment("defaultServerGroupAttachment", ServerGroupAttachmentArgs.builder()
///             .scalingGroupId(defaultScalingConfiguration.scalingGroupId())
///             .serverGroupId(defaultServerGroup.id())
///             .port(9000)
///             .type("ALB")
///             .weight(50)
///             .forceAttach(true)
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
///       min: 10000
///       max: 99999
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       vpcName: ${myName}
///       cidrBlock: 172.16.0.0/16
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vpcId: ${defaultNetwork.id}
///       cidrBlock: 172.16.0.0/24
///       zoneId: ${default.zones[0].id}
///       vswitchName: ${myName}
///   defaultSecurityGroup:
///     type: alicloud:ecs:SecurityGroup
///     name: default
///     properties:
///       securityGroupName: ${myName}
///       vpcId: ${defaultNetwork.id}
///   defaultScalingGroup:
///     type: alicloud:ess:ScalingGroup
///     name: default
///     properties:
///       minSize: '0'
///       maxSize: '2'
///       scalingGroupName: ${myName}
///       defaultCooldown: 200
///       removalPolicies:
///         - OldestInstance
///       vswitchIds:
///         - ${defaultSwitch.id}
///   defaultScalingConfiguration:
///     type: alicloud:ess:ScalingConfiguration
///     name: default
///     properties:
///       scalingGroupId: ${defaultScalingGroup.id}
///       imageId: ${defaultGetImages.images[0].id}
///       instanceType: ${defaultGetInstanceTypes.instanceTypes[0].id}
///       securityGroupId: ${defaultSecurityGroup.id}
///       systemDiskSize: 50
///       forceDelete: true
///       active: true
///       enable: true
///   defaultServerGroup:
///     type: alicloud:alb:ServerGroup
///     name: default
///     properties:
///       serverGroupName: ${myName}
///       vpcId: ${defaultNetwork.id}
///       healthCheckConfig:
///         healthCheckEnabled: 'false'
///       stickySessionConfig:
///         stickySessionEnabled: true
///         cookie: tf-example
///         stickySessionType: Server
///   defaultServerGroupAttachment:
///     type: alicloud:ess:ServerGroupAttachment
///     name: default
///     properties:
///       scalingGroupId: ${defaultScalingConfiguration.scalingGroupId}
///       serverGroupId: ${defaultServerGroup.id}
///       port: 9000
///       type: ALB
///       weight: 50
///       forceAttach: true
/// variables:
///   myName: ${name}-${defaultInteger.result}
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableDiskCategory: cloud_efficiency
///         availableResourceCreation: VSwitch
///   defaultGetInstanceTypes:
///     fn::invoke:
///       function: alicloud:ecs:getInstanceTypes
///       arguments:
///         availabilityZone: ${default.zones[0].id}
///         cpuCoreCount: 2
///         memorySize: 4
///   defaultGetImages:
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
class ServerGroupAttachment extends pulumi.CustomResource {
  /// If instances of scaling group are attached/removed from backend server when
  /// server group from scaling group. Default to false.
  late final pulumi.Output<bool?> forceAttach;
  /// The port will be used for Server Group backend server.
  late final pulumi.Output<int> port;
  /// ID of the scaling group.
  late final pulumi.Output<String> scalingGroupId;
  /// ID of Server Group.
  late final pulumi.Output<String> serverGroupId;
  /// The type of server group N. Valid values: ALB, NLB.
  late final pulumi.Output<String> type;
  /// The weight of an ECS instance attached to the Server Group.
  late final pulumi.Output<int> weight;

  /// Creates a new [ServerGroupAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServerGroupAttachment]. {@macro pulumi_ess_server_group_attachment_server_group_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServerGroupAttachment(
    String name, {
    ServerGroupAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ess/serverGroupAttachment:ServerGroupAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    forceAttach = registerOutput<bool?>('forceAttach');
    port = registerOutput<int>('port');
    scalingGroupId = registerOutput<String>('scalingGroupId');
    serverGroupId = registerOutput<String>('serverGroupId');
    type = registerOutput<String>('type');
    weight = registerOutput<int>('weight');
  }

  /// Gets an existing [ServerGroupAttachment] resource's state with the given [name] and [id].
  static ServerGroupAttachment get(
    String name,
    pulumi.Input<String> id, {
    ServerGroupAttachmentState? state,
  }) {
    return ServerGroupAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ServerGroupAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ess/serverGroupAttachment:ServerGroupAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    forceAttach = registerOutput<bool?>('forceAttach');
    port = registerOutput<int>('port');
    scalingGroupId = registerOutput<String>('scalingGroupId');
    serverGroupId = registerOutput<String>('serverGroupId');
    type = registerOutput<String>('type');
    weight = registerOutput<int>('weight');
  }
}
