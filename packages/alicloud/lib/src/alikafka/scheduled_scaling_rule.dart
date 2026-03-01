import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduled_scaling_rule_args.dart';

/// Provides a Alikafka Scheduled Scaling Rule resource.
///
/// Elastic timing strategy.
///
/// For information about Alikafka Scheduled Scaling Rule and how to use it, see [What is Scheduled Scaling Rule](https://next.api.alibabacloud.com/document/alikafka/2019-09-16/CreateScheduledScalingRule).
///
/// > **NOTE:** Available since v1.269.0.
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
/// const _default = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "10.4.0.0/16",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vswitchName: name,
///     vpcId: defaultNetwork.id,
///     cidrBlock: "10.4.0.0/24",
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
/// });
/// const defaultSecurityGroup = new alicloud.ecs.SecurityGroup("default", {vpcId: defaultNetwork.id});
/// const defaultInstance = new alicloud.alikafka.Instance("default", {
///     deployType: 4,
///     instanceType: "alikafka_serverless",
///     vswitchId: defaultSwitch.id,
///     specType: "normal",
///     serviceVersion: "3.3.1",
///     securityGroup: defaultSecurityGroup.id,
///     config: "{\"enable.acl\":\"true\"}",
///     serverlessConfig: {
///         reservedPublishCapacity: 60,
///         reservedSubscribeCapacity: 60,
///     },
/// });
/// const defaultScheduledScalingRule = new alicloud.alikafka.ScheduledScalingRule("default", {
///     scheduleType: "repeat",
///     reservedSubFlow: 200,
///     reservedPubFlow: 200,
///     timeZone: "GMT+8",
///     durationMinutes: 100,
///     firstScheduledTime: 1769578000000,
///     enable: false,
///     repeatType: "Weekly",
///     weeklyTypes: [
///         "Monday",
///         "Tuesday",
///         "Wednesday",
///         "Thursday",
///         "Friday",
///     ],
///     ruleName: name,
///     instanceId: defaultInstance.id,
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
/// default = alicloud.get_zones(available_resource_creation="VSwitch")
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="10.4.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vswitch_name=name,
///     vpc_id=default_network.id,
///     cidr_block="10.4.0.0/24",
///     zone_id=default.zones[0].id)
/// default_security_group = alicloud.ecs.SecurityGroup("default", vpc_id=default_network.id)
/// default_instance = alicloud.alikafka.Instance("default",
///     deploy_type=4,
///     instance_type="alikafka_serverless",
///     vswitch_id=default_switch.id,
///     spec_type="normal",
///     service_version="3.3.1",
///     security_group=default_security_group.id,
///     config="{\"enable.acl\":\"true\"}",
///     serverless_config={
///         "reserved_publish_capacity": 60,
///         "reserved_subscribe_capacity": 60,
///     })
/// default_scheduled_scaling_rule = alicloud.alikafka.ScheduledScalingRule("default",
///     schedule_type="repeat",
///     reserved_sub_flow=200,
///     reserved_pub_flow=200,
///     time_zone="GMT+8",
///     duration_minutes=100,
///     first_scheduled_time=1769578000000,
///     enable=False,
///     repeat_type="Weekly",
///     weekly_types=[
///         "Monday",
///         "Tuesday",
///         "Wednesday",
///         "Thursday",
///         "Friday",
///     ],
///     rule_name=name,
///     instance_id=default_instance.id)
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
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "VSwitch",
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
///         VpcId = defaultNetwork.Id,
///         CidrBlock = "10.4.0.0/24",
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///     });
///
///     var defaultSecurityGroup = new AliCloud.Ecs.SecurityGroup("default", new()
///     {
///         VpcId = defaultNetwork.Id,
///     });
///
///     var defaultInstance = new AliCloud.Alikafka.Instance("default", new()
///     {
///         DeployType = 4,
///         InstanceType = "alikafka_serverless",
///         VswitchId = defaultSwitch.Id,
///         SpecType = "normal",
///         ServiceVersion = "3.3.1",
///         SecurityGroup = defaultSecurityGroup.Id,
///         Config = "{\"enable.acl\":\"true\"}",
///         ServerlessConfig = new AliCloud.alikafka.Inputs.InstanceServerlessConfigArgs
///         {
///             ReservedPublishCapacity = 60,
///             ReservedSubscribeCapacity = 60,
///         },
///     });
///
///     var defaultScheduledScalingRule = new AliCloud.Alikafka.ScheduledScalingRule("default", new()
///     {
///         ScheduleType = "repeat",
///         ReservedSubFlow = 200,
///         ReservedPubFlow = 200,
///         TimeZone = "GMT+8",
///         DurationMinutes = 100,
///         FirstScheduledTime = 1769578000000,
///         Enable = false,
///         RepeatType = "Weekly",
///         WeeklyTypes = new[]
///         {
///             "Monday",
///             "Tuesday",
///             "Wednesday",
///             "Thursday",
///             "Friday",
///         },
///         RuleName = name,
///         InstanceId = defaultInstance.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/alikafka"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
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
/// 		_default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
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
/// 			VpcId:       defaultNetwork.ID(),
/// 			CidrBlock:   pulumi.String("10.4.0.0/24"),
/// 			ZoneId:      pulumi.String(_default.Zones[0].Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSecurityGroup, err := ecs.NewSecurityGroup(ctx, "default", &ecs.SecurityGroupArgs{
/// 			VpcId: defaultNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInstance, err := alikafka.NewInstance(ctx, "default", &alikafka.InstanceArgs{
/// 			DeployType:     pulumi.Int(4),
/// 			InstanceType:   pulumi.String("alikafka_serverless"),
/// 			VswitchId:      defaultSwitch.ID(),
/// 			SpecType:       pulumi.String("normal"),
/// 			ServiceVersion: pulumi.String("3.3.1"),
/// 			SecurityGroup:  defaultSecurityGroup.ID(),
/// 			Config:         pulumi.String("{\"enable.acl\":\"true\"}"),
/// 			ServerlessConfig: &alikafka.InstanceServerlessConfigArgs{
/// 				ReservedPublishCapacity:   pulumi.Int(60),
/// 				ReservedSubscribeCapacity: pulumi.Int(60),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = alikafka.NewScheduledScalingRule(ctx, "default", &alikafka.ScheduledScalingRuleArgs{
/// 			ScheduleType:       pulumi.String("repeat"),
/// 			ReservedSubFlow:    pulumi.Int(200),
/// 			ReservedPubFlow:    pulumi.Int(200),
/// 			TimeZone:           pulumi.String("GMT+8"),
/// 			DurationMinutes:    pulumi.Int(100),
/// 			FirstScheduledTime: pulumi.Int(1769578000000),
/// 			Enable:             pulumi.Bool(false),
/// 			RepeatType:         pulumi.String("Weekly"),
/// 			WeeklyTypes: pulumi.StringArray{
/// 				pulumi.String("Monday"),
/// 				pulumi.String("Tuesday"),
/// 				pulumi.String("Wednesday"),
/// 				pulumi.String("Thursday"),
/// 				pulumi.String("Friday"),
/// 			},
/// 			RuleName:   pulumi.String(name),
/// 			InstanceId: defaultInstance.ID(),
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
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.alikafka.Instance;
/// import com.pulumi.alicloud.alikafka.InstanceArgs;
/// import com.pulumi.alicloud.alikafka.inputs.InstanceServerlessConfigArgs;
/// import com.pulumi.alicloud.alikafka.ScheduledScalingRule;
/// import com.pulumi.alicloud.alikafka.ScheduledScalingRuleArgs;
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
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("10.4.0.0/16")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vswitchName(name)
///             .vpcId(defaultNetwork.id())
///             .cidrBlock("10.4.0.0/24")
///             .zoneId(default_.zones()[0].id())
///             .build());
///
///         var defaultSecurityGroup = new SecurityGroup("defaultSecurityGroup", SecurityGroupArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .build());
///
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .deployType(4)
///             .instanceType("alikafka_serverless")
///             .vswitchId(defaultSwitch.id())
///             .specType("normal")
///             .serviceVersion("3.3.1")
///             .securityGroup(defaultSecurityGroup.id())
///             .config("{\"enable.acl\":\"true\"}")
///             .serverlessConfig(InstanceServerlessConfigArgs.builder()
///                 .reservedPublishCapacity(60)
///                 .reservedSubscribeCapacity(60)
///                 .build())
///             .build());
///
///         var defaultScheduledScalingRule = new ScheduledScalingRule("defaultScheduledScalingRule", ScheduledScalingRuleArgs.builder()
///             .scheduleType("repeat")
///             .reservedSubFlow(200)
///             .reservedPubFlow(200)
///             .timeZone("GMT+8")
///             .durationMinutes(100)
///             .firstScheduledTime(1769578000000)
///             .enable(false)
///             .repeatType("Weekly")
///             .weeklyTypes(
///                 "Monday",
///                 "Tuesday",
///                 "Wednesday",
///                 "Thursday",
///                 "Friday")
///             .ruleName(name)
///             .instanceId(defaultInstance.id())
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
///       vpcName: ${name}
///       cidrBlock: 10.4.0.0/16
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vswitchName: ${name}
///       vpcId: ${defaultNetwork.id}
///       cidrBlock: 10.4.0.0/24
///       zoneId: ${default.zones[0].id}
///   defaultSecurityGroup:
///     type: alicloud:ecs:SecurityGroup
///     name: default
///     properties:
///       vpcId: ${defaultNetwork.id}
///   defaultInstance:
///     type: alicloud:alikafka:Instance
///     name: default
///     properties:
///       deployType: '4'
///       instanceType: alikafka_serverless
///       vswitchId: ${defaultSwitch.id}
///       specType: normal
///       serviceVersion: 3.3.1
///       securityGroup: ${defaultSecurityGroup.id}
///       config: '{"enable.acl":"true"}'
///       serverlessConfig:
///         reservedPublishCapacity: 60
///         reservedSubscribeCapacity: 60
///   defaultScheduledScalingRule:
///     type: alicloud:alikafka:ScheduledScalingRule
///     name: default
///     properties:
///       scheduleType: repeat
///       reservedSubFlow: '200'
///       reservedPubFlow: '200'
///       timeZone: GMT+8
///       durationMinutes: '100'
///       firstScheduledTime: '1769578000000'
///       enable: false
///       repeatType: Weekly
///       weeklyTypes:
///         - Monday
///         - Tuesday
///         - Wednesday
///         - Thursday
///         - Friday
///       ruleName: ${name}
///       instanceId: ${defaultInstance.id}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableResourceCreation: VSwitch
/// ```
///
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Alikafka Scheduled Scaling Rule can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:alikafka/scheduledScalingRule:ScheduledScalingRule example <instance_id>:<rule_name>
/// ```
class ScheduledScalingRule extends pulumi.CustomResource {
  /// The duration (unit: minutes) of a scheduled elastic task.
  ///
  /// > **NOTE:** The parameter value must be at least 15 minutes.
  late final pulumi.Output<int> durationMinutes;
  /// Enables or disables the scheduled task policy. Valid values:
  late final pulumi.Output<bool?> enable;
  /// The time when the scheduled policy starts to execute.
  late final pulumi.Output<int> firstScheduledTime;
  /// The instance ID.
  late final pulumi.Output<String> instanceId;
  /// When `schedule_type` is `repeat`, the parameter is required. Valid values:
  /// -`Daily`: Daily scheduled task.
  /// -`Weekly`: Weekly scheduled task.
  late final pulumi.Output<String?> repeatType;
  /// The scheduled elastic reserved production specification (unit: MB/s).
  late final pulumi.Output<int> reservedPubFlow;
  /// The scheduled elastic reserved consumption specification (unit: MB/s).
  late final pulumi.Output<int> reservedSubFlow;
  /// The name of the scheduled policy rule.
  late final pulumi.Output<String> ruleName;
  /// The schedule type. Valid values:
  late final pulumi.Output<String> scheduleType;
  /// The time zone (Coordinated Universal Time).
  late final pulumi.Output<String> timeZone;
  /// The weekly types. Supports execution on multiple days. When `repeat_type` is set to `Weekly`, you need to input this parameter. Valid values: `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday`, `Sunday`.
  late final pulumi.Output<List<String>?> weeklyTypes;

  /// Creates a new [ScheduledScalingRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ScheduledScalingRule]. {@macro pulumi_alikafka_scheduled_scaling_rule_scheduled_scaling_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ScheduledScalingRule(
    String name, {
    ScheduledScalingRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:alikafka/scheduledScalingRule:ScheduledScalingRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.durationMinutes = registerOutput<int>('durationMinutes');
    this.enable = registerOutput<bool?>('enable');
    this.firstScheduledTime = registerOutput<int>('firstScheduledTime');
    this.instanceId = registerOutput<String>('instanceId');
    this.repeatType = registerOutput<String?>('repeatType');
    this.reservedPubFlow = registerOutput<int>('reservedPubFlow');
    this.reservedSubFlow = registerOutput<int>('reservedSubFlow');
    this.ruleName = registerOutput<String>('ruleName');
    this.scheduleType = registerOutput<String>('scheduleType');
    this.timeZone = registerOutput<String>('timeZone');
    this.weeklyTypes = registerOutput<List<String>?>('weeklyTypes');
  }
}
