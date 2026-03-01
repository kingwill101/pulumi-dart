import 'package:pulumi/pulumi.dart' as pulumi;
import 'alarm_args.dart';
import 'alarm_composite_expression.dart';
import 'alarm_escalations_critical.dart';
import 'alarm_escalations_info.dart';
import 'alarm_escalations_warn.dart';
import 'alarm_prometheus.dart';
import 'alarm_target.dart';

/// Provides a Cloud Monitor Service Alarm resource.
///
/// For information about Cloud Monitor Service Alarm and how to use it, see [What is Alarm](https://www.alibabacloud.com/help/en/cloudmonitor/latest/putresourcemetricrule).
///
/// > **NOTE:** Available since v1.9.1.
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
/// const defaultGetImages = alicloud.ecs.getImages({
///     mostRecent: true,
///     owners: "system",
/// });
/// const defaultGetInstanceTypes = Promise.all([_default, defaultGetImages]).then(([_default, defaultGetImages]) => alicloud.ecs.getInstanceTypes({
///     availabilityZone: _default.zones?.[0]?.id,
///     imageId: defaultGetImages.images?.[0]?.id,
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
/// const defaultSecurityGroup = new alicloud.ecs.SecurityGroup("default", {
///     name: name,
///     vpcId: defaultNetwork.id,
/// });
/// const defaultInstance = new alicloud.ecs.Instance("default", {
///     availabilityZone: _default.then(_default => _default.zones?.[0]?.id),
///     instanceName: name,
///     imageId: defaultGetImages.then(defaultGetImages => defaultGetImages.images?.[0]?.id),
///     instanceType: defaultGetInstanceTypes.then(defaultGetInstanceTypes => defaultGetInstanceTypes.instanceTypes?.[0]?.id),
///     securityGroups: [defaultSecurityGroup.id],
///     vswitchId: defaultSwitch.id,
/// });
/// const defaultAlarmContactGroup = new alicloud.cms.AlarmContactGroup("default", {alarmContactGroupName: name});
/// const defaultAlarm = new alicloud.cms.Alarm("default", {
///     name: name,
///     project: "acs_ecs_dashboard",
///     metric: "disk_writebytes",
///     period: 900,
///     contactGroups: [defaultAlarmContactGroup.alarmContactGroupName],
///     effectiveInterval: "06:00-20:00",
///     metricDimensions: pulumi.interpolate`  [
///     {
///       \"instanceId\": \"${defaultInstance.id}\",
///       \"device\": \"/dev/vda1\"
///     }
///   ]
/// `,
///     escalationsCritical: {
///         statistics: "Average",
///         comparisonOperator: "<=",
///         threshold: "35",
///         times: 2,
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
///     name = "tf-example"
/// default = alicloud.get_zones(available_disk_category="cloud_efficiency",
///     available_resource_creation="VSwitch")
/// default_get_images = alicloud.ecs.get_images(most_recent=True,
///     owners="system")
/// default_get_instance_types = alicloud.ecs.get_instance_types(availability_zone=default.zones[0].id,
///     image_id=default_get_images.images[0].id)
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="10.4.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vswitch_name=name,
///     cidr_block="10.4.0.0/24",
///     vpc_id=default_network.id,
///     zone_id=default.zones[0].id)
/// default_security_group = alicloud.ecs.SecurityGroup("default",
///     name=name,
///     vpc_id=default_network.id)
/// default_instance = alicloud.ecs.Instance("default",
///     availability_zone=default.zones[0].id,
///     instance_name=name,
///     image_id=default_get_images.images[0].id,
///     instance_type=default_get_instance_types.instance_types[0].id,
///     security_groups=[default_security_group.id],
///     vswitch_id=default_switch.id)
/// default_alarm_contact_group = alicloud.cms.AlarmContactGroup("default", alarm_contact_group_name=name)
/// default_alarm = alicloud.cms.Alarm("default",
///     name=name,
///     project="acs_ecs_dashboard",
///     metric="disk_writebytes",
///     period=900,
///     contact_groups=[default_alarm_contact_group.alarm_contact_group_name],
///     effective_interval="06:00-20:00",
///     metric_dimensions=default_instance.id.apply(lambda id: f"""  [
///     {{
///       \"instanceId\": \"{id}\",
///       \"device\": \"/dev/vda1\"
///     }}
///   ]
/// """),
///     escalations_critical={
///         "statistics": "Average",
///         "comparison_operator": "<=",
///         "threshold": "35",
///         "times": 2,
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
///     var name = config.Get("name") ?? "tf-example";
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableDiskCategory = "cloud_efficiency",
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var defaultGetImages = AliCloud.Ecs.GetImages.Invoke(new()
///     {
///         MostRecent = true,
///         Owners = "system",
///     });
///
///     var defaultGetInstanceTypes = AliCloud.Ecs.GetInstanceTypes.Invoke(new()
///     {
///         AvailabilityZone = @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///         ImageId = defaultGetImages.Apply(getImagesResult => getImagesResult.Images[0]?.Id),
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
///     var defaultSecurityGroup = new AliCloud.Ecs.SecurityGroup("default", new()
///     {
///         Name = name,
///         VpcId = defaultNetwork.Id,
///     });
///
///     var defaultInstance = new AliCloud.Ecs.Instance("default", new()
///     {
///         AvailabilityZone = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         InstanceName = name,
///         ImageId = defaultGetImages.Apply(getImagesResult => getImagesResult.Images[0]?.Id),
///         InstanceType = defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.InstanceTypes[0]?.Id),
///         SecurityGroups = new[]
///         {
///             defaultSecurityGroup.Id,
///         },
///         VswitchId = defaultSwitch.Id,
///     });
///
///     var defaultAlarmContactGroup = new AliCloud.Cms.AlarmContactGroup("default", new()
///     {
///         AlarmContactGroupName = name,
///     });
///
///     var defaultAlarm = new AliCloud.Cms.Alarm("default", new()
///     {
///         Name = name,
///         Project = "acs_ecs_dashboard",
///         Metric = "disk_writebytes",
///         Period = 900,
///         ContactGroups = new[]
///         {
///             defaultAlarmContactGroup.AlarmContactGroupName,
///         },
///         EffectiveInterval = "06:00-20:00",
///         MetricDimensions = defaultInstance.Id.Apply(id => @$"  [
///     {{
///       \""instanceId\"": \""{id}\"",
///       \""device\"": \""/dev/vda1\""
///     }}
///   ]
/// "),
///         EscalationsCritical = new AliCloud.Cms.Inputs.AlarmEscalationsCriticalArgs
///         {
///             Statistics = "Average",
///             ComparisonOperator = "<=",
///             Threshold = "35",
///             Times = 2,
///         },
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cms"
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
/// 		defaultGetImages, err := ecs.GetImages(ctx, &ecs.GetImagesArgs{
/// 			MostRecent: pulumi.BoolRef(true),
/// 			Owners:     pulumi.StringRef("system"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetInstanceTypes, err := ecs.GetInstanceTypes(ctx, &ecs.GetInstanceTypesArgs{
/// 			AvailabilityZone: pulumi.StringRef(_default.Zones[0].Id),
/// 			ImageId:          pulumi.StringRef(defaultGetImages.Images[0].Id),
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
/// 		defaultSecurityGroup, err := ecs.NewSecurityGroup(ctx, "default", &ecs.SecurityGroupArgs{
/// 			Name:  pulumi.String(name),
/// 			VpcId: defaultNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInstance, err := ecs.NewInstance(ctx, "default", &ecs.InstanceArgs{
/// 			AvailabilityZone: pulumi.String(_default.Zones[0].Id),
/// 			InstanceName:     pulumi.String(name),
/// 			ImageId:          pulumi.String(defaultGetImages.Images[0].Id),
/// 			InstanceType:     pulumi.String(defaultGetInstanceTypes.InstanceTypes[0].Id),
/// 			SecurityGroups: pulumi.StringArray{
/// 				defaultSecurityGroup.ID(),
/// 			},
/// 			VswitchId: defaultSwitch.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultAlarmContactGroup, err := cms.NewAlarmContactGroup(ctx, "default", &cms.AlarmContactGroupArgs{
/// 			AlarmContactGroupName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cms.NewAlarm(ctx, "default", &cms.AlarmArgs{
/// 			Name:    pulumi.String(name),
/// 			Project: pulumi.String("acs_ecs_dashboard"),
/// 			Metric:  pulumi.String("disk_writebytes"),
/// 			Period:  pulumi.Int(900),
/// 			ContactGroups: pulumi.StringArray{
/// 				defaultAlarmContactGroup.AlarmContactGroupName,
/// 			},
/// 			EffectiveInterval: pulumi.String("06:00-20:00"),
/// 			MetricDimensions: defaultInstance.ID().ApplyT(func(id string) (string, error) {
/// 				return fmt.Sprintf(`  [
///     {
///       \"instanceId\": \"%v\",
///       \"device\": \"/dev/vda1\"
///     }
///   ]
/// `, id), nil
/// 			}).(pulumi.StringOutput),
/// 			EscalationsCritical: &cms.AlarmEscalationsCriticalArgs{
/// 				Statistics:         pulumi.String("Average"),
/// 				ComparisonOperator: pulumi.String("<="),
/// 				Threshold:          pulumi.String("35"),
/// 				Times:              pulumi.Int(2),
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
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.ecs.Instance;
/// import com.pulumi.alicloud.ecs.InstanceArgs;
/// import com.pulumi.alicloud.cms.AlarmContactGroup;
/// import com.pulumi.alicloud.cms.AlarmContactGroupArgs;
/// import com.pulumi.alicloud.cms.Alarm;
/// import com.pulumi.alicloud.cms.AlarmArgs;
/// import com.pulumi.alicloud.cms.inputs.AlarmEscalationsCriticalArgs;
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
///         final var defaultGetImages = EcsFunctions.getImages(GetImagesArgs.builder()
///             .mostRecent(true)
///             .owners("system")
///             .build());
///
///         final var defaultGetInstanceTypes = EcsFunctions.getInstanceTypes(GetInstanceTypesArgs.builder()
///             .availabilityZone(default_.zones()[0].id())
///             .imageId(defaultGetImages.images()[0].id())
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
///         var defaultSecurityGroup = new SecurityGroup("defaultSecurityGroup", SecurityGroupArgs.builder()
///             .name(name)
///             .vpcId(defaultNetwork.id())
///             .build());
///
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .availabilityZone(default_.zones()[0].id())
///             .instanceName(name)
///             .imageId(defaultGetImages.images()[0].id())
///             .instanceType(defaultGetInstanceTypes.instanceTypes()[0].id())
///             .securityGroups(defaultSecurityGroup.id())
///             .vswitchId(defaultSwitch.id())
///             .build());
///
///         var defaultAlarmContactGroup = new AlarmContactGroup("defaultAlarmContactGroup", AlarmContactGroupArgs.builder()
///             .alarmContactGroupName(name)
///             .build());
///
///         var defaultAlarm = new Alarm("defaultAlarm", AlarmArgs.builder()
///             .name(name)
///             .project("acs_ecs_dashboard")
///             .metric("disk_writebytes")
///             .period(900)
///             .contactGroups(defaultAlarmContactGroup.alarmContactGroupName())
///             .effectiveInterval("06:00-20:00")
///             .metricDimensions(defaultInstance.id().applyValue(_id -> """
///   [
///     {
///       \"instanceId\": \"%s\",
///       \"device\": \"/dev/vda1\"
///     }
///   ]
/// ", _id)))
///             .escalationsCritical(AlarmEscalationsCriticalArgs.builder()
///                 .statistics("Average")
///                 .comparisonOperator("<=")
///                 .threshold("35")
///                 .times(2)
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
///   defaultSecurityGroup:
///     type: alicloud:ecs:SecurityGroup
///     name: default
///     properties:
///       name: ${name}
///       vpcId: ${defaultNetwork.id}
///   defaultInstance:
///     type: alicloud:ecs:Instance
///     name: default
///     properties:
///       availabilityZone: ${default.zones[0].id}
///       instanceName: ${name}
///       imageId: ${defaultGetImages.images[0].id}
///       instanceType: ${defaultGetInstanceTypes.instanceTypes[0].id}
///       securityGroups:
///         - ${defaultSecurityGroup.id}
///       vswitchId: ${defaultSwitch.id}
///   defaultAlarmContactGroup:
///     type: alicloud:cms:AlarmContactGroup
///     name: default
///     properties:
///       alarmContactGroupName: ${name}
///   defaultAlarm:
///     type: alicloud:cms:Alarm
///     name: default
///     properties:
///       name: ${name}
///       project: acs_ecs_dashboard
///       metric: disk_writebytes
///       period: 900
///       contactGroups:
///         - ${defaultAlarmContactGroup.alarmContactGroupName}
///       effectiveInterval: 06:00-20:00
///       metricDimensions: |2
///           [
///             {
///               \"instanceId\": \"${defaultInstance.id}\",
///               \"device\": \"/dev/vda1\"
///             }
///           ]
///       escalationsCritical:
///         statistics: Average
///         comparisonOperator: <=
///         threshold: 35
///         times: 2
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableDiskCategory: cloud_efficiency
///         availableResourceCreation: VSwitch
///   defaultGetImages:
///     fn::invoke:
///       function: alicloud:ecs:getImages
///       arguments:
///         mostRecent: true
///         owners: system
///   defaultGetInstanceTypes:
///     fn::invoke:
///       function: alicloud:ecs:getInstanceTypes
///       arguments:
///         availabilityZone: ${default.zones[0].id}
///         imageId: ${defaultGetImages.images[0].id}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Cloud Monitor Service Alarm can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cms/alarm:Alarm example <id>
/// ```
class Alarm extends pulumi.CustomResource {
  /// The trigger conditions for multiple metrics. See `composite_expression` below.
  late final pulumi.Output<AlarmCompositeExpression?> compositeExpression;
  /// List contact groups of the alarm rule, which must have been created on the console.
  late final pulumi.Output<List<String>> contactGroups;
  /// Field `dimensions` has been deprecated from provider version 1.173.0. New field `metric_dimensions` instead.
  late final pulumi.Output<Map<String, String>> dimensions;
  /// The interval of effecting alarm rule. It format as "hh:mm-hh:mm", like "0:00-4:00". Default value: `00:00-23:59`.
  late final pulumi.Output<String?> effectiveInterval;
  /// Whether to enable alarm rule. Default value: `true`.
  late final pulumi.Output<bool?> enabled;
  /// Field `end_time` has been deprecated from provider version 1.50.0. New field `effective_interval` instead.
  late final pulumi.Output<int?> endTime;
  /// A configuration of critical alarm. See `escalations_critical` below.
  late final pulumi.Output<AlarmEscalationsCritical> escalationsCritical;
  /// A configuration of critical info. See `escalations_info` below.
  late final pulumi.Output<AlarmEscalationsInfo> escalationsInfo;
  /// A configuration of critical warn. See `escalations_warn` below.
  late final pulumi.Output<AlarmEscalationsWarn> escalationsWarn;
  /// The name of the metric, such as `CPUUtilization` and `networkin_rate`. For more information, see [Metrics Reference](https://www.alibabacloud.com/help/doc-detail/28619.htm).
  late final pulumi.Output<String> metric;
  /// Map of the resources associated with the alarm rule, such as "instanceId", "device" and "port". Each key's value is a string, and it uses comma to split multiple items. For more information, see [Metrics Reference](https://www.alibabacloud.com/help/doc-detail/28619.htm).
  late final pulumi.Output<String> metricDimensions;
  /// The name of the alert rule.
  late final pulumi.Output<String> name;
  /// The statistical period of the metric. Unit: seconds. Default value: `300`.
  late final pulumi.Output<int?> period;
  /// The namespace of the cloud service, such as `acs_ecs_dashboard` and `acs_rds_dashboard`. For more information, see [Metrics Reference](https://www.alibabacloud.com/help/doc-detail/28619.htm).
  /// **NOTE:** The `dimensions` and `metric_dimensions` must be empty when `project` is `acs_prometheus`, otherwise, one of them must be set.
  late final pulumi.Output<String> project;
  /// The Prometheus alert rule. See `prometheus` below. **Note:** This parameter is required only when you create a Prometheus alert rule for Hybrid Cloud Monitoring.
  late final pulumi.Output<List<AlarmPrometheus>> prometheuses;
  /// Notification silence period in the alarm state, in seconds. Default value: `86400`. Valid value range: [300, 86400].
  late final pulumi.Output<int?> silenceTime;
  /// Field `start_time` has been deprecated from provider version 1.50.0. New field `effective_interval` instead.
  late final pulumi.Output<int?> startTime;
  /// The status of the Alarm.
  late final pulumi.Output<String> status;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Adds or modifies the push channels of an alert rule. See `targets` below.
  late final pulumi.Output<List<AlarmTarget>> targets;
  /// The webhook that should be called when the alarm is triggered. Currently, only http protocol is supported. Default is empty string.
  late final pulumi.Output<String?> webhook;

  /// Creates a new [Alarm].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Alarm]. {@macro pulumi_cms_alarm_alarm_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Alarm(
    String name, {
    AlarmArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cms/alarm:Alarm',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.compositeExpression = registerOutput<AlarmCompositeExpression?>('compositeExpression');
    this.contactGroups = registerOutput<List<String>>('contactGroups');
    this.dimensions = registerOutput<Map<String, String>>('dimensions');
    this.effectiveInterval = registerOutput<String?>('effectiveInterval');
    this.enabled = registerOutput<bool?>('enabled');
    this.endTime = registerOutput<int?>('endTime');
    this.escalationsCritical = registerOutput<AlarmEscalationsCritical>('escalationsCritical');
    this.escalationsInfo = registerOutput<AlarmEscalationsInfo>('escalationsInfo');
    this.escalationsWarn = registerOutput<AlarmEscalationsWarn>('escalationsWarn');
    this.metric = registerOutput<String>('metric');
    this.metricDimensions = registerOutput<String>('metricDimensions');
    this.name = registerOutput<String>('name');
    this.period = registerOutput<int?>('period');
    this.project = registerOutput<String>('project');
    this.prometheuses = registerOutput<List<AlarmPrometheus>>('prometheuses');
    this.silenceTime = registerOutput<int?>('silenceTime');
    this.startTime = registerOutput<int?>('startTime');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.targets = registerOutput<List<AlarmTarget>>('targets');
    this.webhook = registerOutput<String?>('webhook');
  }
}
