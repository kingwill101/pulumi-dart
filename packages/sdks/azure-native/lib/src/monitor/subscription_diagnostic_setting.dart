import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscription_diagnostic_setting_args.dart';
import 'system_data_response.dart';

/// The subscription diagnostic setting resource.
///
/// Uses Azure REST API version 2021-05-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Creates or Updates the subscription diagnostic setting
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var subscriptionDiagnosticSetting = new AzureNative.Monitor.SubscriptionDiagnosticSetting("subscriptionDiagnosticSetting", new()
///     {
///         EventHubAuthorizationRuleId = "/subscriptions/fb9f25f9-5785-4510-a38f-a62f188eb9f8/resourceGroups/montest/providers/microsoft.eventhub/namespaces/mynamespace/authorizationrules/myrule",
///         EventHubName = "myeventhub",
///         Logs = new[]
///         {
///             new AzureNative.Monitor.Inputs.SubscriptionLogSettingsArgs
///             {
///                 CategoryGroup = "allLogs",
///                 Enabled = true,
///             },
///         },
///         MarketplacePartnerId = "/subscriptions/abcdeabc-1234-1234-ab12-123a1234567a/resourceGroups/test-rg/providers/Microsoft.Datadog/monitors/dd1",
///         Name = "ds4",
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
/// 		_, err := monitor.NewSubscriptionDiagnosticSetting(ctx, "subscriptionDiagnosticSetting", &monitor.SubscriptionDiagnosticSettingArgs{
/// 			EventHubAuthorizationRuleId: pulumi.String("/subscriptions/fb9f25f9-5785-4510-a38f-a62f188eb9f8/resourceGroups/montest/providers/microsoft.eventhub/namespaces/mynamespace/authorizationrules/myrule"),
/// 			EventHubName:                pulumi.String("myeventhub"),
/// 			Logs: monitor.SubscriptionLogSettingsArray{
/// 				&monitor.SubscriptionLogSettingsArgs{
/// 					CategoryGroup: pulumi.String("allLogs"),
/// 					Enabled:       pulumi.Bool(true),
/// 				},
/// 			},
/// 			MarketplacePartnerId: pulumi.String("/subscriptions/abcdeabc-1234-1234-ab12-123a1234567a/resourceGroups/test-rg/providers/Microsoft.Datadog/monitors/dd1"),
/// 			Name:                 pulumi.String("ds4"),
/// 			StorageAccountId:     pulumi.String("/subscriptions/df602c9c-7aa0-407d-a6fb-eb20c8bd1192/resourceGroups/apptest/providers/Microsoft.Storage/storageAccounts/appteststorage1"),
/// 			WorkspaceId:          pulumi.String(""),
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
/// resource "azure-native_monitor_subscriptiondiagnosticsetting" "subscriptionDiagnosticSetting" {
///   event_hub_authorization_rule_id = "/subscriptions/fb9f25f9-5785-4510-a38f-a62f188eb9f8/resourceGroups/montest/providers/microsoft.eventhub/namespaces/mynamespace/authorizationrules/myrule"
///   event_hub_name                  = "myeventhub"
///   logs {
///     category_group = "allLogs"
///     enabled        = true
///   }
///   marketplace_partner_id = "/subscriptions/abcdeabc-1234-1234-ab12-123a1234567a/resourceGroups/test-rg/providers/Microsoft.Datadog/monitors/dd1"
///   name                   = "ds4"
///   storage_account_id     = "/subscriptions/df602c9c-7aa0-407d-a6fb-eb20c8bd1192/resourceGroups/apptest/providers/Microsoft.Storage/storageAccounts/appteststorage1"
///   workspace_id           = ""
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
/// import com.pulumi.azurenative.monitor.SubscriptionDiagnosticSetting;
/// import com.pulumi.azurenative.monitor.SubscriptionDiagnosticSettingArgs;
/// import com.pulumi.azurenative.monitor.inputs.SubscriptionLogSettingsArgs;
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
///         var subscriptionDiagnosticSetting = new SubscriptionDiagnosticSetting("subscriptionDiagnosticSetting", SubscriptionDiagnosticSettingArgs.builder()
///             .eventHubAuthorizationRuleId("/subscriptions/fb9f25f9-5785-4510-a38f-a62f188eb9f8/resourceGroups/montest/providers/microsoft.eventhub/namespaces/mynamespace/authorizationrules/myrule")
///             .eventHubName("myeventhub")
///             .logs(SubscriptionLogSettingsArgs.builder()
///                 .categoryGroup("allLogs")
///                 .enabled(true)
///                 .build())
///             .marketplacePartnerId("/subscriptions/abcdeabc-1234-1234-ab12-123a1234567a/resourceGroups/test-rg/providers/Microsoft.Datadog/monitors/dd1")
///             .name("ds4")
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
/// const subscriptionDiagnosticSetting = new azure_native.monitor.SubscriptionDiagnosticSetting("subscriptionDiagnosticSetting", {
///     eventHubAuthorizationRuleId: "/subscriptions/fb9f25f9-5785-4510-a38f-a62f188eb9f8/resourceGroups/montest/providers/microsoft.eventhub/namespaces/mynamespace/authorizationrules/myrule",
///     eventHubName: "myeventhub",
///     logs: [{
///         categoryGroup: "allLogs",
///         enabled: true,
///     }],
///     marketplacePartnerId: "/subscriptions/abcdeabc-1234-1234-ab12-123a1234567a/resourceGroups/test-rg/providers/Microsoft.Datadog/monitors/dd1",
///     name: "ds4",
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
/// subscription_diagnostic_setting = azure_native.monitor.SubscriptionDiagnosticSetting("subscriptionDiagnosticSetting",
///     event_hub_authorization_rule_id="/subscriptions/fb9f25f9-5785-4510-a38f-a62f188eb9f8/resourceGroups/montest/providers/microsoft.eventhub/namespaces/mynamespace/authorizationrules/myrule",
///     event_hub_name="myeventhub",
///     logs=[{
///         "category_group": "allLogs",
///         "enabled": True,
///     }],
///     marketplace_partner_id="/subscriptions/abcdeabc-1234-1234-ab12-123a1234567a/resourceGroups/test-rg/providers/Microsoft.Datadog/monitors/dd1",
///     name="ds4",
///     storage_account_id="/subscriptions/df602c9c-7aa0-407d-a6fb-eb20c8bd1192/resourceGroups/apptest/providers/Microsoft.Storage/storageAccounts/appteststorage1",
///     workspace_id="")
///
/// ```
///
/// ```yaml
/// resources:
///   subscriptionDiagnosticSetting:
///     type: azure-native:monitor:SubscriptionDiagnosticSetting
///     properties:
///       eventHubAuthorizationRuleId: /subscriptions/fb9f25f9-5785-4510-a38f-a62f188eb9f8/resourceGroups/montest/providers/microsoft.eventhub/namespaces/mynamespace/authorizationrules/myrule
///       eventHubName: myeventhub
///       logs:
///         - categoryGroup: allLogs
///           enabled: true
///       marketplacePartnerId: /subscriptions/abcdeabc-1234-1234-ab12-123a1234567a/resourceGroups/test-rg/providers/Microsoft.Datadog/monitors/dd1
///       name: ds4
///       storageAccountId: /subscriptions/df602c9c-7aa0-407d-a6fb-eb20c8bd1192/resourceGroups/apptest/providers/Microsoft.Storage/storageAccounts/appteststorage1
///       workspaceId: ""
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Creates or Updates the subscription diagnostic setting for category
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var subscriptionDiagnosticSetting = new AzureNative.Monitor.SubscriptionDiagnosticSetting("subscriptionDiagnosticSetting", new()
///     {
///         EventHubAuthorizationRuleId = "/subscriptions/fb9f25f9-5785-4510-a38f-a62f188eb9f8/resourceGroups/montest/providers/microsoft.eventhub/namespaces/mynamespace/authorizationrules/myrule",
///         EventHubName = "myeventhub",
///         Logs = new[]
///         {
///             new AzureNative.Monitor.Inputs.SubscriptionLogSettingsArgs
///             {
///                 Category = "Security",
///                 Enabled = true,
///             },
///         },
///         MarketplacePartnerId = "/subscriptions/abcdeabc-1234-1234-ab12-123a1234567a/resourceGroups/test-rg/providers/Microsoft.Datadog/monitors/dd1",
///         Name = "ds4",
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
/// 		_, err := monitor.NewSubscriptionDiagnosticSetting(ctx, "subscriptionDiagnosticSetting", &monitor.SubscriptionDiagnosticSettingArgs{
/// 			EventHubAuthorizationRuleId: pulumi.String("/subscriptions/fb9f25f9-5785-4510-a38f-a62f188eb9f8/resourceGroups/montest/providers/microsoft.eventhub/namespaces/mynamespace/authorizationrules/myrule"),
/// 			EventHubName:                pulumi.String("myeventhub"),
/// 			Logs: monitor.SubscriptionLogSettingsArray{
/// 				&monitor.SubscriptionLogSettingsArgs{
/// 					Category: pulumi.String("Security"),
/// 					Enabled:  pulumi.Bool(true),
/// 				},
/// 			},
/// 			MarketplacePartnerId: pulumi.String("/subscriptions/abcdeabc-1234-1234-ab12-123a1234567a/resourceGroups/test-rg/providers/Microsoft.Datadog/monitors/dd1"),
/// 			Name:                 pulumi.String("ds4"),
/// 			StorageAccountId:     pulumi.String("/subscriptions/df602c9c-7aa0-407d-a6fb-eb20c8bd1192/resourceGroups/apptest/providers/Microsoft.Storage/storageAccounts/appteststorage1"),
/// 			WorkspaceId:          pulumi.String(""),
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
/// resource "azure-native_monitor_subscriptiondiagnosticsetting" "subscriptionDiagnosticSetting" {
///   event_hub_authorization_rule_id = "/subscriptions/fb9f25f9-5785-4510-a38f-a62f188eb9f8/resourceGroups/montest/providers/microsoft.eventhub/namespaces/mynamespace/authorizationrules/myrule"
///   event_hub_name                  = "myeventhub"
///   logs {
///     category = "Security"
///     enabled  = true
///   }
///   marketplace_partner_id = "/subscriptions/abcdeabc-1234-1234-ab12-123a1234567a/resourceGroups/test-rg/providers/Microsoft.Datadog/monitors/dd1"
///   name                   = "ds4"
///   storage_account_id     = "/subscriptions/df602c9c-7aa0-407d-a6fb-eb20c8bd1192/resourceGroups/apptest/providers/Microsoft.Storage/storageAccounts/appteststorage1"
///   workspace_id           = ""
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
/// import com.pulumi.azurenative.monitor.SubscriptionDiagnosticSetting;
/// import com.pulumi.azurenative.monitor.SubscriptionDiagnosticSettingArgs;
/// import com.pulumi.azurenative.monitor.inputs.SubscriptionLogSettingsArgs;
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
///         var subscriptionDiagnosticSetting = new SubscriptionDiagnosticSetting("subscriptionDiagnosticSetting", SubscriptionDiagnosticSettingArgs.builder()
///             .eventHubAuthorizationRuleId("/subscriptions/fb9f25f9-5785-4510-a38f-a62f188eb9f8/resourceGroups/montest/providers/microsoft.eventhub/namespaces/mynamespace/authorizationrules/myrule")
///             .eventHubName("myeventhub")
///             .logs(SubscriptionLogSettingsArgs.builder()
///                 .category("Security")
///                 .enabled(true)
///                 .build())
///             .marketplacePartnerId("/subscriptions/abcdeabc-1234-1234-ab12-123a1234567a/resourceGroups/test-rg/providers/Microsoft.Datadog/monitors/dd1")
///             .name("ds4")
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
/// const subscriptionDiagnosticSetting = new azure_native.monitor.SubscriptionDiagnosticSetting("subscriptionDiagnosticSetting", {
///     eventHubAuthorizationRuleId: "/subscriptions/fb9f25f9-5785-4510-a38f-a62f188eb9f8/resourceGroups/montest/providers/microsoft.eventhub/namespaces/mynamespace/authorizationrules/myrule",
///     eventHubName: "myeventhub",
///     logs: [{
///         category: "Security",
///         enabled: true,
///     }],
///     marketplacePartnerId: "/subscriptions/abcdeabc-1234-1234-ab12-123a1234567a/resourceGroups/test-rg/providers/Microsoft.Datadog/monitors/dd1",
///     name: "ds4",
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
/// subscription_diagnostic_setting = azure_native.monitor.SubscriptionDiagnosticSetting("subscriptionDiagnosticSetting",
///     event_hub_authorization_rule_id="/subscriptions/fb9f25f9-5785-4510-a38f-a62f188eb9f8/resourceGroups/montest/providers/microsoft.eventhub/namespaces/mynamespace/authorizationrules/myrule",
///     event_hub_name="myeventhub",
///     logs=[{
///         "category": "Security",
///         "enabled": True,
///     }],
///     marketplace_partner_id="/subscriptions/abcdeabc-1234-1234-ab12-123a1234567a/resourceGroups/test-rg/providers/Microsoft.Datadog/monitors/dd1",
///     name="ds4",
///     storage_account_id="/subscriptions/df602c9c-7aa0-407d-a6fb-eb20c8bd1192/resourceGroups/apptest/providers/Microsoft.Storage/storageAccounts/appteststorage1",
///     workspace_id="")
///
/// ```
///
/// ```yaml
/// resources:
///   subscriptionDiagnosticSetting:
///     type: azure-native:monitor:SubscriptionDiagnosticSetting
///     properties:
///       eventHubAuthorizationRuleId: /subscriptions/fb9f25f9-5785-4510-a38f-a62f188eb9f8/resourceGroups/montest/providers/microsoft.eventhub/namespaces/mynamespace/authorizationrules/myrule
///       eventHubName: myeventhub
///       logs:
///         - category: Security
///           enabled: true
///       marketplacePartnerId: /subscriptions/abcdeabc-1234-1234-ab12-123a1234567a/resourceGroups/test-rg/providers/Microsoft.Datadog/monitors/dd1
///       name: ds4
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
/// $ pulumi import azure-native:monitor:SubscriptionDiagnosticSetting ds4 /subscriptions/{subscriptionId}/providers/Microsoft.Insights/diagnosticSettings/{name}
/// ```
class SubscriptionDiagnosticSetting extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The resource Id for the event hub authorization rule.
  late final pulumi.Output<String?> eventHubAuthorizationRuleId;
  /// The name of the event hub. If none is specified, the default event hub will be selected.
  late final pulumi.Output<String?> eventHubName;
  /// The list of logs settings.
  late final pulumi.Output<List<Map<String, dynamic>>?> logs;
  /// The full ARM resource ID of the Marketplace resource to which you would like to send Diagnostic Logs.
  late final pulumi.Output<String?> marketplacePartnerId;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The service bus rule Id of the diagnostic setting. This is here to maintain backwards compatibility.
  late final pulumi.Output<String?> serviceBusRuleId;
  /// The resource ID of the storage account to which you would like to send Diagnostic Logs.
  late final pulumi.Output<String?> storageAccountId;
  /// The system metadata related to this resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// The full ARM resource ID of the Log Analytics workspace to which you would like to send Diagnostic Logs. Example: /subscriptions/4b9e8510-67ab-4e9a-95a9-e2f1e570ea9c/resourceGroups/insights-integration/providers/Microsoft.OperationalInsights/workspaces/viruela2
  late final pulumi.Output<String?> workspaceId;

  /// Creates a new [SubscriptionDiagnosticSetting].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SubscriptionDiagnosticSetting]. {@macro pulumi_monitor_subscription_diagnostic_setting_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SubscriptionDiagnosticSetting(
    String name, {
    SubscriptionDiagnosticSettingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:monitor:SubscriptionDiagnosticSetting',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    eventHubAuthorizationRuleId = registerOutput<String?>('eventHubAuthorizationRuleId');
    eventHubName = registerOutput<String?>('eventHubName');
    logs = registerOutput<List<Map<String, dynamic>>?>('logs');
    marketplacePartnerId = registerOutput<String?>('marketplacePartnerId');
    this.name = registerOutput<String>('name');
    serviceBusRuleId = registerOutput<String?>('serviceBusRuleId');
    storageAccountId = registerOutput<String?>('storageAccountId');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    workspaceId = registerOutput<String?>('workspaceId');
  }
}
