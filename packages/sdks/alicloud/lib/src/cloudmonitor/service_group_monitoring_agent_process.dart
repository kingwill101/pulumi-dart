import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_group_monitoring_agent_process_args.dart';
import 'service_group_monitoring_agent_process_state.dart';

/// Provides a Cloud Monitor Service Group Monitoring Agent Process resource.
///
/// For information about Cloud Monitor Service Group Monitoring Agent Process and how to use it, see [What is Group Monitoring Agent Process](https://www.alibabacloud.com/help/en/cms/developer-reference/api-cms-2019-01-01-creategroupmonitoringagentprocess).
///
/// &gt; **NOTE:** Available since v1.212.0.
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
/// const _default = new alicloud.cms.AlarmContactGroup("default", {
///     alarmContactGroupName: name,
///     contacts: [
///         "user",
///         "user1",
///         "user2",
///     ],
/// });
/// const defaultMonitorGroup = new alicloud.cms.MonitorGroup("default", {
///     monitorGroupName: name,
///     contactGroups: [_default.id],
/// });
/// const defaultServiceGroupMonitoringAgentProcess = new alicloud.cloudmonitor.ServiceGroupMonitoringAgentProcess("default", {
///     groupId: defaultMonitorGroup.id,
///     processName: name,
///     matchExpressFilterRelation: "or",
///     matchExpresses: [{
///         name: name,
///         value: "*",
///         "function": "all",
///     }],
///     alertConfigs: [{
///         escalationsLevel: "critical",
///         comparisonOperator: "GreaterThanOrEqualToThreshold",
///         statistics: "Average",
///         threshold: "20",
///         times: "100",
///         effectiveInterval: "00:00-22:59",
///         silenceTime: 85800,
///         webhook: "https://www.aliyun.com",
///         targetLists: [{
///             targetListId: "1",
///             jsonParams: "{}",
///             level: "WARN",
///             arn: "acs:mns:cn-hangzhou:120886317861****:/queues/test123/message",
///         }],
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
///     name = "terraform-example"
/// default = alicloud.cms.AlarmContactGroup("default",
///     alarm_contact_group_name=name,
///     contacts=[
///         "user",
///         "user1",
///         "user2",
///     ])
/// default_monitor_group = alicloud.cms.MonitorGroup("default",
///     monitor_group_name=name,
///     contact_groups=[default.id])
/// default_service_group_monitoring_agent_process = alicloud.cloudmonitor.ServiceGroupMonitoringAgentProcess("default",
///     group_id=default_monitor_group.id,
///     process_name=name,
///     match_express_filter_relation="or",
///     match_expresses=[{
///         "name": name,
///         "value": "*",
///         "function": "all",
///     }],
///     alert_configs=[{
///         "escalations_level": "critical",
///         "comparison_operator": "GreaterThanOrEqualToThreshold",
///         "statistics": "Average",
///         "threshold": "20",
///         "times": "100",
///         "effective_interval": "00:00-22:59",
///         "silence_time": 85800,
///         "webhook": "https://www.aliyun.com",
///         "target_lists": [{
///             "target_list_id": "1",
///             "json_params": "{}",
///             "level": "WARN",
///             "arn": "acs:mns:cn-hangzhou:120886317861****:/queues/test123/message",
///         }],
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
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = new AliCloud.Cms.AlarmContactGroup("default", new()
///     {
///         AlarmContactGroupName = name,
///         Contacts = new[]
///         {
///             "user",
///             "user1",
///             "user2",
///         },
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
///     var defaultServiceGroupMonitoringAgentProcess = new AliCloud.CloudMonitor.ServiceGroupMonitoringAgentProcess("default", new()
///     {
///         GroupId = defaultMonitorGroup.Id,
///         ProcessName = name,
///         MatchExpressFilterRelation = "or",
///         MatchExpresses = new[]
///         {
///             new AliCloud.CloudMonitor.Inputs.ServiceGroupMonitoringAgentProcessMatchExpressArgs
///             {
///                 Name = name,
///                 Value = "*",
///                 Function = "all",
///             },
///         },
///         AlertConfigs = new[]
///         {
///             new AliCloud.CloudMonitor.Inputs.ServiceGroupMonitoringAgentProcessAlertConfigArgs
///             {
///                 EscalationsLevel = "critical",
///                 ComparisonOperator = "GreaterThanOrEqualToThreshold",
///                 Statistics = "Average",
///                 Threshold = "20",
///                 Times = "100",
///                 EffectiveInterval = "00:00-22:59",
///                 SilenceTime = 85800,
///                 Webhook = "https://www.aliyun.com",
///                 TargetLists = new[]
///                 {
///                     new AliCloud.CloudMonitor.Inputs.ServiceGroupMonitoringAgentProcessAlertConfigTargetListArgs
///                     {
///                         TargetListId = "1",
///                         JsonParams = "{}",
///                         Level = "WARN",
///                         Arn = "acs:mns:cn-hangzhou:120886317861****:/queues/test123/message",
///                     },
///                 },
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cloudmonitor"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cms"
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
/// 		_default, err := cms.NewAlarmContactGroup(ctx, "default", &cms.AlarmContactGroupArgs{
/// 			AlarmContactGroupName: pulumi.String(name),
/// 			Contacts: pulumi.StringArray{
/// 				pulumi.String("user"),
/// 				pulumi.String("user1"),
/// 				pulumi.String("user2"),
/// 			},
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
/// 		_, err = cloudmonitor.NewServiceGroupMonitoringAgentProcess(ctx, "default", &cloudmonitor.ServiceGroupMonitoringAgentProcessArgs{
/// 			GroupId:                    defaultMonitorGroup.ID(),
/// 			ProcessName:                pulumi.String(name),
/// 			MatchExpressFilterRelation: pulumi.String("or"),
/// 			MatchExpresses: cloudmonitor.ServiceGroupMonitoringAgentProcessMatchExpressArray{
/// 				&cloudmonitor.ServiceGroupMonitoringAgentProcessMatchExpressArgs{
/// 					Name:     pulumi.String(name),
/// 					Value:    pulumi.String("*"),
/// 					Function: pulumi.String("all"),
/// 				},
/// 			},
/// 			AlertConfigs: cloudmonitor.ServiceGroupMonitoringAgentProcessAlertConfigArray{
/// 				&cloudmonitor.ServiceGroupMonitoringAgentProcessAlertConfigArgs{
/// 					EscalationsLevel:   pulumi.String("critical"),
/// 					ComparisonOperator: pulumi.String("GreaterThanOrEqualToThreshold"),
/// 					Statistics:         pulumi.String("Average"),
/// 					Threshold:          pulumi.String("20"),
/// 					Times:              pulumi.String("100"),
/// 					EffectiveInterval:  pulumi.String("00:00-22:59"),
/// 					SilenceTime:        pulumi.Int(85800),
/// 					Webhook:            pulumi.String("https://www.aliyun.com"),
/// 					TargetLists: cloudmonitor.ServiceGroupMonitoringAgentProcessAlertConfigTargetListArray{
/// 						&cloudmonitor.ServiceGroupMonitoringAgentProcessAlertConfigTargetListArgs{
/// 							TargetListId: pulumi.String("1"),
/// 							JsonParams:   pulumi.String("{}"),
/// 							Level:        pulumi.String("WARN"),
/// 							Arn:          pulumi.String("acs:mns:cn-hangzhou:120886317861****:/queues/test123/message"),
/// 						},
/// 					},
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
/// import com.pulumi.alicloud.cloudmonitor.ServiceGroupMonitoringAgentProcess;
/// import com.pulumi.alicloud.cloudmonitor.ServiceGroupMonitoringAgentProcessArgs;
/// import com.pulumi.alicloud.cloudmonitor.inputs.ServiceGroupMonitoringAgentProcessMatchExpressArgs;
/// import com.pulumi.alicloud.cloudmonitor.inputs.ServiceGroupMonitoringAgentProcessAlertConfigArgs;
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
///         var default_ = new AlarmContactGroup("default", AlarmContactGroupArgs.builder()
///             .alarmContactGroupName(name)
///             .contacts(
///                 "user",
///                 "user1",
///                 "user2")
///             .build());
///
///         var defaultMonitorGroup = new MonitorGroup("defaultMonitorGroup", MonitorGroupArgs.builder()
///             .monitorGroupName(name)
///             .contactGroups(default_.id())
///             .build());
///
///         var defaultServiceGroupMonitoringAgentProcess = new ServiceGroupMonitoringAgentProcess("defaultServiceGroupMonitoringAgentProcess", ServiceGroupMonitoringAgentProcessArgs.builder()
///             .groupId(defaultMonitorGroup.id())
///             .processName(name)
///             .matchExpressFilterRelation("or")
///             .matchExpresses(ServiceGroupMonitoringAgentProcessMatchExpressArgs.builder()
///                 .name(name)
///                 .value("*")
///                 .function("all")
///                 .build())
///             .alertConfigs(ServiceGroupMonitoringAgentProcessAlertConfigArgs.builder()
///                 .escalationsLevel("critical")
///                 .comparisonOperator("GreaterThanOrEqualToThreshold")
///                 .statistics("Average")
///                 .threshold("20")
///                 .times("100")
///                 .effectiveInterval("00:00-22:59")
///                 .silenceTime(85800)
///                 .webhook("https://www.aliyun.com")
///                 .targetLists(ServiceGroupMonitoringAgentProcessAlertConfigTargetListArgs.builder()
///                     .targetListId("1")
///                     .jsonParams("{}")
///                     .level("WARN")
///                     .arn("acs:mns:cn-hangzhou:120886317861****:/queues/test123/message")
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
///     default: terraform-example
/// resources:
///   default:
///     type: alicloud:cms:AlarmContactGroup
///     properties:
///       alarmContactGroupName: ${name}
///       contacts:
///         - user
///         - user1
///         - user2
///   defaultMonitorGroup:
///     type: alicloud:cms:MonitorGroup
///     name: default
///     properties:
///       monitorGroupName: ${name}
///       contactGroups:
///         - ${default.id}
///   defaultServiceGroupMonitoringAgentProcess:
///     type: alicloud:cloudmonitor:ServiceGroupMonitoringAgentProcess
///     name: default
///     properties:
///       groupId: ${defaultMonitorGroup.id}
///       processName: ${name}
///       matchExpressFilterRelation: or
///       matchExpresses:
///         - name: ${name}
///           value: '*'
///           function: all
///       alertConfigs:
///         - escalationsLevel: critical
///           comparisonOperator: GreaterThanOrEqualToThreshold
///           statistics: Average
///           threshold: '20'
///           times: '100'
///           effectiveInterval: 00:00-22:59
///           silenceTime: '85800'
///           webhook: https://www.aliyun.com
///           targetLists:
///             - targetListId: '1'
///               jsonParams: '{}'
///               level: WARN
///               arn: acs:mns:cn-hangzhou:120886317861****:/queues/test123/message
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Cloud Monitor Service Group Monitoring Agent Process can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cloudmonitor/serviceGroupMonitoringAgentProcess:ServiceGroupMonitoringAgentProcess example <group_id>:<group_monitoring_agent_process_id>
/// ```
class ServiceGroupMonitoringAgentProcess extends pulumi.CustomResource {
  /// The alert rule configurations. See `alert_config` below.
  late final pulumi.Output<List<Map<String, dynamic>>> alertConfigs;
  /// The ID of the application group.
  late final pulumi.Output<String> groupId;
  /// The ID of the Group Monitoring Agent Process.
  late final pulumi.Output<String> groupMonitoringAgentProcessId;
  /// The logical operator used between conditional expressions that are used to match instances. Valid values: `all`, `and`, `or`.
  late final pulumi.Output<String> matchExpressFilterRelation;
  /// The expressions used to match instances. See `match_express` below.
  late final pulumi.Output<List<Map<String, dynamic>>> matchExpresses;
  /// The name of the process.
  late final pulumi.Output<String> processName;

  /// Creates a new [ServiceGroupMonitoringAgentProcess].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServiceGroupMonitoringAgentProcess]. {@macro pulumi_cloudmonitor_service_group_monitoring_agent_process_service_group_monitoring_agent_process_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServiceGroupMonitoringAgentProcess(
    String name, {
    ServiceGroupMonitoringAgentProcessArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cloudmonitor/serviceGroupMonitoringAgentProcess:ServiceGroupMonitoringAgentProcess',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    alertConfigs = registerOutput<List<Map<String, dynamic>>>('alertConfigs');
    groupId = registerOutput<String>('groupId');
    groupMonitoringAgentProcessId = registerOutput<String>('groupMonitoringAgentProcessId');
    matchExpressFilterRelation = registerOutput<String>('matchExpressFilterRelation');
    matchExpresses = registerOutput<List<Map<String, dynamic>>>('matchExpresses');
    processName = registerOutput<String>('processName');
  }

  /// Gets an existing [ServiceGroupMonitoringAgentProcess] resource's state with the given [name] and [id].
  static ServiceGroupMonitoringAgentProcess get(
    String name,
    pulumi.Input<String> id, {
    ServiceGroupMonitoringAgentProcessState? state,
  }) {
    return ServiceGroupMonitoringAgentProcess._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ServiceGroupMonitoringAgentProcess._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cloudmonitor/serviceGroupMonitoringAgentProcess:ServiceGroupMonitoringAgentProcess',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    alertConfigs = registerOutput<List<Map<String, dynamic>>>('alertConfigs');
    groupId = registerOutput<String>('groupId');
    groupMonitoringAgentProcessId = registerOutput<String>('groupMonitoringAgentProcessId');
    matchExpressFilterRelation = registerOutput<String>('matchExpressFilterRelation');
    matchExpresses = registerOutput<List<Map<String, dynamic>>>('matchExpresses');
    processName = registerOutput<String>('processName');
  }
}
