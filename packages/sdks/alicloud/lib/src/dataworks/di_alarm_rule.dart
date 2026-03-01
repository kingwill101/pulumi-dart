import 'package:pulumi/pulumi.dart' as pulumi;
import 'di_alarm_rule_args.dart';
import 'di_alarm_rule_notification_settings.dart';
import 'di_alarm_rule_state.dart';
import 'di_alarm_rule_trigger_condition.dart';

/// Provides a Data Works Di Alarm Rule resource.
///
/// Data Integration alarm rules.
///
/// For information about Data Works Di Alarm Rule and how to use it, see [What is Di Alarm Rule](https://www.alibabacloud.com/help/en/dataworks/developer-reference/api-dataworks-public-2024-05-18-createdialarmrule).
///
/// > **NOTE:** Available since v1.241.0.
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
/// const name = config.get("name") || "terraform_example";
/// const defaulteNv8bu = new alicloud.dataworks.Project("defaulteNv8bu", {
///     projectName: name,
///     displayName: name,
///     description: name,
///     paiTaskEnabled: true,
/// });
/// const defaultUW8inp = new alicloud.dataworks.DiJob("defaultUW8inp", {
///     description: "xxxx",
///     projectId: defaulteNv8bu.id,
///     jobName: "xxx",
///     migrationType: "api_xxx",
///     sourceDataSourceType: "xxx",
///     resourceSettings: {
///         offlineResourceSettings: {
///             requestedCu: 2,
///             resourceGroupIdentifier: "xx",
///         },
///         realtimeResourceSettings: {
///             requestedCu: 2,
///             resourceGroupIdentifier: "xx",
///         },
///         scheduleResourceSettings: {
///             requestedCu: 2,
///             resourceGroupIdentifier: "xx",
///         },
///     },
///     jobSettings: {
///         channelSettings: "xxxx",
///         columnDataTypeSettings: [{
///             destinationDataType: "xxxx",
///             sourceDataType: "xxxx",
///         }],
///         cycleScheduleSettings: {
///             cycleMigrationType: "xxxx",
///             scheduleParameters: "xxxx",
///         },
///     },
///     sourceDataSourceSettings: [{
///         dataSourceName: "xxxx",
///         dataSourceProperties: {
///             encoding: "xxxx",
///             timezone: "xxxx",
///         },
///     }],
///     destinationDataSourceType: "xxxx",
///     tableMappings: [{
///         sourceObjectSelectionRules: [
///             {
///                 action: "Include",
///                 expression: "xxxx",
///                 expressionType: "Exact",
///                 objectType: "xxxx",
///             },
///             {
///                 action: "Include",
///                 expression: "xxxx",
///                 expressionType: "Exact",
///                 objectType: "xxxx",
///             },
///         ],
///         transformationRules: [{
///             ruleName: "xxxx",
///             ruleActionType: "xxxx",
///             ruleTargetType: "xxxx",
///         }],
///     }],
///     transformationRules: [{
///         ruleActionType: "xxxx",
///         ruleExpression: "xxxx",
///         ruleName: "xxxx",
///         ruleTargetType: "xxxx",
///     }],
///     destinationDataSourceSettings: [{
///         dataSourceName: "xxx",
///     }],
/// });
/// const _default = new alicloud.dataworks.DiAlarmRule("default", {
///     description: "Description",
///     triggerConditions: [{
///         ddlReportTags: ["ALTERADDCOLUMN"],
///         threshold: 20,
///         duration: 10,
///         severity: "Warning",
///     }],
///     metricType: "DdlReport",
///     notificationSettings: {
///         notificationChannels: [{
///             severity: "Warning",
///             channels: ["Ding"],
///         }],
///         notificationReceivers: [{
///             receiverType: "DingToken",
///             receiverValues: ["1107550004253538"],
///         }],
///         inhibitionInterval: 10,
///     },
///     diJobId: defaultUW8inp.diJobId,
///     diAlarmRuleName: name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform_example"
/// defaulte_nv8bu = alicloud.dataworks.Project("defaulteNv8bu",
///     project_name=name,
///     display_name=name,
///     description=name,
///     pai_task_enabled=True)
/// default_uw8inp = alicloud.dataworks.DiJob("defaultUW8inp",
///     description="xxxx",
///     project_id=defaulte_nv8bu.id,
///     job_name="xxx",
///     migration_type="api_xxx",
///     source_data_source_type="xxx",
///     resource_settings={
///         "offline_resource_settings": {
///             "requested_cu": 2,
///             "resource_group_identifier": "xx",
///         },
///         "realtime_resource_settings": {
///             "requested_cu": 2,
///             "resource_group_identifier": "xx",
///         },
///         "schedule_resource_settings": {
///             "requested_cu": 2,
///             "resource_group_identifier": "xx",
///         },
///     },
///     job_settings={
///         "channel_settings": "xxxx",
///         "column_data_type_settings": [{
///             "destination_data_type": "xxxx",
///             "source_data_type": "xxxx",
///         }],
///         "cycle_schedule_settings": {
///             "cycle_migration_type": "xxxx",
///             "schedule_parameters": "xxxx",
///         },
///     },
///     source_data_source_settings=[{
///         "data_source_name": "xxxx",
///         "data_source_properties": {
///             "encoding": "xxxx",
///             "timezone": "xxxx",
///         },
///     }],
///     destination_data_source_type="xxxx",
///     table_mappings=[{
///         "source_object_selection_rules": [
///             {
///                 "action": "Include",
///                 "expression": "xxxx",
///                 "expression_type": "Exact",
///                 "object_type": "xxxx",
///             },
///             {
///                 "action": "Include",
///                 "expression": "xxxx",
///                 "expression_type": "Exact",
///                 "object_type": "xxxx",
///             },
///         ],
///         "transformation_rules": [{
///             "rule_name": "xxxx",
///             "rule_action_type": "xxxx",
///             "rule_target_type": "xxxx",
///         }],
///     }],
///     transformation_rules=[{
///         "rule_action_type": "xxxx",
///         "rule_expression": "xxxx",
///         "rule_name": "xxxx",
///         "rule_target_type": "xxxx",
///     }],
///     destination_data_source_settings=[{
///         "data_source_name": "xxx",
///     }])
/// default = alicloud.dataworks.DiAlarmRule("default",
///     description="Description",
///     trigger_conditions=[{
///         "ddl_report_tags": ["ALTERADDCOLUMN"],
///         "threshold": 20,
///         "duration": 10,
///         "severity": "Warning",
///     }],
///     metric_type="DdlReport",
///     notification_settings={
///         "notification_channels": [{
///             "severity": "Warning",
///             "channels": ["Ding"],
///         }],
///         "notification_receivers": [{
///             "receiver_type": "DingToken",
///             "receiver_values": ["1107550004253538"],
///         }],
///         "inhibition_interval": 10,
///     },
///     di_job_id=default_uw8inp.di_job_id,
///     di_alarm_rule_name=name)
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
///     var name = config.Get("name") ?? "terraform_example";
///     var defaulteNv8bu = new AliCloud.DataWorks.Project("defaulteNv8bu", new()
///     {
///         ProjectName = name,
///         DisplayName = name,
///         Description = name,
///         PaiTaskEnabled = true,
///     });
///
///     var defaultUW8inp = new AliCloud.DataWorks.DiJob("defaultUW8inp", new()
///     {
///         Description = "xxxx",
///         ProjectId = defaulteNv8bu.Id,
///         JobName = "xxx",
///         MigrationType = "api_xxx",
///         SourceDataSourceType = "xxx",
///         ResourceSettings = new AliCloud.DataWorks.Inputs.DiJobResourceSettingsArgs
///         {
///             OfflineResourceSettings = new AliCloud.DataWorks.Inputs.DiJobResourceSettingsOfflineResourceSettingsArgs
///             {
///                 RequestedCu = 2,
///                 ResourceGroupIdentifier = "xx",
///             },
///             RealtimeResourceSettings = new AliCloud.DataWorks.Inputs.DiJobResourceSettingsRealtimeResourceSettingsArgs
///             {
///                 RequestedCu = 2,
///                 ResourceGroupIdentifier = "xx",
///             },
///             ScheduleResourceSettings = new AliCloud.DataWorks.Inputs.DiJobResourceSettingsScheduleResourceSettingsArgs
///             {
///                 RequestedCu = 2,
///                 ResourceGroupIdentifier = "xx",
///             },
///         },
///         JobSettings = new AliCloud.DataWorks.Inputs.DiJobJobSettingsArgs
///         {
///             ChannelSettings = "xxxx",
///             ColumnDataTypeSettings = new[]
///             {
///                 new AliCloud.DataWorks.Inputs.DiJobJobSettingsColumnDataTypeSettingArgs
///                 {
///                     DestinationDataType = "xxxx",
///                     SourceDataType = "xxxx",
///                 },
///             },
///             CycleScheduleSettings = new AliCloud.DataWorks.Inputs.DiJobJobSettingsCycleScheduleSettingsArgs
///             {
///                 CycleMigrationType = "xxxx",
///                 ScheduleParameters = "xxxx",
///             },
///         },
///         SourceDataSourceSettings = new[]
///         {
///             new AliCloud.DataWorks.Inputs.DiJobSourceDataSourceSettingArgs
///             {
///                 DataSourceName = "xxxx",
///                 DataSourceProperties = new AliCloud.DataWorks.Inputs.DiJobSourceDataSourceSettingDataSourcePropertiesArgs
///                 {
///                     Encoding = "xxxx",
///                     Timezone = "xxxx",
///                 },
///             },
///         },
///         DestinationDataSourceType = "xxxx",
///         TableMappings = new[]
///         {
///             new AliCloud.DataWorks.Inputs.DiJobTableMappingArgs
///             {
///                 SourceObjectSelectionRules = new[]
///                 {
///                     new AliCloud.DataWorks.Inputs.DiJobTableMappingSourceObjectSelectionRuleArgs
///                     {
///                         Action = "Include",
///                         Expression = "xxxx",
///                         ExpressionType = "Exact",
///                         ObjectType = "xxxx",
///                     },
///                     new AliCloud.DataWorks.Inputs.DiJobTableMappingSourceObjectSelectionRuleArgs
///                     {
///                         Action = "Include",
///                         Expression = "xxxx",
///                         ExpressionType = "Exact",
///                         ObjectType = "xxxx",
///                     },
///                 },
///                 TransformationRules = new[]
///                 {
///                     new AliCloud.DataWorks.Inputs.DiJobTableMappingTransformationRuleArgs
///                     {
///                         RuleName = "xxxx",
///                         RuleActionType = "xxxx",
///                         RuleTargetType = "xxxx",
///                     },
///                 },
///             },
///         },
///         TransformationRules = new[]
///         {
///             new AliCloud.DataWorks.Inputs.DiJobTransformationRuleArgs
///             {
///                 RuleActionType = "xxxx",
///                 RuleExpression = "xxxx",
///                 RuleName = "xxxx",
///                 RuleTargetType = "xxxx",
///             },
///         },
///         DestinationDataSourceSettings = new[]
///         {
///             new AliCloud.DataWorks.Inputs.DiJobDestinationDataSourceSettingArgs
///             {
///                 DataSourceName = "xxx",
///             },
///         },
///     });
///
///     var @default = new AliCloud.DataWorks.DiAlarmRule("default", new()
///     {
///         Description = "Description",
///         TriggerConditions = new[]
///         {
///             new AliCloud.DataWorks.Inputs.DiAlarmRuleTriggerConditionArgs
///             {
///                 DdlReportTags = new[]
///                 {
///                     "ALTERADDCOLUMN",
///                 },
///                 Threshold = 20,
///                 Duration = 10,
///                 Severity = "Warning",
///             },
///         },
///         MetricType = "DdlReport",
///         NotificationSettings = new AliCloud.DataWorks.Inputs.DiAlarmRuleNotificationSettingsArgs
///         {
///             NotificationChannels = new[]
///             {
///                 new AliCloud.DataWorks.Inputs.DiAlarmRuleNotificationSettingsNotificationChannelArgs
///                 {
///                     Severity = "Warning",
///                     Channels = new[]
///                     {
///                         "Ding",
///                     },
///                 },
///             },
///             NotificationReceivers = new[]
///             {
///                 new AliCloud.DataWorks.Inputs.DiAlarmRuleNotificationSettingsNotificationReceiverArgs
///                 {
///                     ReceiverType = "DingToken",
///                     ReceiverValues = new[]
///                     {
///                         "1107550004253538",
///                     },
///                 },
///             },
///             InhibitionInterval = 10,
///         },
///         DiJobId = defaultUW8inp.DiJobId,
///         DiAlarmRuleName = name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dataworks"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform_example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		defaulteNv8bu, err := dataworks.NewProject(ctx, "defaulteNv8bu", &dataworks.ProjectArgs{
/// 			ProjectName:    pulumi.String(name),
/// 			DisplayName:    pulumi.String(name),
/// 			Description:    pulumi.String(name),
/// 			PaiTaskEnabled: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultUW8inp, err := dataworks.NewDiJob(ctx, "defaultUW8inp", &dataworks.DiJobArgs{
/// 			Description:          pulumi.String("xxxx"),
/// 			ProjectId:            defaulteNv8bu.ID(),
/// 			JobName:              pulumi.String("xxx"),
/// 			MigrationType:        pulumi.String("api_xxx"),
/// 			SourceDataSourceType: pulumi.String("xxx"),
/// 			ResourceSettings: &dataworks.DiJobResourceSettingsArgs{
/// 				OfflineResourceSettings: &dataworks.DiJobResourceSettingsOfflineResourceSettingsArgs{
/// 					RequestedCu:             pulumi.Float64(2),
/// 					ResourceGroupIdentifier: pulumi.String("xx"),
/// 				},
/// 				RealtimeResourceSettings: &dataworks.DiJobResourceSettingsRealtimeResourceSettingsArgs{
/// 					RequestedCu:             pulumi.Float64(2),
/// 					ResourceGroupIdentifier: pulumi.String("xx"),
/// 				},
/// 				ScheduleResourceSettings: &dataworks.DiJobResourceSettingsScheduleResourceSettingsArgs{
/// 					RequestedCu:             pulumi.Float64(2),
/// 					ResourceGroupIdentifier: pulumi.String("xx"),
/// 				},
/// 			},
/// 			JobSettings: &dataworks.DiJobJobSettingsArgs{
/// 				ChannelSettings: pulumi.String("xxxx"),
/// 				ColumnDataTypeSettings: dataworks.DiJobJobSettingsColumnDataTypeSettingArray{
/// 					&dataworks.DiJobJobSettingsColumnDataTypeSettingArgs{
/// 						DestinationDataType: pulumi.String("xxxx"),
/// 						SourceDataType:      pulumi.String("xxxx"),
/// 					},
/// 				},
/// 				CycleScheduleSettings: &dataworks.DiJobJobSettingsCycleScheduleSettingsArgs{
/// 					CycleMigrationType: pulumi.String("xxxx"),
/// 					ScheduleParameters: pulumi.String("xxxx"),
/// 				},
/// 			},
/// 			SourceDataSourceSettings: dataworks.DiJobSourceDataSourceSettingArray{
/// 				&dataworks.DiJobSourceDataSourceSettingArgs{
/// 					DataSourceName: pulumi.String("xxxx"),
/// 					DataSourceProperties: &dataworks.DiJobSourceDataSourceSettingDataSourcePropertiesArgs{
/// 						Encoding: pulumi.String("xxxx"),
/// 						Timezone: pulumi.String("xxxx"),
/// 					},
/// 				},
/// 			},
/// 			DestinationDataSourceType: pulumi.String("xxxx"),
/// 			TableMappings: dataworks.DiJobTableMappingArray{
/// 				&dataworks.DiJobTableMappingArgs{
/// 					SourceObjectSelectionRules: dataworks.DiJobTableMappingSourceObjectSelectionRuleArray{
/// 						&dataworks.DiJobTableMappingSourceObjectSelectionRuleArgs{
/// 							Action:         pulumi.String("Include"),
/// 							Expression:     pulumi.String("xxxx"),
/// 							ExpressionType: pulumi.String("Exact"),
/// 							ObjectType:     pulumi.String("xxxx"),
/// 						},
/// 						&dataworks.DiJobTableMappingSourceObjectSelectionRuleArgs{
/// 							Action:         pulumi.String("Include"),
/// 							Expression:     pulumi.String("xxxx"),
/// 							ExpressionType: pulumi.String("Exact"),
/// 							ObjectType:     pulumi.String("xxxx"),
/// 						},
/// 					},
/// 					TransformationRules: dataworks.DiJobTableMappingTransformationRuleArray{
/// 						&dataworks.DiJobTableMappingTransformationRuleArgs{
/// 							RuleName:       pulumi.String("xxxx"),
/// 							RuleActionType: pulumi.String("xxxx"),
/// 							RuleTargetType: pulumi.String("xxxx"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			TransformationRules: dataworks.DiJobTransformationRuleArray{
/// 				&dataworks.DiJobTransformationRuleArgs{
/// 					RuleActionType: pulumi.String("xxxx"),
/// 					RuleExpression: pulumi.String("xxxx"),
/// 					RuleName:       pulumi.String("xxxx"),
/// 					RuleTargetType: pulumi.String("xxxx"),
/// 				},
/// 			},
/// 			DestinationDataSourceSettings: dataworks.DiJobDestinationDataSourceSettingArray{
/// 				&dataworks.DiJobDestinationDataSourceSettingArgs{
/// 					DataSourceName: pulumi.String("xxx"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dataworks.NewDiAlarmRule(ctx, "default", &dataworks.DiAlarmRuleArgs{
/// 			Description: pulumi.String("Description"),
/// 			TriggerConditions: dataworks.DiAlarmRuleTriggerConditionArray{
/// 				&dataworks.DiAlarmRuleTriggerConditionArgs{
/// 					DdlReportTags: pulumi.StringArray{
/// 						pulumi.String("ALTERADDCOLUMN"),
/// 					},
/// 					Threshold: pulumi.Int(20),
/// 					Duration:  pulumi.Int(10),
/// 					Severity:  pulumi.String("Warning"),
/// 				},
/// 			},
/// 			MetricType: pulumi.String("DdlReport"),
/// 			NotificationSettings: &dataworks.DiAlarmRuleNotificationSettingsArgs{
/// 				NotificationChannels: dataworks.DiAlarmRuleNotificationSettingsNotificationChannelArray{
/// 					&dataworks.DiAlarmRuleNotificationSettingsNotificationChannelArgs{
/// 						Severity: pulumi.String("Warning"),
/// 						Channels: pulumi.StringArray{
/// 							pulumi.String("Ding"),
/// 						},
/// 					},
/// 				},
/// 				NotificationReceivers: dataworks.DiAlarmRuleNotificationSettingsNotificationReceiverArray{
/// 					&dataworks.DiAlarmRuleNotificationSettingsNotificationReceiverArgs{
/// 						ReceiverType: pulumi.String("DingToken"),
/// 						ReceiverValues: pulumi.StringArray{
/// 							pulumi.String("1107550004253538"),
/// 						},
/// 					},
/// 				},
/// 				InhibitionInterval: pulumi.Int(10),
/// 			},
/// 			DiJobId:         defaultUW8inp.DiJobId,
/// 			DiAlarmRuleName: pulumi.String(name),
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
/// import com.pulumi.alicloud.dataworks.Project;
/// import com.pulumi.alicloud.dataworks.ProjectArgs;
/// import com.pulumi.alicloud.dataworks.DiJob;
/// import com.pulumi.alicloud.dataworks.DiJobArgs;
/// import com.pulumi.alicloud.dataworks.inputs.DiJobResourceSettingsArgs;
/// import com.pulumi.alicloud.dataworks.inputs.DiJobResourceSettingsOfflineResourceSettingsArgs;
/// import com.pulumi.alicloud.dataworks.inputs.DiJobResourceSettingsRealtimeResourceSettingsArgs;
/// import com.pulumi.alicloud.dataworks.inputs.DiJobResourceSettingsScheduleResourceSettingsArgs;
/// import com.pulumi.alicloud.dataworks.inputs.DiJobJobSettingsArgs;
/// import com.pulumi.alicloud.dataworks.inputs.DiJobJobSettingsCycleScheduleSettingsArgs;
/// import com.pulumi.alicloud.dataworks.inputs.DiJobSourceDataSourceSettingArgs;
/// import com.pulumi.alicloud.dataworks.inputs.DiJobSourceDataSourceSettingDataSourcePropertiesArgs;
/// import com.pulumi.alicloud.dataworks.inputs.DiJobTableMappingArgs;
/// import com.pulumi.alicloud.dataworks.inputs.DiJobTransformationRuleArgs;
/// import com.pulumi.alicloud.dataworks.inputs.DiJobDestinationDataSourceSettingArgs;
/// import com.pulumi.alicloud.dataworks.DiAlarmRule;
/// import com.pulumi.alicloud.dataworks.DiAlarmRuleArgs;
/// import com.pulumi.alicloud.dataworks.inputs.DiAlarmRuleTriggerConditionArgs;
/// import com.pulumi.alicloud.dataworks.inputs.DiAlarmRuleNotificationSettingsArgs;
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
///         final var name = config.get("name").orElse("terraform_example");
///         var defaulteNv8bu = new Project("defaulteNv8bu", ProjectArgs.builder()
///             .projectName(name)
///             .displayName(name)
///             .description(name)
///             .paiTaskEnabled(true)
///             .build());
///
///         var defaultUW8inp = new DiJob("defaultUW8inp", DiJobArgs.builder()
///             .description("xxxx")
///             .projectId(defaulteNv8bu.id())
///             .jobName("xxx")
///             .migrationType("api_xxx")
///             .sourceDataSourceType("xxx")
///             .resourceSettings(DiJobResourceSettingsArgs.builder()
///                 .offlineResourceSettings(DiJobResourceSettingsOfflineResourceSettingsArgs.builder()
///                     .requestedCu(2.0)
///                     .resourceGroupIdentifier("xx")
///                     .build())
///                 .realtimeResourceSettings(DiJobResourceSettingsRealtimeResourceSettingsArgs.builder()
///                     .requestedCu(2.0)
///                     .resourceGroupIdentifier("xx")
///                     .build())
///                 .scheduleResourceSettings(DiJobResourceSettingsScheduleResourceSettingsArgs.builder()
///                     .requestedCu(2.0)
///                     .resourceGroupIdentifier("xx")
///                     .build())
///                 .build())
///             .jobSettings(DiJobJobSettingsArgs.builder()
///                 .channelSettings("xxxx")
///                 .columnDataTypeSettings(DiJobJobSettingsColumnDataTypeSettingArgs.builder()
///                     .destinationDataType("xxxx")
///                     .sourceDataType("xxxx")
///                     .build())
///                 .cycleScheduleSettings(DiJobJobSettingsCycleScheduleSettingsArgs.builder()
///                     .cycleMigrationType("xxxx")
///                     .scheduleParameters("xxxx")
///                     .build())
///                 .build())
///             .sourceDataSourceSettings(DiJobSourceDataSourceSettingArgs.builder()
///                 .dataSourceName("xxxx")
///                 .dataSourceProperties(DiJobSourceDataSourceSettingDataSourcePropertiesArgs.builder()
///                     .encoding("xxxx")
///                     .timezone("xxxx")
///                     .build())
///                 .build())
///             .destinationDataSourceType("xxxx")
///             .tableMappings(DiJobTableMappingArgs.builder()
///                 .sourceObjectSelectionRules(
///                     DiJobTableMappingSourceObjectSelectionRuleArgs.builder()
///                         .action("Include")
///                         .expression("xxxx")
///                         .expressionType("Exact")
///                         .objectType("xxxx")
///                         .build(),
///                     DiJobTableMappingSourceObjectSelectionRuleArgs.builder()
///                         .action("Include")
///                         .expression("xxxx")
///                         .expressionType("Exact")
///                         .objectType("xxxx")
///                         .build())
///                 .transformationRules(DiJobTableMappingTransformationRuleArgs.builder()
///                     .ruleName("xxxx")
///                     .ruleActionType("xxxx")
///                     .ruleTargetType("xxxx")
///                     .build())
///                 .build())
///             .transformationRules(DiJobTransformationRuleArgs.builder()
///                 .ruleActionType("xxxx")
///                 .ruleExpression("xxxx")
///                 .ruleName("xxxx")
///                 .ruleTargetType("xxxx")
///                 .build())
///             .destinationDataSourceSettings(DiJobDestinationDataSourceSettingArgs.builder()
///                 .dataSourceName("xxx")
///                 .build())
///             .build());
///
///         var default_ = new DiAlarmRule("default", DiAlarmRuleArgs.builder()
///             .description("Description")
///             .triggerConditions(DiAlarmRuleTriggerConditionArgs.builder()
///                 .ddlReportTags("ALTERADDCOLUMN")
///                 .threshold(20)
///                 .duration(10)
///                 .severity("Warning")
///                 .build())
///             .metricType("DdlReport")
///             .notificationSettings(DiAlarmRuleNotificationSettingsArgs.builder()
///                 .notificationChannels(DiAlarmRuleNotificationSettingsNotificationChannelArgs.builder()
///                     .severity("Warning")
///                     .channels("Ding")
///                     .build())
///                 .notificationReceivers(DiAlarmRuleNotificationSettingsNotificationReceiverArgs.builder()
///                     .receiverType("DingToken")
///                     .receiverValues("1107550004253538")
///                     .build())
///                 .inhibitionInterval(10)
///                 .build())
///             .diJobId(defaultUW8inp.diJobId())
///             .diAlarmRuleName(name)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform_example
/// resources:
///   defaulteNv8bu:
///     type: alicloud:dataworks:Project
///     properties:
///       projectName: ${name}
///       displayName: ${name}
///       description: ${name}
///       paiTaskEnabled: true
///   defaultUW8inp:
///     type: alicloud:dataworks:DiJob
///     properties:
///       description: xxxx
///       projectId: ${defaulteNv8bu.id}
///       jobName: xxx
///       migrationType: api_xxx
///       sourceDataSourceType: xxx
///       resourceSettings:
///         offlineResourceSettings:
///           requestedCu: 2
///           resourceGroupIdentifier: xx
///         realtimeResourceSettings:
///           requestedCu: 2
///           resourceGroupIdentifier: xx
///         scheduleResourceSettings:
///           requestedCu: 2
///           resourceGroupIdentifier: xx
///       jobSettings:
///         channelSettings: xxxx
///         columnDataTypeSettings:
///           - destinationDataType: xxxx
///             sourceDataType: xxxx
///         cycleScheduleSettings:
///           cycleMigrationType: xxxx
///           scheduleParameters: xxxx
///       sourceDataSourceSettings:
///         - dataSourceName: xxxx
///           dataSourceProperties:
///             encoding: xxxx
///             timezone: xxxx
///       destinationDataSourceType: xxxx
///       tableMappings:
///         - sourceObjectSelectionRules:
///             - action: Include
///               expression: xxxx
///               expressionType: Exact
///               objectType: xxxx
///             - action: Include
///               expression: xxxx
///               expressionType: Exact
///               objectType: xxxx
///           transformationRules:
///             - ruleName: xxxx
///               ruleActionType: xxxx
///               ruleTargetType: xxxx
///       transformationRules:
///         - ruleActionType: xxxx
///           ruleExpression: xxxx
///           ruleName: xxxx
///           ruleTargetType: xxxx
///       destinationDataSourceSettings:
///         - dataSourceName: xxx
///   default:
///     type: alicloud:dataworks:DiAlarmRule
///     properties:
///       description: Description
///       triggerConditions:
///         - ddlReportTags:
///             - ALTERADDCOLUMN
///           threshold: '20'
///           duration: '10'
///           severity: Warning
///       metricType: DdlReport
///       notificationSettings:
///         notificationChannels:
///           - severity: Warning
///             channels:
///               - Ding
///         notificationReceivers:
///           - receiverType: DingToken
///             receiverValues:
///               - '1107550004253538'
///         inhibitionInterval: '10'
///       diJobId: ${defaultUW8inp.diJobId}
///       diAlarmRuleName: ${name}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Data Works Di Alarm Rule can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:dataworks/diAlarmRule:DiAlarmRule example <di_job_id>:<di_alarm_rule_id>
/// ```
class DiAlarmRule extends pulumi.CustomResource {
  late final pulumi.Output<String?> description;
  /// Resource attribute field representing resource level ID
  late final pulumi.Output<int> diAlarmRuleId;
  /// Data Integration alarm rule name
  late final pulumi.Output<String> diAlarmRuleName;
  /// Task ID: the ID of the task associated with the alert rule.
  late final pulumi.Output<int> diJobId;
  late final pulumi.Output<bool?> enabled;
  /// Alarm indicator type. Optional enumerated values:
  /// - Heartbeat (task status alarm)
  /// - FailoverCount(failover times alarm)
  /// - Delay (task Delay alarm)
  late final pulumi.Output<String> metricType;
  /// Alarm notification settings See `notification_settings` below.
  late final pulumi.Output<DiAlarmRuleNotificationSettings> notificationSettings;
  /// Alarm trigger condition list, supporting multiple conditions See `trigger_conditions` below.
  late final pulumi.Output<List<DiAlarmRuleTriggerCondition>> triggerConditions;

  /// Creates a new [DiAlarmRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DiAlarmRule]. {@macro pulumi_dataworks_di_alarm_rule_di_alarm_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DiAlarmRule(
    String name, {
    DiAlarmRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:dataworks/diAlarmRule:DiAlarmRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.diAlarmRuleId = registerOutput<int>('diAlarmRuleId');
    this.diAlarmRuleName = registerOutput<String>('diAlarmRuleName');
    this.diJobId = registerOutput<int>('diJobId');
    this.enabled = registerOutput<bool?>('enabled');
    this.metricType = registerOutput<String>('metricType');
    this.notificationSettings = registerOutput<DiAlarmRuleNotificationSettings>('notificationSettings');
    this.triggerConditions = registerOutput<List<DiAlarmRuleTriggerCondition>>('triggerConditions');
  }

  /// Gets an existing [DiAlarmRule] resource's state with the given [name] and [id].
  static DiAlarmRule get(
    String name,
    pulumi.Input<String> id, {
    DiAlarmRuleState? state,
  }) {
    return DiAlarmRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DiAlarmRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:dataworks/diAlarmRule:DiAlarmRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.diAlarmRuleId = registerOutput<int>('diAlarmRuleId');
    this.diAlarmRuleName = registerOutput<String>('diAlarmRuleName');
    this.diJobId = registerOutput<int>('diJobId');
    this.enabled = registerOutput<bool?>('enabled');
    this.metricType = registerOutput<String>('metricType');
    this.notificationSettings = registerOutput<DiAlarmRuleNotificationSettings>('notificationSettings');
    this.triggerConditions = registerOutput<List<DiAlarmRuleTriggerCondition>>('triggerConditions');
  }
}
