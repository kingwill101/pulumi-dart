import 'package:pulumi/pulumi.dart' as pulumi;
import 'notification_args.dart';
import 'notification_state.dart';

/// Provides a ESS notification resource. More about Ess notification, see [Autoscaling Notification](https://www.alibabacloud.com/help/doc-detail/71114.htm).
///
/// &gt; **NOTE:** Available since v1.55.0.
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
/// const _default = alicloud.getRegions({
///     current: true,
/// });
/// const defaultGetAccount = alicloud.getAccount({});
/// const defaultGetZones = alicloud.getZones({
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
///     zoneId: defaultGetZones.then(defaultGetZones => defaultGetZones.zones?.[0]?.id),
///     vswitchName: myName,
/// });
/// const defaultScalingGroup = new alicloud.ess.ScalingGroup("default", {
///     minSize: 1,
///     maxSize: 1,
///     scalingGroupName: myName,
///     removalPolicies: [
///         "OldestInstance",
///         "NewestInstance",
///     ],
///     vswitchIds: [defaultSwitch.id],
/// });
/// const defaultQueue = new alicloud.mns.Queue("default", {name: myName});
/// const defaultNotification = new alicloud.ess.Notification("default", {
///     scalingGroupId: defaultScalingGroup.id,
///     notificationTypes: [
///         "AUTOSCALING:SCALE_OUT_SUCCESS",
///         "AUTOSCALING:SCALE_OUT_ERROR",
///     ],
///     notificationArn: pulumi.all([_default, defaultGetAccount, defaultQueue.name]).apply(([_default, defaultGetAccount, name]) => `acs:ess:${_default.regions?.[0]?.id}:${defaultGetAccount.id}:queue/${name}`),
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
/// default = alicloud.get_regions(current=True)
/// default_get_account = alicloud.get_account()
/// default_get_zones = alicloud.get_zones(available_disk_category="cloud_efficiency",
///     available_resource_creation="VSwitch")
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=my_name,
///     cidr_block="172.16.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vpc_id=default_network.id,
///     cidr_block="172.16.0.0/24",
///     zone_id=default_get_zones.zones[0].id,
///     vswitch_name=my_name)
/// default_scaling_group = alicloud.ess.ScalingGroup("default",
///     min_size=1,
///     max_size=1,
///     scaling_group_name=my_name,
///     removal_policies=[
///         "OldestInstance",
///         "NewestInstance",
///     ],
///     vswitch_ids=[default_switch.id])
/// default_queue = alicloud.mns.Queue("default", name=my_name)
/// default_notification = alicloud.ess.Notification("default",
///     scaling_group_id=default_scaling_group.id,
///     notification_types=[
///         "AUTOSCALING:SCALE_OUT_SUCCESS",
///         "AUTOSCALING:SCALE_OUT_ERROR",
///     ],
///     notification_arn=default_queue.name.apply(lambda name: f"acs:ess:{default.regions[0].id}:{default_get_account.id}:queue/{name}"))
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
///     var @default = AliCloud.GetRegions.Invoke(new()
///     {
///         Current = true,
///     });
///
///     var defaultGetAccount = AliCloud.GetAccount.Invoke();
///
///     var defaultGetZones = AliCloud.GetZones.Invoke(new()
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
///         ZoneId = defaultGetZones.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///         VswitchName = myName,
///     });
///
///     var defaultScalingGroup = new AliCloud.Ess.ScalingGroup("default", new()
///     {
///         MinSize = 1,
///         MaxSize = 1,
///         ScalingGroupName = myName,
///         RemovalPolicies = new[]
///         {
///             "OldestInstance",
///             "NewestInstance",
///         },
///         VswitchIds = new[]
///         {
///             defaultSwitch.Id,
///         },
///     });
///
///     var defaultQueue = new AliCloud.Mns.Queue("default", new()
///     {
///         Name = myName,
///     });
///
///     var defaultNotification = new AliCloud.Ess.Notification("default", new()
///     {
///         ScalingGroupId = defaultScalingGroup.Id,
///         NotificationTypes = new[]
///         {
///             "AUTOSCALING:SCALE_OUT_SUCCESS",
///             "AUTOSCALING:SCALE_OUT_ERROR",
///         },
///         NotificationArn = Output.Tuple(@default, defaultGetAccount, defaultQueue.Name).Apply(values =>
///         {
///             var @default = values.Item1;
///             var defaultGetAccount = values.Item2;
///             var name = values.Item3;
///             return $"acs:ess:{@default.Apply(getRegionsResult => getRegionsResult.Regions[0]?.Id)}:{defaultGetAccount.Apply(getAccountResult => getAccountResult.Id)}:queue/{name}";
///         }),
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ess"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/mns"
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
/// 		_default, err := alicloud.GetRegions(ctx, &alicloud.GetRegionsArgs{
/// 			Current: pulumi.BoolRef(true),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetAccount, err := alicloud.GetAccount(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetZones, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
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
/// 			ZoneId:      pulumi.String(defaultGetZones.Zones[0].Id),
/// 			VswitchName: pulumi.String(myName),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultScalingGroup, err := ess.NewScalingGroup(ctx, "default", &ess.ScalingGroupArgs{
/// 			MinSize:          pulumi.Int(1),
/// 			MaxSize:          pulumi.Int(1),
/// 			ScalingGroupName: pulumi.String(myName),
/// 			RemovalPolicies: pulumi.StringArray{
/// 				pulumi.String("OldestInstance"),
/// 				pulumi.String("NewestInstance"),
/// 			},
/// 			VswitchIds: pulumi.StringArray{
/// 				defaultSwitch.ID(),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultQueue, err := mns.NewQueue(ctx, "default", &mns.QueueArgs{
/// 			Name: pulumi.String(myName),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ess.NewNotification(ctx, "default", &ess.NotificationArgs{
/// 			ScalingGroupId: defaultScalingGroup.ID(),
/// 			NotificationTypes: pulumi.StringArray{
/// 				pulumi.String("AUTOSCALING:SCALE_OUT_SUCCESS"),
/// 				pulumi.String("AUTOSCALING:SCALE_OUT_ERROR"),
/// 			},
/// 			NotificationArn: defaultQueue.Name.ApplyT(func(name string) (string, error) {
/// 				return fmt.Sprintf("acs:ess:%v:%v:queue/%v", _default.Regions[0].Id, defaultGetAccount.Id, name), nil
/// 			}).(pulumi.StringOutput),
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
/// import com.pulumi.alicloud.inputs.GetRegionsArgs;
/// import com.pulumi.alicloud.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.ess.ScalingGroup;
/// import com.pulumi.alicloud.ess.ScalingGroupArgs;
/// import com.pulumi.alicloud.mns.Queue;
/// import com.pulumi.alicloud.mns.QueueArgs;
/// import com.pulumi.alicloud.ess.Notification;
/// import com.pulumi.alicloud.ess.NotificationArgs;
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
///         final var default = AlicloudFunctions.getRegions(GetRegionsArgs.builder()
///             .current(true)
///             .build());
///
///         final var defaultGetAccount = AlicloudFunctions.getAccount(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         final var defaultGetZones = AlicloudFunctions.getZones(GetZonesArgs.builder()
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
///             .zoneId(defaultGetZones.zones()[0].id())
///             .vswitchName(myName)
///             .build());
///
///         var defaultScalingGroup = new ScalingGroup("defaultScalingGroup", ScalingGroupArgs.builder()
///             .minSize(1)
///             .maxSize(1)
///             .scalingGroupName(myName)
///             .removalPolicies(
///                 "OldestInstance",
///                 "NewestInstance")
///             .vswitchIds(defaultSwitch.id())
///             .build());
///
///         var defaultQueue = new Queue("defaultQueue", QueueArgs.builder()
///             .name(myName)
///             .build());
///
///         var defaultNotification = new Notification("defaultNotification", NotificationArgs.builder()
///             .scalingGroupId(defaultScalingGroup.id())
///             .notificationTypes(
///                 "AUTOSCALING:SCALE_OUT_SUCCESS",
///                 "AUTOSCALING:SCALE_OUT_ERROR")
///             .notificationArn(defaultQueue.name().applyValue(_name -> String.format("acs:ess:%s:%s:queue/%s", default_.regions()[0].id(),defaultGetAccount.id(),_name)))
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
///       zoneId: ${defaultGetZones.zones[0].id}
///       vswitchName: ${myName}
///   defaultScalingGroup:
///     type: alicloud:ess:ScalingGroup
///     name: default
///     properties:
///       minSize: 1
///       maxSize: 1
///       scalingGroupName: ${myName}
///       removalPolicies:
///         - OldestInstance
///         - NewestInstance
///       vswitchIds:
///         - ${defaultSwitch.id}
///   defaultQueue:
///     type: alicloud:mns:Queue
///     name: default
///     properties:
///       name: ${myName}
///   defaultNotification:
///     type: alicloud:ess:Notification
///     name: default
///     properties:
///       scalingGroupId: ${defaultScalingGroup.id}
///       notificationTypes:
///         - AUTOSCALING:SCALE_OUT_SUCCESS
///         - AUTOSCALING:SCALE_OUT_ERROR
///       notificationArn: acs:ess:${default.regions[0].id}:${defaultGetAccount.id}:queue/${defaultQueue.name}
/// variables:
///   myName: ${name}-${defaultInteger.result}
///   default:
///     fn::invoke:
///       function: alicloud:getRegions
///       arguments:
///         current: true
///   defaultGetAccount:
///     fn::invoke:
///       function: alicloud:getAccount
///       arguments: {}
///   defaultGetZones:
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
/// ## Import
///
/// Ess notification can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ess/notification:Notification example 'scaling_group_id:notification_arn'
/// ```
class Notification extends pulumi.CustomResource {
  /// The Alibaba Cloud Resource Name (ARN) of the notification object, The value must be in `acs:ess:{region}:{account-id}:{resource-relative-id}` format.
  /// * region: the region ID of the scaling group. For more information, see `Regions and zones`
  /// * account-id: the ID of your account.
  /// * resource-relative-id: the notification method. Valid values : `cloudmonitor`, MNS queue: `queue/{queuename}`, Replace the queuename with the specific MNS queue name, MNS topic: `topic/{topicname}`, Replace the topicname with the specific MNS topic name.
  late final pulumi.Output<String> notificationArn;

  /// The notification types of Auto Scaling events and resource changes. Supported notification types: 'AUTOSCALING:SCALE_OUT_SUCCESS', 'AUTOSCALING:SCALE_IN_SUCCESS', 'AUTOSCALING:SCALE_OUT_ERROR', 'AUTOSCALING:SCALE_IN_ERROR', 'AUTOSCALING:SCALE_REJECT', 'AUTOSCALING:SCALE_OUT_START', 'AUTOSCALING:SCALE_IN_START', 'AUTOSCALING:SCHEDULE_TASK_EXPIRING'.
  late final pulumi.Output<List<String>> notificationTypes;

  /// The ID of the Auto Scaling group.
  late final pulumi.Output<String> scalingGroupId;

  /// The time zone of the notification. Specify the value in UTC. For example, a value of UTC+8 specifies that the time is 8 hours ahead of Coordinated Universal Time, and a value of UTC-7 specifies that the time is 7 hours behind Coordinated Universal Time.
  late final pulumi.Output<String?> timeZone;

  /// Creates a new [Notification].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Notification]. {@macro pulumi_ess_notification_notification_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Notification(
    String name, {
    NotificationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ess/notification:Notification',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    notificationArn = registerOutput<String>('notificationArn');
    notificationTypes = registerOutput<List<String>>('notificationTypes');
    scalingGroupId = registerOutput<String>('scalingGroupId');
    timeZone = registerOutput<String?>('timeZone');
  }

  /// Gets an existing [Notification] resource's state with the given [name] and [id].
  static Notification get(
    String name,
    pulumi.Input<String> id, {
    NotificationState? state,
  }) {
    return Notification._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Notification._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ess/notification:Notification',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    notificationArn = registerOutput<String>('notificationArn');
    notificationTypes = registerOutput<List<String>>('notificationTypes');
    scalingGroupId = registerOutput<String>('scalingGroupId');
    timeZone = registerOutput<String?>('timeZone');
  }
}
