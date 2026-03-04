import 'package:pulumi/pulumi.dart' as pulumi;
import 'lifecycle_hook_args.dart';
import 'lifecycle_hook_state.dart';

/// Provides a ESS lifecycle hook resource. More about Ess lifecycle hook, see [LifecycleHook](https://www.alibabacloud.com/help/doc-detail/73839.htm).
///
/// &gt; **NOTE:** Available since v1.13.0.
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
/// const default2 = new alicloud.vpc.Switch("default2", {
///     vpcId: defaultNetwork.id,
///     cidrBlock: "172.16.1.0/24",
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
///     vswitchName: `${name}-bar`,
/// });
/// const defaultSecurityGroup = new alicloud.ecs.SecurityGroup("default", {
///     name: myName,
///     vpcId: defaultNetwork.id,
/// });
/// const defaultScalingGroup = new alicloud.ess.ScalingGroup("default", {
///     minSize: 1,
///     maxSize: 1,
///     scalingGroupName: myName,
///     defaultCooldown: 200,
///     removalPolicies: [
///         "OldestInstance",
///         "NewestInstance",
///     ],
///     vswitchIds: [
///         defaultSwitch.id,
///         default2.id,
///     ],
/// });
/// const defaultLifecycleHook = new alicloud.ess.LifecycleHook("default", {
///     scalingGroupId: defaultScalingGroup.id,
///     name: myName,
///     lifecycleTransition: "SCALE_OUT",
///     heartbeatTimeout: 400,
///     notificationMetadata: "example",
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
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=my_name,
///     cidr_block="172.16.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vpc_id=default_network.id,
///     cidr_block="172.16.0.0/24",
///     zone_id=default.zones[0].id,
///     vswitch_name=my_name)
/// default2 = alicloud.vpc.Switch("default2",
///     vpc_id=default_network.id,
///     cidr_block="172.16.1.0/24",
///     zone_id=default.zones[0].id,
///     vswitch_name=f"{name}-bar")
/// default_security_group = alicloud.ecs.SecurityGroup("default",
///     name=my_name,
///     vpc_id=default_network.id)
/// default_scaling_group = alicloud.ess.ScalingGroup("default",
///     min_size=1,
///     max_size=1,
///     scaling_group_name=my_name,
///     default_cooldown=200,
///     removal_policies=[
///         "OldestInstance",
///         "NewestInstance",
///     ],
///     vswitch_ids=[
///         default_switch.id,
///         default2.id,
///     ])
/// default_lifecycle_hook = alicloud.ess.LifecycleHook("default",
///     scaling_group_id=default_scaling_group.id,
///     name=my_name,
///     lifecycle_transition="SCALE_OUT",
///     heartbeat_timeout=400,
///     notification_metadata="example")
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
///     var default2 = new AliCloud.Vpc.Switch("default2", new()
///     {
///         VpcId = defaultNetwork.Id,
///         CidrBlock = "172.16.1.0/24",
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         VswitchName = $"{name}-bar",
///     });
///
///     var defaultSecurityGroup = new AliCloud.Ecs.SecurityGroup("default", new()
///     {
///         Name = myName,
///         VpcId = defaultNetwork.Id,
///     });
///
///     var defaultScalingGroup = new AliCloud.Ess.ScalingGroup("default", new()
///     {
///         MinSize = 1,
///         MaxSize = 1,
///         ScalingGroupName = myName,
///         DefaultCooldown = 200,
///         RemovalPolicies = new[]
///         {
///             "OldestInstance",
///             "NewestInstance",
///         },
///         VswitchIds = new[]
///         {
///             defaultSwitch.Id,
///             default2.Id,
///         },
///     });
///
///     var defaultLifecycleHook = new AliCloud.Ess.LifecycleHook("default", new()
///     {
///         ScalingGroupId = defaultScalingGroup.Id,
///         Name = myName,
///         LifecycleTransition = "SCALE_OUT",
///         HeartbeatTimeout = 400,
///         NotificationMetadata = "example",
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
/// 		default2, err := vpc.NewSwitch(ctx, "default2", &vpc.SwitchArgs{
/// 			VpcId:       defaultNetwork.ID(),
/// 			CidrBlock:   pulumi.String("172.16.1.0/24"),
/// 			ZoneId:      pulumi.String(_default.Zones[0].Id),
/// 			VswitchName: pulumi.Sprintf("%v-bar", name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ecs.NewSecurityGroup(ctx, "default", &ecs.SecurityGroupArgs{
/// 			Name:  pulumi.String(myName),
/// 			VpcId: defaultNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultScalingGroup, err := ess.NewScalingGroup(ctx, "default", &ess.ScalingGroupArgs{
/// 			MinSize:          pulumi.Int(1),
/// 			MaxSize:          pulumi.Int(1),
/// 			ScalingGroupName: pulumi.String(myName),
/// 			DefaultCooldown:  pulumi.Int(200),
/// 			RemovalPolicies: pulumi.StringArray{
/// 				pulumi.String("OldestInstance"),
/// 				pulumi.String("NewestInstance"),
/// 			},
/// 			VswitchIds: pulumi.StringArray{
/// 				defaultSwitch.ID(),
/// 				default2.ID(),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ess.NewLifecycleHook(ctx, "default", &ess.LifecycleHookArgs{
/// 			ScalingGroupId:       defaultScalingGroup.ID(),
/// 			Name:                 pulumi.String(myName),
/// 			LifecycleTransition:  pulumi.String("SCALE_OUT"),
/// 			HeartbeatTimeout:     pulumi.Int(400),
/// 			NotificationMetadata: pulumi.String("example"),
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
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.ess.ScalingGroup;
/// import com.pulumi.alicloud.ess.ScalingGroupArgs;
/// import com.pulumi.alicloud.ess.LifecycleHook;
/// import com.pulumi.alicloud.ess.LifecycleHookArgs;
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
///         var default2 = new Switch("default2", SwitchArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .cidrBlock("172.16.1.0/24")
///             .zoneId(default_.zones()[0].id())
///             .vswitchName(String.format("%s-bar", name))
///             .build());
///
///         var defaultSecurityGroup = new SecurityGroup("defaultSecurityGroup", SecurityGroupArgs.builder()
///             .name(myName)
///             .vpcId(defaultNetwork.id())
///             .build());
///
///         var defaultScalingGroup = new ScalingGroup("defaultScalingGroup", ScalingGroupArgs.builder()
///             .minSize(1)
///             .maxSize(1)
///             .scalingGroupName(myName)
///             .defaultCooldown(200)
///             .removalPolicies(
///                 "OldestInstance",
///                 "NewestInstance")
///             .vswitchIds(
///                 defaultSwitch.id(),
///                 default2.id())
///             .build());
///
///         var defaultLifecycleHook = new LifecycleHook("defaultLifecycleHook", LifecycleHookArgs.builder()
///             .scalingGroupId(defaultScalingGroup.id())
///             .name(myName)
///             .lifecycleTransition("SCALE_OUT")
///             .heartbeatTimeout(400)
///             .notificationMetadata("example")
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
///   default2:
///     type: alicloud:vpc:Switch
///     properties:
///       vpcId: ${defaultNetwork.id}
///       cidrBlock: 172.16.1.0/24
///       zoneId: ${default.zones[0].id}
///       vswitchName: ${name}-bar
///   defaultSecurityGroup:
///     type: alicloud:ecs:SecurityGroup
///     name: default
///     properties:
///       name: ${myName}
///       vpcId: ${defaultNetwork.id}
///   defaultScalingGroup:
///     type: alicloud:ess:ScalingGroup
///     name: default
///     properties:
///       minSize: '1'
///       maxSize: '1'
///       scalingGroupName: ${myName}
///       defaultCooldown: 200
///       removalPolicies:
///         - OldestInstance
///         - NewestInstance
///       vswitchIds:
///         - ${defaultSwitch.id}
///         - ${default2.id}
///   defaultLifecycleHook:
///     type: alicloud:ess:LifecycleHook
///     name: default
///     properties:
///       scalingGroupId: ${defaultScalingGroup.id}
///       name: ${myName}
///       lifecycleTransition: SCALE_OUT
///       heartbeatTimeout: 400
///       notificationMetadata: example
/// variables:
///   myName: ${name}-${defaultInteger.result}
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableDiskCategory: cloud_efficiency
///         availableResourceCreation: VSwitch
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Module Support
///
/// You can use to the existing autoscaling module
/// to create a lifecycle hook, scaling group and configuration one-click.
///
/// ## Import
///
/// Ess lifecycle hook can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ess/lifecycleHook:LifecycleHook example ash-l12345
/// ```
class LifecycleHook extends pulumi.CustomResource {
  /// Defines the action the Auto Scaling group should take when the lifecycle hook timeout elapses. Applicable value: CONTINUE, ABANDON, ROLLBACK, default value: CONTINUE.
  late final pulumi.Output<String?> defaultResult;

  /// Defines the amount of time, in seconds, that can elapse before the lifecycle hook times out. When the lifecycle hook times out, Auto Scaling performs the action defined in the default_result parameter. Default value: 600.
  late final pulumi.Output<int?> heartbeatTimeout;

  /// Type of Scaling activity attached to lifecycle hook. Supported value: SCALE_OUT, SCALE_IN.
  late final pulumi.Output<String> lifecycleTransition;

  /// The name of the lifecycle hook, which must contain 2-64 characters (English or Chinese), starting with numbers, English letters or Chinese characters, and can contain number, underscores `_`, hypens `-`, and decimal point `.`. If this parameter value is not specified, the default value is lifecycle hook id.
  late final pulumi.Output<String> name;

  /// The Arn of notification target.
  late final pulumi.Output<String> notificationArn;

  /// Additional information that you want to include when Auto Scaling sends a message to the notification target.
  late final pulumi.Output<String> notificationMetadata;

  /// The ID of the Auto Scaling group to which you want to assign the lifecycle hook.
  late final pulumi.Output<String> scalingGroupId;

  /// Creates a new [LifecycleHook].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LifecycleHook]. {@macro pulumi_ess_lifecycle_hook_lifecycle_hook_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LifecycleHook(
    String name, {
    LifecycleHookArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ess/lifecycleHook:LifecycleHook',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    defaultResult = registerOutput<String?>('defaultResult');
    heartbeatTimeout = registerOutput<int?>('heartbeatTimeout');
    lifecycleTransition = registerOutput<String>('lifecycleTransition');
    this.name = registerOutput<String>('name');
    notificationArn = registerOutput<String>('notificationArn');
    notificationMetadata = registerOutput<String>('notificationMetadata');
    scalingGroupId = registerOutput<String>('scalingGroupId');
  }

  /// Gets an existing [LifecycleHook] resource's state with the given [name] and [id].
  static LifecycleHook get(
    String name,
    pulumi.Input<String> id, {
    LifecycleHookState? state,
  }) {
    return LifecycleHook._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LifecycleHook._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ess/lifecycleHook:LifecycleHook',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    defaultResult = registerOutput<String?>('defaultResult');
    heartbeatTimeout = registerOutput<int?>('heartbeatTimeout');
    lifecycleTransition = registerOutput<String>('lifecycleTransition');
    this.name = registerOutput<String>('name');
    notificationArn = registerOutput<String>('notificationArn');
    notificationMetadata = registerOutput<String>('notificationMetadata');
    scalingGroupId = registerOutput<String>('scalingGroupId');
  }
}
