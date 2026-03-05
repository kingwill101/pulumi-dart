import 'package:pulumi/pulumi.dart' as pulumi;
import 'ecs_invocation_args.dart';
import 'ecs_invocation_state.dart';

/// Provides a ECS Invocation resource.
///
/// For information about ECS Invocation and how to use it, see [What is Invocation](https://www.alibabacloud.com/help/en/elastic-compute-service/latest/invokecommand#t9958.html).
///
/// &gt; **NOTE:** Available since v1.168.0.
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
///     availableDiskCategory: "cloud_efficiency",
///     availableResourceCreation: "VSwitch",
/// });
/// const defaultGetInstanceTypes = _default.then(_default => alicloud.ecs.getInstanceTypes({
///     availabilityZone: _default.zones?.[0]?.id,
///     cpuCoreCount: 2,
///     memorySize: 8,
///     instanceTypeFamily: "ecs.g6",
/// }));
/// const defaultGetImages = alicloud.ecs.getImages({
///     nameRegex: "^ubuntu_18.*64",
///     mostRecent: true,
///     owners: "system",
/// });
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "172.16.0.0/16",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vpcId: defaultNetwork.id,
///     cidrBlock: "172.16.0.0/24",
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
///     vswitchName: name,
/// });
/// const defaultSecurityGroup = new alicloud.ecs.SecurityGroup("default", {
///     securityGroupName: name,
///     vpcId: defaultNetwork.id,
/// });
/// const defaultSecurityGroupRule = new alicloud.ecs.SecurityGroupRule("default", {
///     type: "ingress",
///     ipProtocol: "tcp",
///     nicType: "intranet",
///     policy: "accept",
///     portRange: "22/22",
///     priority: 1,
///     securityGroupId: defaultSecurityGroup.id,
///     cidrIp: "172.16.0.0/24",
/// });
/// const defaultInstance = new alicloud.ecs.Instance("default", {
///     vswitchId: defaultSwitch.id,
///     imageId: defaultGetImages.then(defaultGetImages => defaultGetImages.images?.[0]?.id),
///     instanceType: defaultGetInstanceTypes.then(defaultGetInstanceTypes => defaultGetInstanceTypes.instanceTypes?.[0]?.id),
///     systemDiskCategory: "cloud_efficiency",
///     internetChargeType: "PayByTraffic",
///     internetMaxBandwidthOut: 5,
///     securityGroups: [defaultSecurityGroup.id],
///     instanceName: name,
/// });
/// const defaultCommand = new alicloud.ecs.Command("default", {
///     name: name,
///     commandContent: "ZWNobyBoZWxsbyx7e25hbWV9fQ==",
///     description: "For Terraform Test",
///     type: "RunShellScript",
///     workingDir: "/root",
///     enableParameter: true,
/// });
/// const defaultEcsInvocation = new alicloud.ecs.EcsInvocation("default", {
///     commandId: defaultCommand.id,
///     instanceIds: [defaultInstance.id],
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
/// default = alicloud.get_zones(available_disk_category="cloud_efficiency",
///     available_resource_creation="VSwitch")
/// default_get_instance_types = alicloud.ecs.get_instance_types(availability_zone=default.zones[0].id,
///     cpu_core_count=2,
///     memory_size=8,
///     instance_type_family="ecs.g6")
/// default_get_images = alicloud.ecs.get_images(name_regex="^ubuntu_18.*64",
///     most_recent=True,
///     owners="system")
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="172.16.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vpc_id=default_network.id,
///     cidr_block="172.16.0.0/24",
///     zone_id=default.zones[0].id,
///     vswitch_name=name)
/// default_security_group = alicloud.ecs.SecurityGroup("default",
///     security_group_name=name,
///     vpc_id=default_network.id)
/// default_security_group_rule = alicloud.ecs.SecurityGroupRule("default",
///     type="ingress",
///     ip_protocol="tcp",
///     nic_type="intranet",
///     policy="accept",
///     port_range="22/22",
///     priority=1,
///     security_group_id=default_security_group.id,
///     cidr_ip="172.16.0.0/24")
/// default_instance = alicloud.ecs.Instance("default",
///     vswitch_id=default_switch.id,
///     image_id=default_get_images.images[0].id,
///     instance_type=default_get_instance_types.instance_types[0].id,
///     system_disk_category="cloud_efficiency",
///     internet_charge_type="PayByTraffic",
///     internet_max_bandwidth_out=5,
///     security_groups=[default_security_group.id],
///     instance_name=name)
/// default_command = alicloud.ecs.Command("default",
///     name=name,
///     command_content="ZWNobyBoZWxsbyx7e25hbWV9fQ==",
///     description="For Terraform Test",
///     type="RunShellScript",
///     working_dir="/root",
///     enable_parameter=True)
/// default_ecs_invocation = alicloud.ecs.EcsInvocation("default",
///     command_id=default_command.id,
///     instance_ids=[default_instance.id])
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
///         AvailableDiskCategory = "cloud_efficiency",
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var defaultGetInstanceTypes = AliCloud.Ecs.GetInstanceTypes.Invoke(new()
///     {
///         AvailabilityZone = @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///         CpuCoreCount = 2,
///         MemorySize = 8,
///         InstanceTypeFamily = "ecs.g6",
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
///         VpcName = name,
///         CidrBlock = "172.16.0.0/16",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VpcId = defaultNetwork.Id,
///         CidrBlock = "172.16.0.0/24",
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         VswitchName = name,
///     });
///
///     var defaultSecurityGroup = new AliCloud.Ecs.SecurityGroup("default", new()
///     {
///         SecurityGroupName = name,
///         VpcId = defaultNetwork.Id,
///     });
///
///     var defaultSecurityGroupRule = new AliCloud.Ecs.SecurityGroupRule("default", new()
///     {
///         Type = "ingress",
///         IpProtocol = "tcp",
///         NicType = "intranet",
///         Policy = "accept",
///         PortRange = "22/22",
///         Priority = 1,
///         SecurityGroupId = defaultSecurityGroup.Id,
///         CidrIp = "172.16.0.0/24",
///     });
///
///     var defaultInstance = new AliCloud.Ecs.Instance("default", new()
///     {
///         VswitchId = defaultSwitch.Id,
///         ImageId = defaultGetImages.Apply(getImagesResult => getImagesResult.Images[0]?.Id),
///         InstanceType = defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.InstanceTypes[0]?.Id),
///         SystemDiskCategory = "cloud_efficiency",
///         InternetChargeType = "PayByTraffic",
///         InternetMaxBandwidthOut = 5,
///         SecurityGroups = new[]
///         {
///             defaultSecurityGroup.Id,
///         },
///         InstanceName = name,
///     });
///
///     var defaultCommand = new AliCloud.Ecs.Command("default", new()
///     {
///         Name = name,
///         CommandContent = "ZWNobyBoZWxsbyx7e25hbWV9fQ==",
///         Description = "For Terraform Test",
///         Type = "RunShellScript",
///         WorkingDir = "/root",
///         EnableParameter = true,
///     });
///
///     var defaultEcsInvocation = new AliCloud.Ecs.EcsInvocation("default", new()
///     {
///         CommandId = defaultCommand.Id,
///         InstanceIds = new[]
///         {
///             defaultInstance.Id,
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
/// 			AvailableDiskCategory:     pulumi.StringRef("cloud_efficiency"),
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetInstanceTypes, err := ecs.GetInstanceTypes(ctx, &ecs.GetInstanceTypesArgs{
/// 			AvailabilityZone:   pulumi.StringRef(_default.Zones[0].Id),
/// 			CpuCoreCount:       pulumi.IntRef(2),
/// 			MemorySize:         pulumi.Float64Ref(8),
/// 			InstanceTypeFamily: pulumi.StringRef("ecs.g6"),
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
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("172.16.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VpcId:       defaultNetwork.ID(),
/// 			CidrBlock:   pulumi.String("172.16.0.0/24"),
/// 			ZoneId:      pulumi.String(_default.Zones[0].Id),
/// 			VswitchName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSecurityGroup, err := ecs.NewSecurityGroup(ctx, "default", &ecs.SecurityGroupArgs{
/// 			SecurityGroupName: pulumi.String(name),
/// 			VpcId:             defaultNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ecs.NewSecurityGroupRule(ctx, "default", &ecs.SecurityGroupRuleArgs{
/// 			Type:            pulumi.String("ingress"),
/// 			IpProtocol:      pulumi.String("tcp"),
/// 			NicType:         pulumi.String("intranet"),
/// 			Policy:          pulumi.String("accept"),
/// 			PortRange:       pulumi.String("22/22"),
/// 			Priority:        pulumi.Int(1),
/// 			SecurityGroupId: defaultSecurityGroup.ID(),
/// 			CidrIp:          pulumi.String("172.16.0.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInstance, err := ecs.NewInstance(ctx, "default", &ecs.InstanceArgs{
/// 			VswitchId:               defaultSwitch.ID(),
/// 			ImageId:                 pulumi.String(defaultGetImages.Images[0].Id),
/// 			InstanceType:            pulumi.String(defaultGetInstanceTypes.InstanceTypes[0].Id),
/// 			SystemDiskCategory:      pulumi.String("cloud_efficiency"),
/// 			InternetChargeType:      pulumi.String("PayByTraffic"),
/// 			InternetMaxBandwidthOut: pulumi.Int(5),
/// 			SecurityGroups: pulumi.StringArray{
/// 				defaultSecurityGroup.ID(),
/// 			},
/// 			InstanceName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultCommand, err := ecs.NewCommand(ctx, "default", &ecs.CommandArgs{
/// 			Name:            pulumi.String(name),
/// 			CommandContent:  pulumi.String("ZWNobyBoZWxsbyx7e25hbWV9fQ=="),
/// 			Description:     pulumi.String("For Terraform Test"),
/// 			Type:            pulumi.String("RunShellScript"),
/// 			WorkingDir:      pulumi.String("/root"),
/// 			EnableParameter: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ecs.NewEcsInvocation(ctx, "default", &ecs.EcsInvocationArgs{
/// 			CommandId: defaultCommand.ID(),
/// 			InstanceIds: pulumi.StringArray{
/// 				defaultInstance.ID(),
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
/// import com.pulumi.alicloud.ecs.inputs.GetImagesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroupRule;
/// import com.pulumi.alicloud.ecs.SecurityGroupRuleArgs;
/// import com.pulumi.alicloud.ecs.Instance;
/// import com.pulumi.alicloud.ecs.InstanceArgs;
/// import com.pulumi.alicloud.ecs.Command;
/// import com.pulumi.alicloud.ecs.CommandArgs;
/// import com.pulumi.alicloud.ecs.EcsInvocation;
/// import com.pulumi.alicloud.ecs.EcsInvocationArgs;
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
///             .availableDiskCategory("cloud_efficiency")
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         final var defaultGetInstanceTypes = EcsFunctions.getInstanceTypes(GetInstanceTypesArgs.builder()
///             .availabilityZone(default_.zones()[0].id())
///             .cpuCoreCount(2)
///             .memorySize(8)
///             .instanceTypeFamily("ecs.g6")
///             .build());
///
///         final var defaultGetImages = EcsFunctions.getImages(GetImagesArgs.builder()
///             .nameRegex("^ubuntu_18.*64")
///             .mostRecent(true)
///             .owners("system")
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("172.16.0.0/16")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .cidrBlock("172.16.0.0/24")
///             .zoneId(default_.zones()[0].id())
///             .vswitchName(name)
///             .build());
///
///         var defaultSecurityGroup = new SecurityGroup("defaultSecurityGroup", SecurityGroupArgs.builder()
///             .securityGroupName(name)
///             .vpcId(defaultNetwork.id())
///             .build());
///
///         var defaultSecurityGroupRule = new SecurityGroupRule("defaultSecurityGroupRule", SecurityGroupRuleArgs.builder()
///             .type("ingress")
///             .ipProtocol("tcp")
///             .nicType("intranet")
///             .policy("accept")
///             .portRange("22/22")
///             .priority(1)
///             .securityGroupId(defaultSecurityGroup.id())
///             .cidrIp("172.16.0.0/24")
///             .build());
///
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .vswitchId(defaultSwitch.id())
///             .imageId(defaultGetImages.images()[0].id())
///             .instanceType(defaultGetInstanceTypes.instanceTypes()[0].id())
///             .systemDiskCategory("cloud_efficiency")
///             .internetChargeType("PayByTraffic")
///             .internetMaxBandwidthOut(5)
///             .securityGroups(defaultSecurityGroup.id())
///             .instanceName(name)
///             .build());
///
///         var defaultCommand = new Command("defaultCommand", CommandArgs.builder()
///             .name(name)
///             .commandContent("ZWNobyBoZWxsbyx7e25hbWV9fQ==")
///             .description("For Terraform Test")
///             .type("RunShellScript")
///             .workingDir("/root")
///             .enableParameter(true)
///             .build());
///
///         var defaultEcsInvocation = new EcsInvocation("defaultEcsInvocation", EcsInvocationArgs.builder()
///             .commandId(defaultCommand.id())
///             .instanceIds(defaultInstance.id())
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
///       cidrBlock: 172.16.0.0/16
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vpcId: ${defaultNetwork.id}
///       cidrBlock: 172.16.0.0/24
///       zoneId: ${default.zones[0].id}
///       vswitchName: ${name}
///   defaultSecurityGroup:
///     type: alicloud:ecs:SecurityGroup
///     name: default
///     properties:
///       securityGroupName: ${name}
///       vpcId: ${defaultNetwork.id}
///   defaultSecurityGroupRule:
///     type: alicloud:ecs:SecurityGroupRule
///     name: default
///     properties:
///       type: ingress
///       ipProtocol: tcp
///       nicType: intranet
///       policy: accept
///       portRange: 22/22
///       priority: 1
///       securityGroupId: ${defaultSecurityGroup.id}
///       cidrIp: 172.16.0.0/24
///   defaultInstance:
///     type: alicloud:ecs:Instance
///     name: default
///     properties:
///       vswitchId: ${defaultSwitch.id}
///       imageId: ${defaultGetImages.images[0].id}
///       instanceType: ${defaultGetInstanceTypes.instanceTypes[0].id}
///       systemDiskCategory: cloud_efficiency
///       internetChargeType: PayByTraffic
///       internetMaxBandwidthOut: 5
///       securityGroups:
///         - ${defaultSecurityGroup.id}
///       instanceName: ${name}
///   defaultCommand:
///     type: alicloud:ecs:Command
///     name: default
///     properties:
///       name: ${name}
///       commandContent: ZWNobyBoZWxsbyx7e25hbWV9fQ==
///       description: For Terraform Test
///       type: RunShellScript
///       workingDir: /root
///       enableParameter: true
///   defaultEcsInvocation:
///     type: alicloud:ecs:EcsInvocation
///     name: default
///     properties:
///       commandId: ${defaultCommand.id}
///       instanceIds:
///         - ${defaultInstance.id}
/// variables:
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
///         memorySize: 8
///         instanceTypeFamily: ecs.g6
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
///
/// ## Import
///
/// ECS Invocation can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ecs/ecsInvocation:EcsInvocation example <id>
/// ```
class EcsInvocation extends pulumi.CustomResource {
  /// The ID of the command.
  late final pulumi.Output<String> commandId;
  /// The schedule on which the recurring execution of the command takes place. Take note of the following items:
  /// * The interval between two consecutive executions must be 10 seconds or longer. The minimum interval cannot be less than the timeout period of the execution.
  /// * When you set Timed to true, you must specify Frequency.
  /// * The value of the Frequency parameter is a cron expression. For more information, see [Cron expression](https://www.alibabacloud.com/help/en/elastic-compute-service/latest/cron-expression).
  late final pulumi.Output<String?> frequency;
  /// The list of instances to execute the command. You can specify up to 50 instance IDs.
  late final pulumi.Output<List<String>> instanceIds;
  /// The key-value pairs of custom parameters to be passed in when the custom parameter feature is enabled.  Number of custom parameters: 0 to 10.
  late final pulumi.Output<Map<String, String>?> parameters;
  /// Specifies how to run the command. Valid values: `Once`, `Period`, `NextRebootOnly`, `EveryReboot`. Default value: When `timed` is set to false and Frequency is not specified, the default value of `repeat_mode` is `Once`. When `Timed` is set to true and Frequency is specified, `period` is used as the value of RepeatMode regardless of whether `repeat_mode` is specified.
  late final pulumi.Output<String> repeatMode;
  /// The status of the resource.
  late final pulumi.Output<String> status;
  /// Specifies whether to periodically run the command. Default value: `false`.
  late final pulumi.Output<bool> timed;
  /// The username that is used to run the command on the ECS instance.
  /// * For Linux instances, the root username is used.
  /// * For Windows instances, the System username is used.
  /// * You can also specify other usernames that already exist in the ECS instance to run the command. It is more secure to run Cloud Assistant commands as a regular user. For more information, see [Configure a regular user to run Cloud Assistant commands](https://www.alibabacloud.com/help/en/elastic-compute-service/latest/run-cloud-assistant-commands-as-a-regular-user).
  late final pulumi.Output<String> username;
  /// The name of the password used to run the command on a Windows instance.
  late final pulumi.Output<String?> windowsPasswordName;

  /// Creates a new [EcsInvocation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EcsInvocation]. {@macro pulumi_ecs_ecs_invocation_ecs_invocation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EcsInvocation(
    String name, {
    EcsInvocationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ecs/ecsInvocation:EcsInvocation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    commandId = registerOutput<String>('commandId');
    frequency = registerOutput<String?>('frequency');
    instanceIds = registerOutput<List<String>>('instanceIds');
    parameters = registerOutput<Map<String, String>?>('parameters');
    repeatMode = registerOutput<String>('repeatMode');
    status = registerOutput<String>('status');
    timed = registerOutput<bool>('timed');
    username = registerOutput<String>('username');
    windowsPasswordName = registerOutput<String?>('windowsPasswordName');
  }

  /// Gets an existing [EcsInvocation] resource's state with the given [name] and [id].
  static EcsInvocation get(
    String name,
    pulumi.Input<String> id, {
    EcsInvocationState? state,
  }) {
    return EcsInvocation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EcsInvocation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ecs/ecsInvocation:EcsInvocation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    commandId = registerOutput<String>('commandId');
    frequency = registerOutput<String?>('frequency');
    instanceIds = registerOutput<List<String>>('instanceIds');
    parameters = registerOutput<Map<String, String>?>('parameters');
    repeatMode = registerOutput<String>('repeatMode');
    status = registerOutput<String>('status');
    timed = registerOutput<bool>('timed');
    username = registerOutput<String>('username');
    windowsPasswordName = registerOutput<String?>('windowsPasswordName');
  }
}
