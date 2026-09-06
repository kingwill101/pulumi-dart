import 'package:pulumi/pulumi.dart' as pulumi;
import 'diagnostic_setting_args.dart';
import 'diagnostics_log_settings_response.dart';
import 'diagnostics_metric_settings_response.dart';
import 'system_data_response.dart';

/// The diagnostic setting resource.
///
/// Uses Azure REST API version 2021-05-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Creates or Updates the diagnostic setting
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var diagnosticSetting = new AzureNative.Monitor.DiagnosticSetting("diagnosticSetting", new()
///     {
///         EventHubAuthorizationRuleId = "/subscriptions/1a66ce04-b633-4a0b-b2bc-a912ec8986a6/resourceGroups/montest/providers/microsoft.eventhub/namespaces/mynamespace/authorizationrules/myrule",
///         EventHubName = "myeventhub",
///         LogAnalyticsDestinationType = "Dedicated",
///         Logs = new[]
///         {
///             new AzureNative.Monitor.Inputs.DiagnosticsLogSettingsArgs
///             {
///                 CategoryGroup = "allLogs",
///                 Enabled = true,
///                 RetentionPolicy = new AzureNative.Monitor.Inputs.MicrosoftCommonRetentionPolicyArgs
///                 {
///                     Days = 0,
///                     Enabled = false,
///                 },
///             },
///         },
///         MarketplacePartnerId = "/subscriptions/abcdeabc-1234-1234-ab12-123a1234567a/resourceGroups/test-rg/providers/Microsoft.Datadog/monitors/dd1",
///         Metrics = new[]
///         {
///             new AzureNative.Monitor.Inputs.DiagnosticsMetricSettingsArgs
///             {
///                 Category = "WorkflowMetrics",
///                 Enabled = true,
///                 RetentionPolicy = new AzureNative.Monitor.Inputs.MicrosoftCommonRetentionPolicyArgs
///                 {
///                     Days = 0,
///                     Enabled = false,
///                 },
///             },
///         },
///         Name = "mysetting",
///         ResourceUri = "subscriptions/1a66ce04-b633-4a0b-b2bc-a912ec8986a6/resourcegroups/viruela1/providers/microsoft.logic/workflows/viruela6",
///         StorageAccountId = "/subscriptions/df602c9c-7aa0-407d-a6fb-eb20c8bd1192/resourceGroups/apptest/providers/Microsoft.Storage/storageAccounts/appteststorage1",
///         WorkspaceId = "",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	monitor "github.com/pulumi/pulumi-azure-native-sdk/monitor/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := monitor.NewDiagnosticSetting(ctx, "diagnosticSetting", &monitor.DiagnosticSettingArgs{
/// 			EventHubAuthorizationRuleId: pulumi.String("/subscriptions/1a66ce04-b633-4a0b-b2bc-a912ec8986a6/resourceGroups/montest/providers/microsoft.eventhub/namespaces/mynamespace/authorizationrules/myrule"),
/// 			EventHubName:                pulumi.String("myeventhub"),
/// 			LogAnalyticsDestinationType: pulumi.String("Dedicated"),
/// 			Logs: monitor.DiagnosticsLogSettingsArray{
/// 				&monitor.DiagnosticsLogSettingsArgs{
/// 					CategoryGroup: pulumi.String("allLogs"),
/// 					Enabled:       pulumi.Bool(true),
/// 					RetentionPolicy: &monitor.MicrosoftCommonRetentionPolicyArgs{
/// 						Days:    pulumi.Int(0),
/// 						Enabled: pulumi.Bool(false),
/// 					},
/// 				},
/// 			},
/// 			MarketplacePartnerId: pulumi.String("/subscriptions/abcdeabc-1234-1234-ab12-123a1234567a/resourceGroups/test-rg/providers/Microsoft.Datadog/monitors/dd1"),
/// 			Metrics: monitor.DiagnosticsMetricSettingsArray{
/// 				&monitor.DiagnosticsMetricSettingsArgs{
/// 					Category: pulumi.String("WorkflowMetrics"),
/// 					Enabled:  pulumi.Bool(true),
/// 					RetentionPolicy: &monitor.MicrosoftCommonRetentionPolicyArgs{
/// 						Days:    pulumi.Int(0),
/// 						Enabled: pulumi.Bool(false),
/// 					},
/// 				},
/// 			},
/// 			Name:             pulumi.String("mysetting"),
/// 			ResourceUri:      pulumi.String("subscriptions/1a66ce04-b633-4a0b-b2bc-a912ec8986a6/resourcegroups/viruela1/providers/microsoft.logic/workflows/viruela6"),
/// 			StorageAccountId: pulumi.String("/subscriptions/df602c9c-7aa0-407d-a6fb-eb20c8bd1192/resourceGroups/apptest/providers/Microsoft.Storage/storageAccounts/appteststorage1"),
/// 			WorkspaceId:      pulumi.String(""),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_monitor_diagnosticsetting" "diagnosticSetting" {
///   event_hub_authorization_rule_id = "/subscriptions/1a66ce04-b633-4a0b-b2bc-a912ec8986a6/resourceGroups/montest/providers/microsoft.eventhub/namespaces/mynamespace/authorizationrules/myrule"
///   event_hub_name                  = "myeventhub"
///   log_analytics_destination_type  = "Dedicated"
///   logs {
///     category_group = "allLogs"
///     enabled        = true
///     retention_policy = {
///       days    = 0
///       enabled = false
///     }
///   }
///   marketplace_partner_id = "/subscriptions/abcdeabc-1234-1234-ab12-123a1234567a/resourceGroups/test-rg/providers/Microsoft.Datadog/monitors/dd1"
///   metrics {
///     category = "WorkflowMetrics"
///     enabled  = true
///     retention_policy = {
///       days    = 0
///       enabled = false
///     }
///   }
///   name               = "mysetting"
///   resource_uri       = "subscriptions/1a66ce04-b633-4a0b-b2bc-a912ec8986a6/resourcegroups/viruela1/providers/microsoft.logic/workflows/viruela6"
///   storage_account_id = "/subscriptions/df602c9c-7aa0-407d-a6fb-eb20c8bd1192/resourceGroups/apptest/providers/Microsoft.Storage/storageAccounts/appteststorage1"
///   workspace_id       = ""
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.monitor.DiagnosticSetting;
/// import com.pulumi.azurenative.monitor.DiagnosticSettingArgs;
/// import com.pulumi.azurenative.monitor.inputs.DiagnosticsLogSettingsArgs;
/// import com.pulumi.azurenative.monitor.inputs.MicrosoftCommonRetentionPolicyArgs;
/// import com.pulumi.azurenative.monitor.inputs.DiagnosticsMetricSettingsArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var diagnosticSetting = new DiagnosticSetting("diagnosticSetting", DiagnosticSettingArgs.builder()
///             .eventHubAuthorizationRuleId("/subscriptions/1a66ce04-b633-4a0b-b2bc-a912ec8986a6/resourceGroups/montest/providers/microsoft.eventhub/namespaces/mynamespace/authorizationrules/myrule")
///             .eventHubName("myeventhub")
///             .logAnalyticsDestinationType("Dedicated")
///             .logs(DiagnosticsLogSettingsArgs.builder()
///                 .categoryGroup("allLogs")
///                 .enabled(true)
///                 .retentionPolicy(MicrosoftCommonRetentionPolicyArgs.builder()
///                     .days(0)
///                     .enabled(false)
///                     .build())
///                 .build())
///             .marketplacePartnerId("/subscriptions/abcdeabc-1234-1234-ab12-123a1234567a/resourceGroups/test-rg/providers/Microsoft.Datadog/monitors/dd1")
///             .metrics(DiagnosticsMetricSettingsArgs.builder()
///                 .category("WorkflowMetrics")
///                 .enabled(true)
///                 .retentionPolicy(MicrosoftCommonRetentionPolicyArgs.builder()
///                     .days(0)
///                     .enabled(false)
///                     .build())
///                 .build())
///             .name("mysetting")
///             .resourceUri("subscriptions/1a66ce04-b633-4a0b-b2bc-a912ec8986a6/resourcegroups/viruela1/providers/microsoft.logic/workflows/viruela6")
///             .storageAccountId("/subscriptions/df602c9c-7aa0-407d-a6fb-eb20c8bd1192/resourceGroups/apptest/providers/Microsoft.Storage/storageAccounts/appteststorage1")
///             .workspaceId("")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const diagnosticSetting = new azure_native.monitor.DiagnosticSetting("diagnosticSetting", {
///     eventHubAuthorizationRuleId: "/subscriptions/1a66ce04-b633-4a0b-b2bc-a912ec8986a6/resourceGroups/montest/providers/microsoft.eventhub/namespaces/mynamespace/authorizationrules/myrule",
///     eventHubName: "myeventhub",
///     logAnalyticsDestinationType: "Dedicated",
///     logs: [{
///         categoryGroup: "allLogs",
///         enabled: true,
///         retentionPolicy: {
///             days: 0,
///             enabled: false,
///         },
///     }],
///     marketplacePartnerId: "/subscriptions/abcdeabc-1234-1234-ab12-123a1234567a/resourceGroups/test-rg/providers/Microsoft.Datadog/monitors/dd1",
///     metrics: [{
///         category: "WorkflowMetrics",
///         enabled: true,
///         retentionPolicy: {
///             days: 0,
///             enabled: false,
///         },
///     }],
///     name: "mysetting",
///     resourceUri: "subscriptions/1a66ce04-b633-4a0b-b2bc-a912ec8986a6/resourcegroups/viruela1/providers/microsoft.logic/workflows/viruela6",
///     storageAccountId: "/subscriptions/df602c9c-7aa0-407d-a6fb-eb20c8bd1192/resourceGroups/apptest/providers/Microsoft.Storage/storageAccounts/appteststorage1",
///     workspaceId: "",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// diagnostic_setting = azure_native.monitor.DiagnosticSetting("diagnosticSetting",
///     event_hub_authorization_rule_id="/subscriptions/1a66ce04-b633-4a0b-b2bc-a912ec8986a6/resourceGroups/montest/providers/microsoft.eventhub/namespaces/mynamespace/authorizationrules/myrule",
///     event_hub_name="myeventhub",
///     log_analytics_destination_type="Dedicated",
///     logs=[{
///         "category_group": "allLogs",
///         "enabled": True,
///         "retention_policy": {
///             "days": 0,
///             "enabled": False,
///         },
///     }],
///     marketplace_partner_id="/subscriptions/abcdeabc-1234-1234-ab12-123a1234567a/resourceGroups/test-rg/providers/Microsoft.Datadog/monitors/dd1",
///     metrics=[{
///         "category": "WorkflowMetrics",
///         "enabled": True,
///         "retention_policy": {
///             "days": 0,
///             "enabled": False,
///         },
///     }],
///     name="mysetting",
///     resource_uri="subscriptions/1a66ce04-b633-4a0b-b2bc-a912ec8986a6/resourcegroups/viruela1/providers/microsoft.logic/workflows/viruela6",
///     storage_account_id="/subscriptions/df602c9c-7aa0-407d-a6fb-eb20c8bd1192/resourceGroups/apptest/providers/Microsoft.Storage/storageAccounts/appteststorage1",
///     workspace_id="")
///
/// ```
///
/// ```yaml
/// resources:
///   diagnosticSetting:
///     type: azure-native:monitor:DiagnosticSetting
///     properties:
///       eventHubAuthorizationRuleId: /subscriptions/1a66ce04-b633-4a0b-b2bc-a912ec8986a6/resourceGroups/montest/providers/microsoft.eventhub/namespaces/mynamespace/authorizationrules/myrule
///       eventHubName: myeventhub
///       logAnalyticsDestinationType: Dedicated
///       logs:
///         - categoryGroup: allLogs
///           enabled: true
///           retentionPolicy:
///             days: 0
///             enabled: false
///       marketplacePartnerId: /subscriptions/abcdeabc-1234-1234-ab12-123a1234567a/resourceGroups/test-rg/providers/Microsoft.Datadog/monitors/dd1
///       metrics:
///         - category: WorkflowMetrics
///           enabled: true
///           retentionPolicy:
///             days: 0
///             enabled: false
///       name: mysetting
///       resourceUri: subscriptions/1a66ce04-b633-4a0b-b2bc-a912ec8986a6/resourcegroups/viruela1/providers/microsoft.logic/workflows/viruela6
///       storageAccountId: /subscriptions/df602c9c-7aa0-407d-a6fb-eb20c8bd1192/resourceGroups/apptest/providers/Microsoft.Storage/storageAccounts/appteststorage1
///       workspaceId: ""
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Creates or Updates the diagnostic setting for category
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var diagnosticSetting = new AzureNative.Monitor.DiagnosticSetting("diagnosticSetting", new()
///     {
///         EventHubAuthorizationRuleId = "/subscriptions/1a66ce04-b633-4a0b-b2bc-a912ec8986a6/resourceGroups/montest/providers/microsoft.eventhub/namespaces/mynamespace/authorizationrules/myrule",
///         EventHubName = "myeventhub",
///         LogAnalyticsDestinationType = "Dedicated",
///         Logs = new[]
///         {
///             new AzureNative.Monitor.Inputs.DiagnosticsLogSettingsArgs
///             {
///                 Category = "WorkflowRuntime",
///                 Enabled = true,
///                 RetentionPolicy = new AzureNative.Monitor.Inputs.MicrosoftCommonRetentionPolicyArgs
///                 {
///                     Days = 0,
///                     Enabled = false,
///                 },
///             },
///         },
///         MarketplacePartnerId = "/subscriptions/abcdeabc-1234-1234-ab12-123a1234567a/resourceGroups/test-rg/providers/Microsoft.Datadog/monitors/dd1",
///         Metrics = new[]
///         {
///             new AzureNative.Monitor.Inputs.DiagnosticsMetricSettingsArgs
///             {
///                 Category = "WorkflowMetrics",
///                 Enabled = true,
///                 RetentionPolicy = new AzureNative.Monitor.Inputs.MicrosoftCommonRetentionPolicyArgs
///                 {
///                     Days = 0,
///                     Enabled = false,
///                 },
///             },
///         },
///         Name = "mysetting",
///         ResourceUri = "subscriptions/1a66ce04-b633-4a0b-b2bc-a912ec8986a6/resourcegroups/viruela1/providers/microsoft.logic/workflows/viruela6",
///         StorageAccountId = "/subscriptions/df602c9c-7aa0-407d-a6fb-eb20c8bd1192/resourceGroups/apptest/providers/Microsoft.Storage/storageAccounts/appteststorage1",
///         WorkspaceId = "",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	monitor "github.com/pulumi/pulumi-azure-native-sdk/monitor/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := monitor.NewDiagnosticSetting(ctx, "diagnosticSetting", &monitor.DiagnosticSettingArgs{
/// 			EventHubAuthorizationRuleId: pulumi.String("/subscriptions/1a66ce04-b633-4a0b-b2bc-a912ec8986a6/resourceGroups/montest/providers/microsoft.eventhub/namespaces/mynamespace/authorizationrules/myrule"),
/// 			EventHubName:                pulumi.String("myeventhub"),
/// 			LogAnalyticsDestinationType: pulumi.String("Dedicated"),
/// 			Logs: monitor.DiagnosticsLogSettingsArray{
/// 				&monitor.DiagnosticsLogSettingsArgs{
/// 					Category: pulumi.String("WorkflowRuntime"),
/// 					Enabled:  pulumi.Bool(true),
/// 					RetentionPolicy: &monitor.MicrosoftCommonRetentionPolicyArgs{
/// 						Days:    pulumi.Int(0),
/// 						Enabled: pulumi.Bool(false),
/// 					},
/// 				},
/// 			},
/// 			MarketplacePartnerId: pulumi.String("/subscriptions/abcdeabc-1234-1234-ab12-123a1234567a/resourceGroups/test-rg/providers/Microsoft.Datadog/monitors/dd1"),
/// 			Metrics: monitor.DiagnosticsMetricSettingsArray{
/// 				&monitor.DiagnosticsMetricSettingsArgs{
/// 					Category: pulumi.String("WorkflowMetrics"),
/// 					Enabled:  pulumi.Bool(true),
/// 					RetentionPolicy: &monitor.MicrosoftCommonRetentionPolicyArgs{
/// 						Days:    pulumi.Int(0),
/// 						Enabled: pulumi.Bool(false),
/// 					},
/// 				},
/// 			},
/// 			Name:             pulumi.String("mysetting"),
/// 			ResourceUri:      pulumi.String("subscriptions/1a66ce04-b633-4a0b-b2bc-a912ec8986a6/resourcegroups/viruela1/providers/microsoft.logic/workflows/viruela6"),
/// 			StorageAccountId: pulumi.String("/subscriptions/df602c9c-7aa0-407d-a6fb-eb20c8bd1192/resourceGroups/apptest/providers/Microsoft.Storage/storageAccounts/appteststorage1"),
/// 			WorkspaceId:      pulumi.String(""),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_monitor_diagnosticsetting" "diagnosticSetting" {
///   event_hub_authorization_rule_id = "/subscriptions/1a66ce04-b633-4a0b-b2bc-a912ec8986a6/resourceGroups/montest/providers/microsoft.eventhub/namespaces/mynamespace/authorizationrules/myrule"
///   event_hub_name                  = "myeventhub"
///   log_analytics_destination_type  = "Dedicated"
///   logs {
///     category = "WorkflowRuntime"
///     enabled  = true
///     retention_policy = {
///       days    = 0
///       enabled = false
///     }
///   }
///   marketplace_partner_id = "/subscriptions/abcdeabc-1234-1234-ab12-123a1234567a/resourceGroups/test-rg/providers/Microsoft.Datadog/monitors/dd1"
///   metrics {
///     category = "WorkflowMetrics"
///     enabled  = true
///     retention_policy = {
///       days    = 0
///       enabled = false
///     }
///   }
///   name               = "mysetting"
///   resource_uri       = "subscriptions/1a66ce04-b633-4a0b-b2bc-a912ec8986a6/resourcegroups/viruela1/providers/microsoft.logic/workflows/viruela6"
///   storage_account_id = "/subscriptions/df602c9c-7aa0-407d-a6fb-eb20c8bd1192/resourceGroups/apptest/providers/Microsoft.Storage/storageAccounts/appteststorage1"
///   workspace_id       = ""
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.monitor.DiagnosticSetting;
/// import com.pulumi.azurenative.monitor.DiagnosticSettingArgs;
/// import com.pulumi.azurenative.monitor.inputs.DiagnosticsLogSettingsArgs;
/// import com.pulumi.azurenative.monitor.inputs.MicrosoftCommonRetentionPolicyArgs;
/// import com.pulumi.azurenative.monitor.inputs.DiagnosticsMetricSettingsArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var diagnosticSetting = new DiagnosticSetting("diagnosticSetting", DiagnosticSettingArgs.builder()
///             .eventHubAuthorizationRuleId("/subscriptions/1a66ce04-b633-4a0b-b2bc-a912ec8986a6/resourceGroups/montest/providers/microsoft.eventhub/namespaces/mynamespace/authorizationrules/myrule")
///             .eventHubName("myeventhub")
///             .logAnalyticsDestinationType("Dedicated")
///             .logs(DiagnosticsLogSettingsArgs.builder()
///                 .category("WorkflowRuntime")
///                 .enabled(true)
///                 .retentionPolicy(MicrosoftCommonRetentionPolicyArgs.builder()
///                     .days(0)
///                     .enabled(false)
///                     .build())
///                 .build())
///             .marketplacePartnerId("/subscriptions/abcdeabc-1234-1234-ab12-123a1234567a/resourceGroups/test-rg/providers/Microsoft.Datadog/monitors/dd1")
///             .metrics(DiagnosticsMetricSettingsArgs.builder()
///                 .category("WorkflowMetrics")
///                 .enabled(true)
///                 .retentionPolicy(MicrosoftCommonRetentionPolicyArgs.builder()
///                     .days(0)
///                     .enabled(false)
///                     .build())
///                 .build())
///             .name("mysetting")
///             .resourceUri("subscriptions/1a66ce04-b633-4a0b-b2bc-a912ec8986a6/resourcegroups/viruela1/providers/microsoft.logic/workflows/viruela6")
///             .storageAccountId("/subscriptions/df602c9c-7aa0-407d-a6fb-eb20c8bd1192/resourceGroups/apptest/providers/Microsoft.Storage/storageAccounts/appteststorage1")
///             .workspaceId("")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const diagnosticSetting = new azure_native.monitor.DiagnosticSetting("diagnosticSetting", {
///     eventHubAuthorizationRuleId: "/subscriptions/1a66ce04-b633-4a0b-b2bc-a912ec8986a6/resourceGroups/montest/providers/microsoft.eventhub/namespaces/mynamespace/authorizationrules/myrule",
///     eventHubName: "myeventhub",
///     logAnalyticsDestinationType: "Dedicated",
///     logs: [{
///         category: "WorkflowRuntime",
///         enabled: true,
///         retentionPolicy: {
///             days: 0,
///             enabled: false,
///         },
///     }],
///     marketplacePartnerId: "/subscriptions/abcdeabc-1234-1234-ab12-123a1234567a/resourceGroups/test-rg/providers/Microsoft.Datadog/monitors/dd1",
///     metrics: [{
///         category: "WorkflowMetrics",
///         enabled: true,
///         retentionPolicy: {
///             days: 0,
///             enabled: false,
///         },
///     }],
///     name: "mysetting",
///     resourceUri: "subscriptions/1a66ce04-b633-4a0b-b2bc-a912ec8986a6/resourcegroups/viruela1/providers/microsoft.logic/workflows/viruela6",
///     storageAccountId: "/subscriptions/df602c9c-7aa0-407d-a6fb-eb20c8bd1192/resourceGroups/apptest/providers/Microsoft.Storage/storageAccounts/appteststorage1",
///     workspaceId: "",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// diagnostic_setting = azure_native.monitor.DiagnosticSetting("diagnosticSetting",
///     event_hub_authorization_rule_id="/subscriptions/1a66ce04-b633-4a0b-b2bc-a912ec8986a6/resourceGroups/montest/providers/microsoft.eventhub/namespaces/mynamespace/authorizationrules/myrule",
///     event_hub_name="myeventhub",
///     log_analytics_destination_type="Dedicated",
///     logs=[{
///         "category": "WorkflowRuntime",
///         "enabled": True,
///         "retention_policy": {
///             "days": 0,
///             "enabled": False,
///         },
///     }],
///     marketplace_partner_id="/subscriptions/abcdeabc-1234-1234-ab12-123a1234567a/resourceGroups/test-rg/providers/Microsoft.Datadog/monitors/dd1",
///     metrics=[{
///         "category": "WorkflowMetrics",
///         "enabled": True,
///         "retention_policy": {
///             "days": 0,
///             "enabled": False,
///         },
///     }],
///     name="mysetting",
///     resource_uri="subscriptions/1a66ce04-b633-4a0b-b2bc-a912ec8986a6/resourcegroups/viruela1/providers/microsoft.logic/workflows/viruela6",
///     storage_account_id="/subscriptions/df602c9c-7aa0-407d-a6fb-eb20c8bd1192/resourceGroups/apptest/providers/Microsoft.Storage/storageAccounts/appteststorage1",
///     workspace_id="")
///
/// ```
///
/// ```yaml
/// resources:
///   diagnosticSetting:
///     type: azure-native:monitor:DiagnosticSetting
///     properties:
///       eventHubAuthorizationRuleId: /subscriptions/1a66ce04-b633-4a0b-b2bc-a912ec8986a6/resourceGroups/montest/providers/microsoft.eventhub/namespaces/mynamespace/authorizationrules/myrule
///       eventHubName: myeventhub
///       logAnalyticsDestinationType: Dedicated
///       logs:
///         - category: WorkflowRuntime
///           enabled: true
///           retentionPolicy:
///             days: 0
///             enabled: false
///       marketplacePartnerId: /subscriptions/abcdeabc-1234-1234-ab12-123a1234567a/resourceGroups/test-rg/providers/Microsoft.Datadog/monitors/dd1
///       metrics:
///         - category: WorkflowMetrics
///           enabled: true
///           retentionPolicy:
///             days: 0
///             enabled: false
///       name: mysetting
///       resourceUri: subscriptions/1a66ce04-b633-4a0b-b2bc-a912ec8986a6/resourcegroups/viruela1/providers/microsoft.logic/workflows/viruela6
///       storageAccountId: /subscriptions/df602c9c-7aa0-407d-a6fb-eb20c8bd1192/resourceGroups/apptest/providers/Microsoft.Storage/storageAccounts/appteststorage1
///       workspaceId: ""
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:monitor:DiagnosticSetting mysetting /{resourceUri}/providers/Microsoft.Insights/diagnosticSettings/{name}
/// ```
class DiagnosticSetting extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The resource Id for the event hub authorization rule.
  late final pulumi.Output<String?> eventHubAuthorizationRuleId;
  /// The name of the event hub. If none is specified, the default event hub will be selected.
  late final pulumi.Output<String?> eventHubName;
  /// A string indicating whether the export to Log Analytics should use the default destination type, i.e. AzureDiagnostics, or use a destination type constructed as follows: &lt;normalized service identity&gt;_&lt;normalized category name&gt;. Possible values are: Dedicated and null (null is default.)
  late final pulumi.Output<String?> logAnalyticsDestinationType;
  /// The list of logs settings.
  late final pulumi.Output<List<DiagnosticsLogSettingsResponse>?> logs;
  /// The full ARM resource ID of the Marketplace resource to which you would like to send Diagnostic Logs.
  late final pulumi.Output<String?> marketplacePartnerId;
  /// The list of metric settings.
  late final pulumi.Output<List<DiagnosticsMetricSettingsResponse>?> metrics;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The service bus rule Id of the diagnostic setting. This is here to maintain backwards compatibility.
  late final pulumi.Output<String?> serviceBusRuleId;
  /// The resource ID of the storage account to which you would like to send Diagnostic Logs.
  late final pulumi.Output<String?> storageAccountId;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// The full ARM resource ID of the Log Analytics workspace to which you would like to send Diagnostic Logs. Example: /subscriptions/4b9e8510-67ab-4e9a-95a9-e2f1e570ea9c/resourceGroups/insights-integration/providers/Microsoft.OperationalInsights/workspaces/viruela2
  late final pulumi.Output<String?> workspaceId;

  /// Creates a new [DiagnosticSetting].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DiagnosticSetting]. {@macro pulumi_monitor_diagnostic_setting_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DiagnosticSetting(
    String name, {
    DiagnosticSettingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:monitor:DiagnosticSetting',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    eventHubAuthorizationRuleId = registerOutput<String?>('eventHubAuthorizationRuleId');
    eventHubName = registerOutput<String?>('eventHubName');
    logAnalyticsDestinationType = registerOutput<String?>('logAnalyticsDestinationType');
    logs = registerOutput<List<DiagnosticsLogSettingsResponse>?>('logs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DiagnosticsLogSettingsResponse>(guardedValue, (value) => DiagnosticsLogSettingsResponse.fromMap((value as Map).cast<String, dynamic>())); });
    marketplacePartnerId = registerOutput<String?>('marketplacePartnerId');
    metrics = registerOutput<List<DiagnosticsMetricSettingsResponse>?>('metrics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DiagnosticsMetricSettingsResponse>(guardedValue, (value) => DiagnosticsMetricSettingsResponse.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    serviceBusRuleId = registerOutput<String?>('serviceBusRuleId');
    storageAccountId = registerOutput<String?>('storageAccountId');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    workspaceId = registerOutput<String?>('workspaceId');
  }

  /// Creates a typed reference to an existing [DiagnosticSetting] resource.
  DiagnosticSetting.reference(String urn)
    : super(
        'azure-native:monitor:DiagnosticSetting',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    eventHubAuthorizationRuleId = registerOutput<String?>('eventHubAuthorizationRuleId');
    eventHubName = registerOutput<String?>('eventHubName');
    logAnalyticsDestinationType = registerOutput<String?>('logAnalyticsDestinationType');
    logs = registerOutput<List<DiagnosticsLogSettingsResponse>?>('logs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DiagnosticsLogSettingsResponse>(guardedValue, (value) => DiagnosticsLogSettingsResponse.fromMap((value as Map).cast<String, dynamic>())); });
    marketplacePartnerId = registerOutput<String?>('marketplacePartnerId');
    metrics = registerOutput<List<DiagnosticsMetricSettingsResponse>?>('metrics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DiagnosticsMetricSettingsResponse>(guardedValue, (value) => DiagnosticsMetricSettingsResponse.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    serviceBusRuleId = registerOutput<String?>('serviceBusRuleId');
    storageAccountId = registerOutput<String?>('storageAccountId');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    workspaceId = registerOutput<String?>('workspaceId');
  }
}
