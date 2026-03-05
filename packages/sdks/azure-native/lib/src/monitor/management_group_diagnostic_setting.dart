import 'package:pulumi/pulumi.dart' as pulumi;
import 'management_group_diagnostic_setting_args.dart';
import 'system_data_response.dart';

/// The management group diagnostic setting resource.
///
/// Uses Azure REST API version 2021-05-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Creates or Updates the management group diagnostic setting
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managementGroupDiagnosticSetting = new AzureNative.Monitor.ManagementGroupDiagnosticSetting("managementGroupDiagnosticSetting", new()
///     {
///         EventHubAuthorizationRuleId = "/subscriptions/fb9f25f9-5785-4510-a38f-a62f188eb9f8/resourceGroups/montest/providers/microsoft.eventhub/namespaces/mynamespace/authorizationrules/myrule",
///         EventHubName = "myeventhub",
///         Logs = new[]
///         {
///             new AzureNative.Monitor.Inputs.ManagementGroupLogSettingsArgs
///             {
///                 CategoryGroup = "allLogs",
///                 Enabled = true,
///             },
///         },
///         ManagementGroupId = "testChildMG7",
///         MarketplacePartnerId = "/subscriptions/abcdeabc-1234-1234-ab12-123a1234567a/resourceGroups/test-rg/providers/Microsoft.Datadog/monitors/dd1",
///         Name = "setting1",
///         StorageAccountId = "/subscriptions/bfaef57f-297e-4210-bfe5-27c18cc671f7/resourceGroups/FuncAppRunners/providers/Microsoft.Storage/storageAccounts/testpersonalb6a5",
///         WorkspaceId = "/subscriptions/9cf7cc0a-0ba1-4624-bc82-97e1ee25dc45/resourceGroups/mgTest/providers/Microsoft.OperationalInsights/workspaces/mgTestWorkspace",
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
/// 		_, err := monitor.NewManagementGroupDiagnosticSetting(ctx, "managementGroupDiagnosticSetting", &monitor.ManagementGroupDiagnosticSettingArgs{
/// 			EventHubAuthorizationRuleId: pulumi.String("/subscriptions/fb9f25f9-5785-4510-a38f-a62f188eb9f8/resourceGroups/montest/providers/microsoft.eventhub/namespaces/mynamespace/authorizationrules/myrule"),
/// 			EventHubName:                pulumi.String("myeventhub"),
/// 			Logs: monitor.ManagementGroupLogSettingsArray{
/// 				&monitor.ManagementGroupLogSettingsArgs{
/// 					CategoryGroup: pulumi.String("allLogs"),
/// 					Enabled:       pulumi.Bool(true),
/// 				},
/// 			},
/// 			ManagementGroupId:    pulumi.String("testChildMG7"),
/// 			MarketplacePartnerId: pulumi.String("/subscriptions/abcdeabc-1234-1234-ab12-123a1234567a/resourceGroups/test-rg/providers/Microsoft.Datadog/monitors/dd1"),
/// 			Name:                 pulumi.String("setting1"),
/// 			StorageAccountId:     pulumi.String("/subscriptions/bfaef57f-297e-4210-bfe5-27c18cc671f7/resourceGroups/FuncAppRunners/providers/Microsoft.Storage/storageAccounts/testpersonalb6a5"),
/// 			WorkspaceId:          pulumi.String("/subscriptions/9cf7cc0a-0ba1-4624-bc82-97e1ee25dc45/resourceGroups/mgTest/providers/Microsoft.OperationalInsights/workspaces/mgTestWorkspace"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.monitor.ManagementGroupDiagnosticSetting;
/// import com.pulumi.azurenative.monitor.ManagementGroupDiagnosticSettingArgs;
/// import com.pulumi.azurenative.monitor.inputs.ManagementGroupLogSettingsArgs;
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
///         var managementGroupDiagnosticSetting = new ManagementGroupDiagnosticSetting("managementGroupDiagnosticSetting", ManagementGroupDiagnosticSettingArgs.builder()
///             .eventHubAuthorizationRuleId("/subscriptions/fb9f25f9-5785-4510-a38f-a62f188eb9f8/resourceGroups/montest/providers/microsoft.eventhub/namespaces/mynamespace/authorizationrules/myrule")
///             .eventHubName("myeventhub")
///             .logs(ManagementGroupLogSettingsArgs.builder()
///                 .categoryGroup("allLogs")
///                 .enabled(true)
///                 .build())
///             .managementGroupId("testChildMG7")
///             .marketplacePartnerId("/subscriptions/abcdeabc-1234-1234-ab12-123a1234567a/resourceGroups/test-rg/providers/Microsoft.Datadog/monitors/dd1")
///             .name("setting1")
///             .storageAccountId("/subscriptions/bfaef57f-297e-4210-bfe5-27c18cc671f7/resourceGroups/FuncAppRunners/providers/Microsoft.Storage/storageAccounts/testpersonalb6a5")
///             .workspaceId("/subscriptions/9cf7cc0a-0ba1-4624-bc82-97e1ee25dc45/resourceGroups/mgTest/providers/Microsoft.OperationalInsights/workspaces/mgTestWorkspace")
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
/// const managementGroupDiagnosticSetting = new azure_native.monitor.ManagementGroupDiagnosticSetting("managementGroupDiagnosticSetting", {
///     eventHubAuthorizationRuleId: "/subscriptions/fb9f25f9-5785-4510-a38f-a62f188eb9f8/resourceGroups/montest/providers/microsoft.eventhub/namespaces/mynamespace/authorizationrules/myrule",
///     eventHubName: "myeventhub",
///     logs: [{
///         categoryGroup: "allLogs",
///         enabled: true,
///     }],
///     managementGroupId: "testChildMG7",
///     marketplacePartnerId: "/subscriptions/abcdeabc-1234-1234-ab12-123a1234567a/resourceGroups/test-rg/providers/Microsoft.Datadog/monitors/dd1",
///     name: "setting1",
///     storageAccountId: "/subscriptions/bfaef57f-297e-4210-bfe5-27c18cc671f7/resourceGroups/FuncAppRunners/providers/Microsoft.Storage/storageAccounts/testpersonalb6a5",
///     workspaceId: "/subscriptions/9cf7cc0a-0ba1-4624-bc82-97e1ee25dc45/resourceGroups/mgTest/providers/Microsoft.OperationalInsights/workspaces/mgTestWorkspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// management_group_diagnostic_setting = azure_native.monitor.ManagementGroupDiagnosticSetting("managementGroupDiagnosticSetting",
///     event_hub_authorization_rule_id="/subscriptions/fb9f25f9-5785-4510-a38f-a62f188eb9f8/resourceGroups/montest/providers/microsoft.eventhub/namespaces/mynamespace/authorizationrules/myrule",
///     event_hub_name="myeventhub",
///     logs=[{
///         "category_group": "allLogs",
///         "enabled": True,
///     }],
///     management_group_id="testChildMG7",
///     marketplace_partner_id="/subscriptions/abcdeabc-1234-1234-ab12-123a1234567a/resourceGroups/test-rg/providers/Microsoft.Datadog/monitors/dd1",
///     name="setting1",
///     storage_account_id="/subscriptions/bfaef57f-297e-4210-bfe5-27c18cc671f7/resourceGroups/FuncAppRunners/providers/Microsoft.Storage/storageAccounts/testpersonalb6a5",
///     workspace_id="/subscriptions/9cf7cc0a-0ba1-4624-bc82-97e1ee25dc45/resourceGroups/mgTest/providers/Microsoft.OperationalInsights/workspaces/mgTestWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   managementGroupDiagnosticSetting:
///     type: azure-native:monitor:ManagementGroupDiagnosticSetting
///     properties:
///       eventHubAuthorizationRuleId: /subscriptions/fb9f25f9-5785-4510-a38f-a62f188eb9f8/resourceGroups/montest/providers/microsoft.eventhub/namespaces/mynamespace/authorizationrules/myrule
///       eventHubName: myeventhub
///       logs:
///         - categoryGroup: allLogs
///           enabled: true
///       managementGroupId: testChildMG7
///       marketplacePartnerId: /subscriptions/abcdeabc-1234-1234-ab12-123a1234567a/resourceGroups/test-rg/providers/Microsoft.Datadog/monitors/dd1
///       name: setting1
///       storageAccountId: /subscriptions/bfaef57f-297e-4210-bfe5-27c18cc671f7/resourceGroups/FuncAppRunners/providers/Microsoft.Storage/storageAccounts/testpersonalb6a5
///       workspaceId: /subscriptions/9cf7cc0a-0ba1-4624-bc82-97e1ee25dc45/resourceGroups/mgTest/providers/Microsoft.OperationalInsights/workspaces/mgTestWorkspace
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Creates or Updates the management group diagnostic setting for category
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managementGroupDiagnosticSetting = new AzureNative.Monitor.ManagementGroupDiagnosticSetting("managementGroupDiagnosticSetting", new()
///     {
///         EventHubAuthorizationRuleId = "/subscriptions/fb9f25f9-5785-4510-a38f-a62f188eb9f8/resourceGroups/montest/providers/microsoft.eventhub/namespaces/mynamespace/authorizationrules/myrule",
///         EventHubName = "myeventhub",
///         Logs = new[]
///         {
///             new AzureNative.Monitor.Inputs.ManagementGroupLogSettingsArgs
///             {
///                 Category = "Administrative",
///                 Enabled = true,
///             },
///             new AzureNative.Monitor.Inputs.ManagementGroupLogSettingsArgs
///             {
///                 Category = "Policy",
///                 Enabled = true,
///             },
///         },
///         ManagementGroupId = "testChildMG7",
///         MarketplacePartnerId = "/subscriptions/abcdeabc-1234-1234-ab12-123a1234567a/resourceGroups/test-rg/providers/Microsoft.Datadog/monitors/dd1",
///         Name = "setting1",
///         StorageAccountId = "/subscriptions/bfaef57f-297e-4210-bfe5-27c18cc671f7/resourceGroups/FuncAppRunners/providers/Microsoft.Storage/storageAccounts/testpersonalb6a5",
///         WorkspaceId = "/subscriptions/9cf7cc0a-0ba1-4624-bc82-97e1ee25dc45/resourceGroups/mgTest/providers/Microsoft.OperationalInsights/workspaces/mgTestWorkspace",
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
/// 		_, err := monitor.NewManagementGroupDiagnosticSetting(ctx, "managementGroupDiagnosticSetting", &monitor.ManagementGroupDiagnosticSettingArgs{
/// 			EventHubAuthorizationRuleId: pulumi.String("/subscriptions/fb9f25f9-5785-4510-a38f-a62f188eb9f8/resourceGroups/montest/providers/microsoft.eventhub/namespaces/mynamespace/authorizationrules/myrule"),
/// 			EventHubName:                pulumi.String("myeventhub"),
/// 			Logs: monitor.ManagementGroupLogSettingsArray{
/// 				&monitor.ManagementGroupLogSettingsArgs{
/// 					Category: pulumi.String("Administrative"),
/// 					Enabled:  pulumi.Bool(true),
/// 				},
/// 				&monitor.ManagementGroupLogSettingsArgs{
/// 					Category: pulumi.String("Policy"),
/// 					Enabled:  pulumi.Bool(true),
/// 				},
/// 			},
/// 			ManagementGroupId:    pulumi.String("testChildMG7"),
/// 			MarketplacePartnerId: pulumi.String("/subscriptions/abcdeabc-1234-1234-ab12-123a1234567a/resourceGroups/test-rg/providers/Microsoft.Datadog/monitors/dd1"),
/// 			Name:                 pulumi.String("setting1"),
/// 			StorageAccountId:     pulumi.String("/subscriptions/bfaef57f-297e-4210-bfe5-27c18cc671f7/resourceGroups/FuncAppRunners/providers/Microsoft.Storage/storageAccounts/testpersonalb6a5"),
/// 			WorkspaceId:          pulumi.String("/subscriptions/9cf7cc0a-0ba1-4624-bc82-97e1ee25dc45/resourceGroups/mgTest/providers/Microsoft.OperationalInsights/workspaces/mgTestWorkspace"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.monitor.ManagementGroupDiagnosticSetting;
/// import com.pulumi.azurenative.monitor.ManagementGroupDiagnosticSettingArgs;
/// import com.pulumi.azurenative.monitor.inputs.ManagementGroupLogSettingsArgs;
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
///         var managementGroupDiagnosticSetting = new ManagementGroupDiagnosticSetting("managementGroupDiagnosticSetting", ManagementGroupDiagnosticSettingArgs.builder()
///             .eventHubAuthorizationRuleId("/subscriptions/fb9f25f9-5785-4510-a38f-a62f188eb9f8/resourceGroups/montest/providers/microsoft.eventhub/namespaces/mynamespace/authorizationrules/myrule")
///             .eventHubName("myeventhub")
///             .logs(
///                 ManagementGroupLogSettingsArgs.builder()
///                     .category("Administrative")
///                     .enabled(true)
///                     .build(),
///                 ManagementGroupLogSettingsArgs.builder()
///                     .category("Policy")
///                     .enabled(true)
///                     .build())
///             .managementGroupId("testChildMG7")
///             .marketplacePartnerId("/subscriptions/abcdeabc-1234-1234-ab12-123a1234567a/resourceGroups/test-rg/providers/Microsoft.Datadog/monitors/dd1")
///             .name("setting1")
///             .storageAccountId("/subscriptions/bfaef57f-297e-4210-bfe5-27c18cc671f7/resourceGroups/FuncAppRunners/providers/Microsoft.Storage/storageAccounts/testpersonalb6a5")
///             .workspaceId("/subscriptions/9cf7cc0a-0ba1-4624-bc82-97e1ee25dc45/resourceGroups/mgTest/providers/Microsoft.OperationalInsights/workspaces/mgTestWorkspace")
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
/// const managementGroupDiagnosticSetting = new azure_native.monitor.ManagementGroupDiagnosticSetting("managementGroupDiagnosticSetting", {
///     eventHubAuthorizationRuleId: "/subscriptions/fb9f25f9-5785-4510-a38f-a62f188eb9f8/resourceGroups/montest/providers/microsoft.eventhub/namespaces/mynamespace/authorizationrules/myrule",
///     eventHubName: "myeventhub",
///     logs: [
///         {
///             category: "Administrative",
///             enabled: true,
///         },
///         {
///             category: "Policy",
///             enabled: true,
///         },
///     ],
///     managementGroupId: "testChildMG7",
///     marketplacePartnerId: "/subscriptions/abcdeabc-1234-1234-ab12-123a1234567a/resourceGroups/test-rg/providers/Microsoft.Datadog/monitors/dd1",
///     name: "setting1",
///     storageAccountId: "/subscriptions/bfaef57f-297e-4210-bfe5-27c18cc671f7/resourceGroups/FuncAppRunners/providers/Microsoft.Storage/storageAccounts/testpersonalb6a5",
///     workspaceId: "/subscriptions/9cf7cc0a-0ba1-4624-bc82-97e1ee25dc45/resourceGroups/mgTest/providers/Microsoft.OperationalInsights/workspaces/mgTestWorkspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// management_group_diagnostic_setting = azure_native.monitor.ManagementGroupDiagnosticSetting("managementGroupDiagnosticSetting",
///     event_hub_authorization_rule_id="/subscriptions/fb9f25f9-5785-4510-a38f-a62f188eb9f8/resourceGroups/montest/providers/microsoft.eventhub/namespaces/mynamespace/authorizationrules/myrule",
///     event_hub_name="myeventhub",
///     logs=[
///         {
///             "category": "Administrative",
///             "enabled": True,
///         },
///         {
///             "category": "Policy",
///             "enabled": True,
///         },
///     ],
///     management_group_id="testChildMG7",
///     marketplace_partner_id="/subscriptions/abcdeabc-1234-1234-ab12-123a1234567a/resourceGroups/test-rg/providers/Microsoft.Datadog/monitors/dd1",
///     name="setting1",
///     storage_account_id="/subscriptions/bfaef57f-297e-4210-bfe5-27c18cc671f7/resourceGroups/FuncAppRunners/providers/Microsoft.Storage/storageAccounts/testpersonalb6a5",
///     workspace_id="/subscriptions/9cf7cc0a-0ba1-4624-bc82-97e1ee25dc45/resourceGroups/mgTest/providers/Microsoft.OperationalInsights/workspaces/mgTestWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   managementGroupDiagnosticSetting:
///     type: azure-native:monitor:ManagementGroupDiagnosticSetting
///     properties:
///       eventHubAuthorizationRuleId: /subscriptions/fb9f25f9-5785-4510-a38f-a62f188eb9f8/resourceGroups/montest/providers/microsoft.eventhub/namespaces/mynamespace/authorizationrules/myrule
///       eventHubName: myeventhub
///       logs:
///         - category: Administrative
///           enabled: true
///         - category: Policy
///           enabled: true
///       managementGroupId: testChildMG7
///       marketplacePartnerId: /subscriptions/abcdeabc-1234-1234-ab12-123a1234567a/resourceGroups/test-rg/providers/Microsoft.Datadog/monitors/dd1
///       name: setting1
///       storageAccountId: /subscriptions/bfaef57f-297e-4210-bfe5-27c18cc671f7/resourceGroups/FuncAppRunners/providers/Microsoft.Storage/storageAccounts/testpersonalb6a5
///       workspaceId: /subscriptions/9cf7cc0a-0ba1-4624-bc82-97e1ee25dc45/resourceGroups/mgTest/providers/Microsoft.OperationalInsights/workspaces/mgTestWorkspace
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
/// $ pulumi import azure-native:monitor:ManagementGroupDiagnosticSetting setting1 /providers/Microsoft.Management/managementGroups/{managementGroupId}/providers/Microsoft.Insights/diagnosticSettings/{name}
/// ```
class ManagementGroupDiagnosticSetting extends pulumi.CustomResource {
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

  /// Creates a new [ManagementGroupDiagnosticSetting].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagementGroupDiagnosticSetting]. {@macro pulumi_monitor_management_group_diagnostic_setting_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagementGroupDiagnosticSetting(
    String name, {
    ManagementGroupDiagnosticSettingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:monitor:ManagementGroupDiagnosticSetting',
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
