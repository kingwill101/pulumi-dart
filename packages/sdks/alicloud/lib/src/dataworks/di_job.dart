import 'package:pulumi/pulumi.dart' as pulumi;
import 'di_job_args.dart';
import 'di_job_job_settings.dart';
import 'di_job_resource_settings.dart';
import 'di_job_state.dart';

/// Provides a Data Works Di Job resource.
///
/// Data Integration Tasks.
///
/// For information about Data Works Di Job and how to use it, see [What is Di Job](https://www.alibabacloud.com/help/en/dataworks/developer-reference/api-dataworks-public-2024-05-18-createdijob).
///
/// &gt; **NOTE:** Available since v1.241.0.
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
/// const defaultMMHL8U = new alicloud.dataworks.Project("defaultMMHL8U", {
///     projectName: name,
///     displayName: name,
///     description: name,
///     paiTaskEnabled: true,
/// });
/// const _default = new alicloud.dataworks.DiJob("default", {
///     description: name,
///     projectId: defaultMMHL8U.id,
///     jobName: "zhenyuan_example_case",
///     migrationType: "api_FullAndRealtimeIncremental",
///     sourceDataSourceSettings: [{
///         dataSourceName: "dw_mysql",
///         dataSourceProperties: {
///             encoding: "utf-8",
///             timezone: "Asia/Shanghai",
///         },
///     }],
///     destinationDataSourceType: "Hologres",
///     tableMappings: [{
///         sourceObjectSelectionRules: [
///             {
///                 action: "Include",
///                 expression: "dw_mysql",
///                 expressionType: "Exact",
///                 objectType: "Datasource",
///             },
///             {
///                 action: "Include",
///                 expression: "example_db1",
///                 expressionType: "Exact",
///                 objectType: "Database",
///             },
///             {
///                 action: "Include",
///                 expression: "lsc_example01",
///                 expressionType: "Exact",
///                 objectType: "Table",
///             },
///         ],
///         transformationRules: [{
///             ruleName: "my_table_rename_rule",
///             ruleActionType: "Rename",
///             ruleTargetType: "Table",
///         }],
///     }],
///     sourceDataSourceType: "MySQL",
///     resourceSettings: {
///         offlineResourceSettings: {
///             requestedCu: 2,
///             resourceGroupIdentifier: "S_res_group_524257424564736_1716799673667",
///         },
///         realtimeResourceSettings: {
///             requestedCu: 2,
///             resourceGroupIdentifier: "S_res_group_524257424564736_1716799673667",
///         },
///         scheduleResourceSettings: {
///             requestedCu: 2,
///             resourceGroupIdentifier: "S_res_group_524257424564736_1716799673667",
///         },
///     },
///     transformationRules: [{
///         ruleActionType: "Rename",
///         ruleExpression: "{\"expression\":\"table2\"}",
///         ruleName: "my_table_rename_rule",
///         ruleTargetType: "Table",
///     }],
///     destinationDataSourceSettings: [{
///         dataSourceName: "dw_example_holo",
///     }],
///     jobSettings: {
///         columnDataTypeSettings: [{
///             destinationDataType: "bigint",
///             sourceDataType: "longtext",
///         }],
///         ddlHandlingSettings: [{
///             action: "Ignore",
///             type: "CreateTable",
///         }],
///         runtimeSettings: [{
///             name: "runtime.realtime.concurrent",
///             value: "1",
///         }],
///         channelSettings: "1",
///         cycleScheduleSettings: {
///             cycleMigrationType: "2",
///             scheduleParameters: "3",
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
///     name = "terraform_example"
/// default_mmhl8_u = alicloud.dataworks.Project("defaultMMHL8U",
///     project_name=name,
///     display_name=name,
///     description=name,
///     pai_task_enabled=True)
/// default = alicloud.dataworks.DiJob("default",
///     description=name,
///     project_id=default_mmhl8_u.id,
///     job_name="zhenyuan_example_case",
///     migration_type="api_FullAndRealtimeIncremental",
///     source_data_source_settings=[{
///         "data_source_name": "dw_mysql",
///         "data_source_properties": {
///             "encoding": "utf-8",
///             "timezone": "Asia/Shanghai",
///         },
///     }],
///     destination_data_source_type="Hologres",
///     table_mappings=[{
///         "source_object_selection_rules": [
///             {
///                 "action": "Include",
///                 "expression": "dw_mysql",
///                 "expression_type": "Exact",
///                 "object_type": "Datasource",
///             },
///             {
///                 "action": "Include",
///                 "expression": "example_db1",
///                 "expression_type": "Exact",
///                 "object_type": "Database",
///             },
///             {
///                 "action": "Include",
///                 "expression": "lsc_example01",
///                 "expression_type": "Exact",
///                 "object_type": "Table",
///             },
///         ],
///         "transformation_rules": [{
///             "rule_name": "my_table_rename_rule",
///             "rule_action_type": "Rename",
///             "rule_target_type": "Table",
///         }],
///     }],
///     source_data_source_type="MySQL",
///     resource_settings={
///         "offline_resource_settings": {
///             "requested_cu": 2,
///             "resource_group_identifier": "S_res_group_524257424564736_1716799673667",
///         },
///         "realtime_resource_settings": {
///             "requested_cu": 2,
///             "resource_group_identifier": "S_res_group_524257424564736_1716799673667",
///         },
///         "schedule_resource_settings": {
///             "requested_cu": 2,
///             "resource_group_identifier": "S_res_group_524257424564736_1716799673667",
///         },
///     },
///     transformation_rules=[{
///         "rule_action_type": "Rename",
///         "rule_expression": "{\"expression\":\"table2\"}",
///         "rule_name": "my_table_rename_rule",
///         "rule_target_type": "Table",
///     }],
///     destination_data_source_settings=[{
///         "data_source_name": "dw_example_holo",
///     }],
///     job_settings={
///         "column_data_type_settings": [{
///             "destination_data_type": "bigint",
///             "source_data_type": "longtext",
///         }],
///         "ddl_handling_settings": [{
///             "action": "Ignore",
///             "type": "CreateTable",
///         }],
///         "runtime_settings": [{
///             "name": "runtime.realtime.concurrent",
///             "value": "1",
///         }],
///         "channel_settings": "1",
///         "cycle_schedule_settings": {
///             "cycle_migration_type": "2",
///             "schedule_parameters": "3",
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
///     var name = config.Get("name") ?? "terraform_example";
///     var defaultMMHL8U = new AliCloud.DataWorks.Project("defaultMMHL8U", new()
///     {
///         ProjectName = name,
///         DisplayName = name,
///         Description = name,
///         PaiTaskEnabled = true,
///     });
///
///     var @default = new AliCloud.DataWorks.DiJob("default", new()
///     {
///         Description = name,
///         ProjectId = defaultMMHL8U.Id,
///         JobName = "zhenyuan_example_case",
///         MigrationType = "api_FullAndRealtimeIncremental",
///         SourceDataSourceSettings = new[]
///         {
///             new AliCloud.DataWorks.Inputs.DiJobSourceDataSourceSettingArgs
///             {
///                 DataSourceName = "dw_mysql",
///                 DataSourceProperties = new AliCloud.DataWorks.Inputs.DiJobSourceDataSourceSettingDataSourcePropertiesArgs
///                 {
///                     Encoding = "utf-8",
///                     Timezone = "Asia/Shanghai",
///                 },
///             },
///         },
///         DestinationDataSourceType = "Hologres",
///         TableMappings = new[]
///         {
///             new AliCloud.DataWorks.Inputs.DiJobTableMappingArgs
///             {
///                 SourceObjectSelectionRules = new[]
///                 {
///                     new AliCloud.DataWorks.Inputs.DiJobTableMappingSourceObjectSelectionRuleArgs
///                     {
///                         Action = "Include",
///                         Expression = "dw_mysql",
///                         ExpressionType = "Exact",
///                         ObjectType = "Datasource",
///                     },
///                     new AliCloud.DataWorks.Inputs.DiJobTableMappingSourceObjectSelectionRuleArgs
///                     {
///                         Action = "Include",
///                         Expression = "example_db1",
///                         ExpressionType = "Exact",
///                         ObjectType = "Database",
///                     },
///                     new AliCloud.DataWorks.Inputs.DiJobTableMappingSourceObjectSelectionRuleArgs
///                     {
///                         Action = "Include",
///                         Expression = "lsc_example01",
///                         ExpressionType = "Exact",
///                         ObjectType = "Table",
///                     },
///                 },
///                 TransformationRules = new[]
///                 {
///                     new AliCloud.DataWorks.Inputs.DiJobTableMappingTransformationRuleArgs
///                     {
///                         RuleName = "my_table_rename_rule",
///                         RuleActionType = "Rename",
///                         RuleTargetType = "Table",
///                     },
///                 },
///             },
///         },
///         SourceDataSourceType = "MySQL",
///         ResourceSettings = new AliCloud.DataWorks.Inputs.DiJobResourceSettingsArgs
///         {
///             OfflineResourceSettings = new AliCloud.DataWorks.Inputs.DiJobResourceSettingsOfflineResourceSettingsArgs
///             {
///                 RequestedCu = 2,
///                 ResourceGroupIdentifier = "S_res_group_524257424564736_1716799673667",
///             },
///             RealtimeResourceSettings = new AliCloud.DataWorks.Inputs.DiJobResourceSettingsRealtimeResourceSettingsArgs
///             {
///                 RequestedCu = 2,
///                 ResourceGroupIdentifier = "S_res_group_524257424564736_1716799673667",
///             },
///             ScheduleResourceSettings = new AliCloud.DataWorks.Inputs.DiJobResourceSettingsScheduleResourceSettingsArgs
///             {
///                 RequestedCu = 2,
///                 ResourceGroupIdentifier = "S_res_group_524257424564736_1716799673667",
///             },
///         },
///         TransformationRules = new[]
///         {
///             new AliCloud.DataWorks.Inputs.DiJobTransformationRuleArgs
///             {
///                 RuleActionType = "Rename",
///                 RuleExpression = "{\"expression\":\"table2\"}",
///                 RuleName = "my_table_rename_rule",
///                 RuleTargetType = "Table",
///             },
///         },
///         DestinationDataSourceSettings = new[]
///         {
///             new AliCloud.DataWorks.Inputs.DiJobDestinationDataSourceSettingArgs
///             {
///                 DataSourceName = "dw_example_holo",
///             },
///         },
///         JobSettings = new AliCloud.DataWorks.Inputs.DiJobJobSettingsArgs
///         {
///             ColumnDataTypeSettings = new[]
///             {
///                 new AliCloud.DataWorks.Inputs.DiJobJobSettingsColumnDataTypeSettingArgs
///                 {
///                     DestinationDataType = "bigint",
///                     SourceDataType = "longtext",
///                 },
///             },
///             DdlHandlingSettings = new[]
///             {
///                 new AliCloud.DataWorks.Inputs.DiJobJobSettingsDdlHandlingSettingArgs
///                 {
///                     Action = "Ignore",
///                     Type = "CreateTable",
///                 },
///             },
///             RuntimeSettings = new[]
///             {
///                 new AliCloud.DataWorks.Inputs.DiJobJobSettingsRuntimeSettingArgs
///                 {
///                     Name = "runtime.realtime.concurrent",
///                     Value = "1",
///                 },
///             },
///             ChannelSettings = "1",
///             CycleScheduleSettings = new AliCloud.DataWorks.Inputs.DiJobJobSettingsCycleScheduleSettingsArgs
///             {
///                 CycleMigrationType = "2",
///                 ScheduleParameters = "3",
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
/// 		defaultMMHL8U, err := dataworks.NewProject(ctx, "defaultMMHL8U", &dataworks.ProjectArgs{
/// 			ProjectName:    pulumi.String(name),
/// 			DisplayName:    pulumi.String(name),
/// 			Description:    pulumi.String(name),
/// 			PaiTaskEnabled: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dataworks.NewDiJob(ctx, "default", &dataworks.DiJobArgs{
/// 			Description:   pulumi.String(name),
/// 			ProjectId:     defaultMMHL8U.ID(),
/// 			JobName:       pulumi.String("zhenyuan_example_case"),
/// 			MigrationType: pulumi.String("api_FullAndRealtimeIncremental"),
/// 			SourceDataSourceSettings: dataworks.DiJobSourceDataSourceSettingArray{
/// 				&dataworks.DiJobSourceDataSourceSettingArgs{
/// 					DataSourceName: pulumi.String("dw_mysql"),
/// 					DataSourceProperties: &dataworks.DiJobSourceDataSourceSettingDataSourcePropertiesArgs{
/// 						Encoding: pulumi.String("utf-8"),
/// 						Timezone: pulumi.String("Asia/Shanghai"),
/// 					},
/// 				},
/// 			},
/// 			DestinationDataSourceType: pulumi.String("Hologres"),
/// 			TableMappings: dataworks.DiJobTableMappingArray{
/// 				&dataworks.DiJobTableMappingArgs{
/// 					SourceObjectSelectionRules: dataworks.DiJobTableMappingSourceObjectSelectionRuleArray{
/// 						&dataworks.DiJobTableMappingSourceObjectSelectionRuleArgs{
/// 							Action:         pulumi.String("Include"),
/// 							Expression:     pulumi.String("dw_mysql"),
/// 							ExpressionType: pulumi.String("Exact"),
/// 							ObjectType:     pulumi.String("Datasource"),
/// 						},
/// 						&dataworks.DiJobTableMappingSourceObjectSelectionRuleArgs{
/// 							Action:         pulumi.String("Include"),
/// 							Expression:     pulumi.String("example_db1"),
/// 							ExpressionType: pulumi.String("Exact"),
/// 							ObjectType:     pulumi.String("Database"),
/// 						},
/// 						&dataworks.DiJobTableMappingSourceObjectSelectionRuleArgs{
/// 							Action:         pulumi.String("Include"),
/// 							Expression:     pulumi.String("lsc_example01"),
/// 							ExpressionType: pulumi.String("Exact"),
/// 							ObjectType:     pulumi.String("Table"),
/// 						},
/// 					},
/// 					TransformationRules: dataworks.DiJobTableMappingTransformationRuleArray{
/// 						&dataworks.DiJobTableMappingTransformationRuleArgs{
/// 							RuleName:       pulumi.String("my_table_rename_rule"),
/// 							RuleActionType: pulumi.String("Rename"),
/// 							RuleTargetType: pulumi.String("Table"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			SourceDataSourceType: pulumi.String("MySQL"),
/// 			ResourceSettings: &dataworks.DiJobResourceSettingsArgs{
/// 				OfflineResourceSettings: &dataworks.DiJobResourceSettingsOfflineResourceSettingsArgs{
/// 					RequestedCu:             pulumi.Float64(2),
/// 					ResourceGroupIdentifier: pulumi.String("S_res_group_524257424564736_1716799673667"),
/// 				},
/// 				RealtimeResourceSettings: &dataworks.DiJobResourceSettingsRealtimeResourceSettingsArgs{
/// 					RequestedCu:             pulumi.Float64(2),
/// 					ResourceGroupIdentifier: pulumi.String("S_res_group_524257424564736_1716799673667"),
/// 				},
/// 				ScheduleResourceSettings: &dataworks.DiJobResourceSettingsScheduleResourceSettingsArgs{
/// 					RequestedCu:             pulumi.Float64(2),
/// 					ResourceGroupIdentifier: pulumi.String("S_res_group_524257424564736_1716799673667"),
/// 				},
/// 			},
/// 			TransformationRules: dataworks.DiJobTransformationRuleArray{
/// 				&dataworks.DiJobTransformationRuleArgs{
/// 					RuleActionType: pulumi.String("Rename"),
/// 					RuleExpression: pulumi.String("{\"expression\":\"table2\"}"),
/// 					RuleName:       pulumi.String("my_table_rename_rule"),
/// 					RuleTargetType: pulumi.String("Table"),
/// 				},
/// 			},
/// 			DestinationDataSourceSettings: dataworks.DiJobDestinationDataSourceSettingArray{
/// 				&dataworks.DiJobDestinationDataSourceSettingArgs{
/// 					DataSourceName: pulumi.String("dw_example_holo"),
/// 				},
/// 			},
/// 			JobSettings: &dataworks.DiJobJobSettingsArgs{
/// 				ColumnDataTypeSettings: dataworks.DiJobJobSettingsColumnDataTypeSettingArray{
/// 					&dataworks.DiJobJobSettingsColumnDataTypeSettingArgs{
/// 						DestinationDataType: pulumi.String("bigint"),
/// 						SourceDataType:      pulumi.String("longtext"),
/// 					},
/// 				},
/// 				DdlHandlingSettings: dataworks.DiJobJobSettingsDdlHandlingSettingArray{
/// 					&dataworks.DiJobJobSettingsDdlHandlingSettingArgs{
/// 						Action: pulumi.String("Ignore"),
/// 						Type:   pulumi.String("CreateTable"),
/// 					},
/// 				},
/// 				RuntimeSettings: dataworks.DiJobJobSettingsRuntimeSettingArray{
/// 					&dataworks.DiJobJobSettingsRuntimeSettingArgs{
/// 						Name:  pulumi.String("runtime.realtime.concurrent"),
/// 						Value: pulumi.String("1"),
/// 					},
/// 				},
/// 				ChannelSettings: pulumi.String("1"),
/// 				CycleScheduleSettings: &dataworks.DiJobJobSettingsCycleScheduleSettingsArgs{
/// 					CycleMigrationType: pulumi.String("2"),
/// 					ScheduleParameters: pulumi.String("3"),
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
/// import com.pulumi.alicloud.dataworks.Project;
/// import com.pulumi.alicloud.dataworks.ProjectArgs;
/// import com.pulumi.alicloud.dataworks.DiJob;
/// import com.pulumi.alicloud.dataworks.DiJobArgs;
/// import com.pulumi.alicloud.dataworks.inputs.DiJobSourceDataSourceSettingArgs;
/// import com.pulumi.alicloud.dataworks.inputs.DiJobSourceDataSourceSettingDataSourcePropertiesArgs;
/// import com.pulumi.alicloud.dataworks.inputs.DiJobTableMappingArgs;
/// import com.pulumi.alicloud.dataworks.inputs.DiJobResourceSettingsArgs;
/// import com.pulumi.alicloud.dataworks.inputs.DiJobResourceSettingsOfflineResourceSettingsArgs;
/// import com.pulumi.alicloud.dataworks.inputs.DiJobResourceSettingsRealtimeResourceSettingsArgs;
/// import com.pulumi.alicloud.dataworks.inputs.DiJobResourceSettingsScheduleResourceSettingsArgs;
/// import com.pulumi.alicloud.dataworks.inputs.DiJobTransformationRuleArgs;
/// import com.pulumi.alicloud.dataworks.inputs.DiJobDestinationDataSourceSettingArgs;
/// import com.pulumi.alicloud.dataworks.inputs.DiJobJobSettingsArgs;
/// import com.pulumi.alicloud.dataworks.inputs.DiJobJobSettingsCycleScheduleSettingsArgs;
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
///         var defaultMMHL8U = new Project("defaultMMHL8U", ProjectArgs.builder()
///             .projectName(name)
///             .displayName(name)
///             .description(name)
///             .paiTaskEnabled(true)
///             .build());
///
///         var default_ = new DiJob("default", DiJobArgs.builder()
///             .description(name)
///             .projectId(defaultMMHL8U.id())
///             .jobName("zhenyuan_example_case")
///             .migrationType("api_FullAndRealtimeIncremental")
///             .sourceDataSourceSettings(DiJobSourceDataSourceSettingArgs.builder()
///                 .dataSourceName("dw_mysql")
///                 .dataSourceProperties(DiJobSourceDataSourceSettingDataSourcePropertiesArgs.builder()
///                     .encoding("utf-8")
///                     .timezone("Asia/Shanghai")
///                     .build())
///                 .build())
///             .destinationDataSourceType("Hologres")
///             .tableMappings(DiJobTableMappingArgs.builder()
///                 .sourceObjectSelectionRules(
///                     DiJobTableMappingSourceObjectSelectionRuleArgs.builder()
///                         .action("Include")
///                         .expression("dw_mysql")
///                         .expressionType("Exact")
///                         .objectType("Datasource")
///                         .build(),
///                     DiJobTableMappingSourceObjectSelectionRuleArgs.builder()
///                         .action("Include")
///                         .expression("example_db1")
///                         .expressionType("Exact")
///                         .objectType("Database")
///                         .build(),
///                     DiJobTableMappingSourceObjectSelectionRuleArgs.builder()
///                         .action("Include")
///                         .expression("lsc_example01")
///                         .expressionType("Exact")
///                         .objectType("Table")
///                         .build())
///                 .transformationRules(DiJobTableMappingTransformationRuleArgs.builder()
///                     .ruleName("my_table_rename_rule")
///                     .ruleActionType("Rename")
///                     .ruleTargetType("Table")
///                     .build())
///                 .build())
///             .sourceDataSourceType("MySQL")
///             .resourceSettings(DiJobResourceSettingsArgs.builder()
///                 .offlineResourceSettings(DiJobResourceSettingsOfflineResourceSettingsArgs.builder()
///                     .requestedCu(2.0)
///                     .resourceGroupIdentifier("S_res_group_524257424564736_1716799673667")
///                     .build())
///                 .realtimeResourceSettings(DiJobResourceSettingsRealtimeResourceSettingsArgs.builder()
///                     .requestedCu(2.0)
///                     .resourceGroupIdentifier("S_res_group_524257424564736_1716799673667")
///                     .build())
///                 .scheduleResourceSettings(DiJobResourceSettingsScheduleResourceSettingsArgs.builder()
///                     .requestedCu(2.0)
///                     .resourceGroupIdentifier("S_res_group_524257424564736_1716799673667")
///                     .build())
///                 .build())
///             .transformationRules(DiJobTransformationRuleArgs.builder()
///                 .ruleActionType("Rename")
///                 .ruleExpression("{\"expression\":\"table2\"}")
///                 .ruleName("my_table_rename_rule")
///                 .ruleTargetType("Table")
///                 .build())
///             .destinationDataSourceSettings(DiJobDestinationDataSourceSettingArgs.builder()
///                 .dataSourceName("dw_example_holo")
///                 .build())
///             .jobSettings(DiJobJobSettingsArgs.builder()
///                 .columnDataTypeSettings(DiJobJobSettingsColumnDataTypeSettingArgs.builder()
///                     .destinationDataType("bigint")
///                     .sourceDataType("longtext")
///                     .build())
///                 .ddlHandlingSettings(DiJobJobSettingsDdlHandlingSettingArgs.builder()
///                     .action("Ignore")
///                     .type("CreateTable")
///                     .build())
///                 .runtimeSettings(DiJobJobSettingsRuntimeSettingArgs.builder()
///                     .name("runtime.realtime.concurrent")
///                     .value("1")
///                     .build())
///                 .channelSettings("1")
///                 .cycleScheduleSettings(DiJobJobSettingsCycleScheduleSettingsArgs.builder()
///                     .cycleMigrationType("2")
///                     .scheduleParameters("3")
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
///     default: terraform_example
/// resources:
///   defaultMMHL8U:
///     type: alicloud:dataworks:Project
///     properties:
///       projectName: ${name}
///       displayName: ${name}
///       description: ${name}
///       paiTaskEnabled: true
///   default:
///     type: alicloud:dataworks:DiJob
///     properties:
///       description: ${name}
///       projectId: ${defaultMMHL8U.id}
///       jobName: zhenyuan_example_case
///       migrationType: api_FullAndRealtimeIncremental
///       sourceDataSourceSettings:
///         - dataSourceName: dw_mysql
///           dataSourceProperties:
///             encoding: utf-8
///             timezone: Asia/Shanghai
///       destinationDataSourceType: Hologres
///       tableMappings:
///         - sourceObjectSelectionRules:
///             - action: Include
///               expression: dw_mysql
///               expressionType: Exact
///               objectType: Datasource
///             - action: Include
///               expression: example_db1
///               expressionType: Exact
///               objectType: Database
///             - action: Include
///               expression: lsc_example01
///               expressionType: Exact
///               objectType: Table
///           transformationRules:
///             - ruleName: my_table_rename_rule
///               ruleActionType: Rename
///               ruleTargetType: Table
///       sourceDataSourceType: MySQL
///       resourceSettings:
///         offlineResourceSettings:
///           requestedCu: 2
///           resourceGroupIdentifier: S_res_group_524257424564736_1716799673667
///         realtimeResourceSettings:
///           requestedCu: 2
///           resourceGroupIdentifier: S_res_group_524257424564736_1716799673667
///         scheduleResourceSettings:
///           requestedCu: 2
///           resourceGroupIdentifier: S_res_group_524257424564736_1716799673667
///       transformationRules:
///         - ruleActionType: Rename
///           ruleExpression: '{"expression":"table2"}'
///           ruleName: my_table_rename_rule
///           ruleTargetType: Table
///       destinationDataSourceSettings:
///         - dataSourceName: dw_example_holo
///       jobSettings:
///         columnDataTypeSettings:
///           - destinationDataType: bigint
///             sourceDataType: longtext
///         ddlHandlingSettings:
///           - action: Ignore
///             type: CreateTable
///         runtimeSettings:
///           - name: runtime.realtime.concurrent
///             value: '1'
///         channelSettings: '1'
///         cycleScheduleSettings:
///           cycleMigrationType: '2'
///           scheduleParameters: '3'
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Data Works Di Job can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:dataworks/diJob:DiJob example <project_id>:<di_job_id>
/// ```
class DiJob extends pulumi.CustomResource {
  /// Description of the integration task
  late final pulumi.Output<String?> description;

  /// Destination data source See `destination_data_source_settings` below.
  late final pulumi.Output<List<Map<String, dynamic>>>
  destinationDataSourceSettings;

  /// The type of the target data source. Enumerated values: Hologres and Hive.
  late final pulumi.Output<String> destinationDataSourceType;

  /// Integration Task Id
  late final pulumi.Output<int> diJobId;

  /// Task Name.
  late final pulumi.Output<String> jobName;

  /// The dimension settings of the synchronization task, including the DDL processing policy, the source and destination column data type mapping policy, and the task runtime parameters. See `job_settings` below.
  late final pulumi.Output<DiJobJobSettings?> jobSettings;

  /// Synchronization type, optional enumeration values are:
  ///
  /// Fulllandrealtimeincremental (full and real-time incremental)
  ///
  /// RealtimeIncremental
  ///
  /// Full
  ///
  /// Offflineincremental
  ///
  /// FullAndOfflineIncremental (full amount + offline increment)
  late final pulumi.Output<String> migrationType;

  /// Project Id
  late final pulumi.Output<int> projectId;

  /// Resource Group Properties See `resource_settings` below.
  late final pulumi.Output<DiJobResourceSettings> resourceSettings;

  /// Source data source setting List See `source_data_source_settings` below.
  late final pulumi.Output<List<Map<String, dynamic>>> sourceDataSourceSettings;

  /// The type of the source data source. The enumerated value is MySQL.
  late final pulumi.Output<String> sourceDataSourceType;

  /// Synchronize object transformation mapping list See `table_mappings` below.
  late final pulumi.Output<List<Map<String, dynamic>>> tableMappings;

  /// Definition list of synchronization object conversion rules See `transformation_rules` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> transformationRules;

  /// Creates a new [DiJob].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DiJob]. {@macro pulumi_dataworks_di_job_di_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DiJob(String name, {DiJobArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'alicloud:dataworks/diJob:DiJob',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    description = registerOutput<String?>('description');
    destinationDataSourceSettings = registerOutput<List<Map<String, dynamic>>>(
      'destinationDataSourceSettings',
    );
    destinationDataSourceType = registerOutput<String>(
      'destinationDataSourceType',
    );
    diJobId = registerOutput<int>('diJobId');
    jobName = registerOutput<String>('jobName');
    jobSettings = registerOutput<DiJobJobSettings?>('jobSettings');
    migrationType = registerOutput<String>('migrationType');
    projectId = registerOutput<int>('projectId');
    resourceSettings = registerOutput<DiJobResourceSettings>(
      'resourceSettings',
    );
    sourceDataSourceSettings = registerOutput<List<Map<String, dynamic>>>(
      'sourceDataSourceSettings',
    );
    sourceDataSourceType = registerOutput<String>('sourceDataSourceType');
    tableMappings = registerOutput<List<Map<String, dynamic>>>('tableMappings');
    transformationRules = registerOutput<List<Map<String, dynamic>>?>(
      'transformationRules',
    );
  }

  /// Gets an existing [DiJob] resource's state with the given [name] and [id].
  static DiJob get(String name, pulumi.Input<String> id, {DiJobState? state}) {
    return DiJob._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DiJob._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:dataworks/diJob:DiJob',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    description = registerOutput<String?>('description');
    destinationDataSourceSettings = registerOutput<List<Map<String, dynamic>>>(
      'destinationDataSourceSettings',
    );
    destinationDataSourceType = registerOutput<String>(
      'destinationDataSourceType',
    );
    diJobId = registerOutput<int>('diJobId');
    jobName = registerOutput<String>('jobName');
    jobSettings = registerOutput<DiJobJobSettings?>('jobSettings');
    migrationType = registerOutput<String>('migrationType');
    projectId = registerOutput<int>('projectId');
    resourceSettings = registerOutput<DiJobResourceSettings>(
      'resourceSettings',
    );
    sourceDataSourceSettings = registerOutput<List<Map<String, dynamic>>>(
      'sourceDataSourceSettings',
    );
    sourceDataSourceType = registerOutput<String>('sourceDataSourceType');
    tableMappings = registerOutput<List<Map<String, dynamic>>>('tableMappings');
    transformationRules = registerOutput<List<Map<String, dynamic>>?>(
      'transformationRules',
    );
  }
}
