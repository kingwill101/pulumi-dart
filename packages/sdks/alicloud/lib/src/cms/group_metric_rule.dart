import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_metric_rule_args.dart';
import 'group_metric_rule_escalations.dart';
import 'group_metric_rule_state.dart';

/// Provides a Cloud Monitor Service Group Metric Rule resource.
///
/// For information about Cloud Monitor Service Group Metric Rule and how to use it, see [What is Group Metric Rule](https://www.alibabacloud.com/help/en/cloudmonitor/latest/putgroupmetricrule).
///
/// &gt; **NOTE:** Available since v1.104.0.
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
/// const _default = new alicloud.cms.AlarmContactGroup("default", {
///     alarmContactGroupName: name,
///     describe: name,
/// });
/// const defaultMonitorGroup = new alicloud.cms.MonitorGroup("default", {
///     monitorGroupName: name,
///     contactGroups: [_default.id],
/// });
/// const _this = new alicloud.cms.GroupMetricRule("this", {
///     groupId: defaultMonitorGroup.id,
///     groupMetricRuleName: name,
///     category: "ecs",
///     metricName: "cpu_total",
///     namespace: "acs_ecs_dashboard",
///     ruleId: name,
///     period: 60,
///     interval: "3600",
///     silenceTime: 85800,
///     noEffectiveInterval: "00:00-05:30",
///     webhook: "http://www.aliyun.com",
///     escalations: {
///         warn: {
///             comparisonOperator: "GreaterThanOrEqualToThreshold",
///             statistics: "Average",
///             threshold: "90",
///             times: 3,
///         },
///         info: {
///             comparisonOperator: "LessThanLastWeek",
///             statistics: "Average",
///             threshold: "90",
///             times: 5,
///         },
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
/// default = alicloud.cms.AlarmContactGroup("default",
///     alarm_contact_group_name=name,
///     describe=name)
/// default_monitor_group = alicloud.cms.MonitorGroup("default",
///     monitor_group_name=name,
///     contact_groups=[default.id])
/// this = alicloud.cms.GroupMetricRule("this",
///     group_id=default_monitor_group.id,
///     group_metric_rule_name=name,
///     category="ecs",
///     metric_name="cpu_total",
///     namespace="acs_ecs_dashboard",
///     rule_id=name,
///     period=60,
///     interval="3600",
///     silence_time=85800,
///     no_effective_interval="00:00-05:30",
///     webhook="http://www.aliyun.com",
///     escalations={
///         "warn": {
///             "comparison_operator": "GreaterThanOrEqualToThreshold",
///             "statistics": "Average",
///             "threshold": "90",
///             "times": 3,
///         },
///         "info": {
///             "comparison_operator": "LessThanLastWeek",
///             "statistics": "Average",
///             "threshold": "90",
///             "times": 5,
///         },
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
///     var @default = new AliCloud.Cms.AlarmContactGroup("default", new()
///     {
///         AlarmContactGroupName = name,
///         Describe = name,
///     });
///
///     var defaultMonitorGroup = new AliCloud.Cms.MonitorGroup("default", new()
///     {
///         MonitorGroupName = name,
///         ContactGroups = new[]
///         {
///             @default.Id,
///         },
///     });
///
///     var @this = new AliCloud.Cms.GroupMetricRule("this", new()
///     {
///         GroupId = defaultMonitorGroup.Id,
///         GroupMetricRuleName = name,
///         Category = "ecs",
///         MetricName = "cpu_total",
///         Namespace = "acs_ecs_dashboard",
///         RuleId = name,
///         Period = 60,
///         Interval = "3600",
///         SilenceTime = 85800,
///         NoEffectiveInterval = "00:00-05:30",
///         Webhook = "http://www.aliyun.com",
///         Escalations = new AliCloud.Cms.Inputs.GroupMetricRuleEscalationsArgs
///         {
///             Warn = new AliCloud.Cms.Inputs.GroupMetricRuleEscalationsWarnArgs
///             {
///                 ComparisonOperator = "GreaterThanOrEqualToThreshold",
///                 Statistics = "Average",
///                 Threshold = "90",
///                 Times = 3,
///             },
///             Info = new AliCloud.Cms.Inputs.GroupMetricRuleEscalationsInfoArgs
///             {
///                 ComparisonOperator = "LessThanLastWeek",
///                 Statistics = "Average",
///                 Threshold = "90",
///                 Times = 5,
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cms"
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
/// 		_default, err := cms.NewAlarmContactGroup(ctx, "default", &cms.AlarmContactGroupArgs{
/// 			AlarmContactGroupName: pulumi.String(name),
/// 			Describe:              pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultMonitorGroup, err := cms.NewMonitorGroup(ctx, "default", &cms.MonitorGroupArgs{
/// 			MonitorGroupName: pulumi.String(name),
/// 			ContactGroups: pulumi.StringArray{
/// 				_default.ID(),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cms.NewGroupMetricRule(ctx, "this", &cms.GroupMetricRuleArgs{
/// 			GroupId:             defaultMonitorGroup.ID(),
/// 			GroupMetricRuleName: pulumi.String(name),
/// 			Category:            pulumi.String("ecs"),
/// 			MetricName:          pulumi.String("cpu_total"),
/// 			Namespace:           pulumi.String("acs_ecs_dashboard"),
/// 			RuleId:              pulumi.String(name),
/// 			Period:              pulumi.Int(60),
/// 			Interval:            pulumi.String("3600"),
/// 			SilenceTime:         pulumi.Int(85800),
/// 			NoEffectiveInterval: pulumi.String("00:00-05:30"),
/// 			Webhook:             pulumi.String("http://www.aliyun.com"),
/// 			Escalations: &cms.GroupMetricRuleEscalationsArgs{
/// 				Warn: &cms.GroupMetricRuleEscalationsWarnArgs{
/// 					ComparisonOperator: pulumi.String("GreaterThanOrEqualToThreshold"),
/// 					Statistics:         pulumi.String("Average"),
/// 					Threshold:          pulumi.String("90"),
/// 					Times:              pulumi.Int(3),
/// 				},
/// 				Info: &cms.GroupMetricRuleEscalationsInfoArgs{
/// 					ComparisonOperator: pulumi.String("LessThanLastWeek"),
/// 					Statistics:         pulumi.String("Average"),
/// 					Threshold:          pulumi.String("90"),
/// 					Times:              pulumi.Int(5),
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
/// import com.pulumi.alicloud.cms.AlarmContactGroup;
/// import com.pulumi.alicloud.cms.AlarmContactGroupArgs;
/// import com.pulumi.alicloud.cms.MonitorGroup;
/// import com.pulumi.alicloud.cms.MonitorGroupArgs;
/// import com.pulumi.alicloud.cms.GroupMetricRule;
/// import com.pulumi.alicloud.cms.GroupMetricRuleArgs;
/// import com.pulumi.alicloud.cms.inputs.GroupMetricRuleEscalationsArgs;
/// import com.pulumi.alicloud.cms.inputs.GroupMetricRuleEscalationsWarnArgs;
/// import com.pulumi.alicloud.cms.inputs.GroupMetricRuleEscalationsInfoArgs;
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
///         var default_ = new AlarmContactGroup("default", AlarmContactGroupArgs.builder()
///             .alarmContactGroupName(name)
///             .describe(name)
///             .build());
///
///         var defaultMonitorGroup = new MonitorGroup("defaultMonitorGroup", MonitorGroupArgs.builder()
///             .monitorGroupName(name)
///             .contactGroups(default_.id())
///             .build());
///
///         var this_ = new GroupMetricRule("this", GroupMetricRuleArgs.builder()
///             .groupId(defaultMonitorGroup.id())
///             .groupMetricRuleName(name)
///             .category("ecs")
///             .metricName("cpu_total")
///             .namespace("acs_ecs_dashboard")
///             .ruleId(name)
///             .period(60)
///             .interval("3600")
///             .silenceTime(85800)
///             .noEffectiveInterval("00:00-05:30")
///             .webhook("http://www.aliyun.com")
///             .escalations(GroupMetricRuleEscalationsArgs.builder()
///                 .warn(GroupMetricRuleEscalationsWarnArgs.builder()
///                     .comparisonOperator("GreaterThanOrEqualToThreshold")
///                     .statistics("Average")
///                     .threshold("90")
///                     .times(3)
///                     .build())
///                 .info(GroupMetricRuleEscalationsInfoArgs.builder()
///                     .comparisonOperator("LessThanLastWeek")
///                     .statistics("Average")
///                     .threshold("90")
///                     .times(5)
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
///   default:
///     type: alicloud:cms:AlarmContactGroup
///     properties:
///       alarmContactGroupName: ${name}
///       describe: ${name}
///   defaultMonitorGroup:
///     type: alicloud:cms:MonitorGroup
///     name: default
///     properties:
///       monitorGroupName: ${name}
///       contactGroups:
///         - ${default.id}
///   this:
///     type: alicloud:cms:GroupMetricRule
///     properties:
///       groupId: ${defaultMonitorGroup.id}
///       groupMetricRuleName: ${name}
///       category: ecs
///       metricName: cpu_total
///       namespace: acs_ecs_dashboard
///       ruleId: ${name}
///       period: '60'
///       interval: '3600'
///       silenceTime: 85800
///       noEffectiveInterval: 00:00-05:30
///       webhook: http://www.aliyun.com
///       escalations:
///         warn:
///           comparisonOperator: GreaterThanOrEqualToThreshold
///           statistics: Average
///           threshold: '90'
///           times: 3
///         info:
///           comparisonOperator: LessThanLastWeek
///           statistics: Average
///           threshold: '90'
///           times: 5
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Cloud Monitor Service Group Metric Rule can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cms/groupMetricRule:GroupMetricRule example <rule_id>
/// ```
class GroupMetricRule extends pulumi.CustomResource {
  /// The abbreviation of the service name.
  late final pulumi.Output<String?> category;

  /// Alarm contact group.
  late final pulumi.Output<String> contactGroups;

  /// The dimensions that specify the resources to be associated with the alert rule.
  late final pulumi.Output<String> dimensions;

  /// The time period during which the alert rule is effective.
  late final pulumi.Output<String?> effectiveInterval;

  /// The subject of the alert notification email.
  late final pulumi.Output<String> emailSubject;

  /// Alarm level. See `escalations` below.
  late final pulumi.Output<GroupMetricRuleEscalations> escalations;

  /// The ID of the application group.
  late final pulumi.Output<String> groupId;

  /// The name of the alert rule.
  late final pulumi.Output<String> groupMetricRuleName;

  /// The interval at which Cloud Monitor checks whether the alert rule is triggered. Unit: seconds.
  late final pulumi.Output<String?> interval;

  /// The name of the metric.
  late final pulumi.Output<String> metricName;

  /// The namespace of the service.
  late final pulumi.Output<String> namespace;

  /// The time period during which the alert rule is ineffective.
  late final pulumi.Output<String?> noEffectiveInterval;

  /// The aggregation period of the monitoring data. Unit: seconds. The value is an integral multiple of 60. Default value: `300`.
  late final pulumi.Output<int> period;

  /// The ID of the alert rule.
  late final pulumi.Output<String> ruleId;

  /// The mute period during which new alerts are not reported even if the alert trigger conditions are met. Unit: seconds. Default value: `86400`, which is equivalent to one day.
  late final pulumi.Output<int> silenceTime;

  /// The status of Group Metric Rule.
  late final pulumi.Output<String> status;

  /// The information about the resource for which alerts are triggered. See `targets` below.
  late final pulumi.Output<List<Map<String, dynamic>>> targets;

  /// The callback URL.
  late final pulumi.Output<String?> webhook;

  /// Creates a new [GroupMetricRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GroupMetricRule]. {@macro pulumi_cms_group_metric_rule_group_metric_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GroupMetricRule(
    String name, {
    GroupMetricRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:cms/groupMetricRule:GroupMetricRule',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    category = registerOutput<String?>('category');
    contactGroups = registerOutput<String>('contactGroups');
    dimensions = registerOutput<String>('dimensions');
    effectiveInterval = registerOutput<String?>('effectiveInterval');
    emailSubject = registerOutput<String>('emailSubject');
    escalations = registerOutput<GroupMetricRuleEscalations>(
      'escalations',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GroupMetricRuleEscalations.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    groupId = registerOutput<String>('groupId');
    groupMetricRuleName = registerOutput<String>('groupMetricRuleName');
    interval = registerOutput<String?>('interval');
    metricName = registerOutput<String>('metricName');
    namespace = registerOutput<String>('namespace');
    noEffectiveInterval = registerOutput<String?>('noEffectiveInterval');
    period = registerOutput<int>('period');
    ruleId = registerOutput<String>('ruleId');
    silenceTime = registerOutput<int>('silenceTime');
    status = registerOutput<String>('status');
    targets = registerOutput<List<Map<String, dynamic>>>('targets');
    webhook = registerOutput<String?>('webhook');
  }

  /// Gets an existing [GroupMetricRule] resource's state with the given [name] and [id].
  static GroupMetricRule get(
    String name,
    pulumi.Input<String> id, {
    GroupMetricRuleState? state,
  }) {
    return GroupMetricRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  GroupMetricRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:cms/groupMetricRule:GroupMetricRule',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    category = registerOutput<String?>('category');
    contactGroups = registerOutput<String>('contactGroups');
    dimensions = registerOutput<String>('dimensions');
    effectiveInterval = registerOutput<String?>('effectiveInterval');
    emailSubject = registerOutput<String>('emailSubject');
    escalations = registerOutput<GroupMetricRuleEscalations>(
      'escalations',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GroupMetricRuleEscalations.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    groupId = registerOutput<String>('groupId');
    groupMetricRuleName = registerOutput<String>('groupMetricRuleName');
    interval = registerOutput<String?>('interval');
    metricName = registerOutput<String>('metricName');
    namespace = registerOutput<String>('namespace');
    noEffectiveInterval = registerOutput<String?>('noEffectiveInterval');
    period = registerOutput<int>('period');
    ruleId = registerOutput<String>('ruleId');
    silenceTime = registerOutput<int>('silenceTime');
    status = registerOutput<String>('status');
    targets = registerOutput<List<Map<String, dynamic>>>('targets');
    webhook = registerOutput<String?>('webhook');
  }
}
