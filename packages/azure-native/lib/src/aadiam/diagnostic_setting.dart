import 'package:pulumi/pulumi.dart' as pulumi;
import 'diagnostic_setting_args.dart';
import 'log_settings_response.dart';

/// The diagnostic setting resource.
///
/// Uses Azure REST API version 2017-04-01. In version 2.x of the Azure Native provider, it used API version 2017-04-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### BatchAccountDelete
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var diagnosticSetting = new AzureNative.AadIam.DiagnosticSetting("diagnosticSetting", new()
///     {
///         EventHubAuthorizationRuleId = "/subscriptions/1a66ce04-b633-4a0b-b2bc-a912ec8986a6/resourceGroups/montest/providers/microsoft.eventhub/namespaces/mynamespace/eventhubs/myeventhub/authorizationrules/myrule",
///         EventHubName = "myeventhub",
///         Logs = new[]
///         {
///             new AzureNative.AadIam.Inputs.LogSettingsArgs
///             {
///                 Category = AzureNative.AadIam.Category.AuditLogs,
///                 Enabled = true,
///                 RetentionPolicy = new AzureNative.AadIam.Inputs.RetentionPolicyArgs
///                 {
///                     Days = 0,
///                     Enabled = false,
///                 },
///             },
///         },
///         Name = "mysetting",
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
/// 	aadiam "github.com/pulumi/pulumi-azure-native-sdk/aadiam/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := aadiam.NewDiagnosticSetting(ctx, "diagnosticSetting", &aadiam.DiagnosticSettingArgs{
/// 			EventHubAuthorizationRuleId: pulumi.String("/subscriptions/1a66ce04-b633-4a0b-b2bc-a912ec8986a6/resourceGroups/montest/providers/microsoft.eventhub/namespaces/mynamespace/eventhubs/myeventhub/authorizationrules/myrule"),
/// 			EventHubName:                pulumi.String("myeventhub"),
/// 			Logs: aadiam.LogSettingsArray{
/// 				&aadiam.LogSettingsArgs{
/// 					Category: pulumi.String(aadiam.CategoryAuditLogs),
/// 					Enabled:  pulumi.Bool(true),
/// 					RetentionPolicy: &aadiam.RetentionPolicyArgs{
/// 						Days:    pulumi.Int(0),
/// 						Enabled: pulumi.Bool(false),
/// 					},
/// 				},
/// 			},
/// 			Name:             pulumi.String("mysetting"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.aadiam.DiagnosticSetting;
/// import com.pulumi.azurenative.aadiam.DiagnosticSettingArgs;
/// import com.pulumi.azurenative.aadiam.inputs.LogSettingsArgs;
/// import com.pulumi.azurenative.aadiam.inputs.RetentionPolicyArgs;
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
///         var diagnosticSetting = new DiagnosticSetting("diagnosticSetting", DiagnosticSettingArgs.builder()
///             .eventHubAuthorizationRuleId("/subscriptions/1a66ce04-b633-4a0b-b2bc-a912ec8986a6/resourceGroups/montest/providers/microsoft.eventhub/namespaces/mynamespace/eventhubs/myeventhub/authorizationrules/myrule")
///             .eventHubName("myeventhub")
///             .logs(LogSettingsArgs.builder()
///                 .category("AuditLogs")
///                 .enabled(true)
///                 .retentionPolicy(RetentionPolicyArgs.builder()
///                     .days(0)
///                     .enabled(false)
///                     .build())
///                 .build())
///             .name("mysetting")
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
/// const diagnosticSetting = new azure_native.aadiam.DiagnosticSetting("diagnosticSetting", {
///     eventHubAuthorizationRuleId: "/subscriptions/1a66ce04-b633-4a0b-b2bc-a912ec8986a6/resourceGroups/montest/providers/microsoft.eventhub/namespaces/mynamespace/eventhubs/myeventhub/authorizationrules/myrule",
///     eventHubName: "myeventhub",
///     logs: [{
///         category: azure_native.aadiam.Category.AuditLogs,
///         enabled: true,
///         retentionPolicy: {
///             days: 0,
///             enabled: false,
///         },
///     }],
///     name: "mysetting",
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
/// diagnostic_setting = azure_native.aadiam.DiagnosticSetting("diagnosticSetting",
///     event_hub_authorization_rule_id="/subscriptions/1a66ce04-b633-4a0b-b2bc-a912ec8986a6/resourceGroups/montest/providers/microsoft.eventhub/namespaces/mynamespace/eventhubs/myeventhub/authorizationrules/myrule",
///     event_hub_name="myeventhub",
///     logs=[{
///         "category": azure_native.aadiam.Category.AUDIT_LOGS,
///         "enabled": True,
///         "retention_policy": {
///             "days": 0,
///             "enabled": False,
///         },
///     }],
///     name="mysetting",
///     storage_account_id="/subscriptions/df602c9c-7aa0-407d-a6fb-eb20c8bd1192/resourceGroups/apptest/providers/Microsoft.Storage/storageAccounts/appteststorage1",
///     workspace_id="")
///
/// ```
///
/// ```yaml
/// resources:
///   diagnosticSetting:
///     type: azure-native:aadiam:DiagnosticSetting
///     properties:
///       eventHubAuthorizationRuleId: /subscriptions/1a66ce04-b633-4a0b-b2bc-a912ec8986a6/resourceGroups/montest/providers/microsoft.eventhub/namespaces/mynamespace/eventhubs/myeventhub/authorizationrules/myrule
///       eventHubName: myeventhub
///       logs:
///         - category: AuditLogs
///           enabled: true
///           retentionPolicy:
///             days: 0
///             enabled: false
///       name: mysetting
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
/// $ pulumi import azure-native:aadiam:DiagnosticSetting mysetting /providers/microsoft.aadiam/diagnosticSettings/{name}
/// ```
class DiagnosticSetting extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The resource Id for the event hub authorization rule.
  late final pulumi.Output<String?> eventHubAuthorizationRuleId;
  /// The name of the event hub. If none is specified, the default event hub will be selected.
  late final pulumi.Output<String?> eventHubName;
  /// The list of logs settings.
  late final pulumi.Output<List<LogSettingsResponse>?> logs;
  /// Azure resource name
  late final pulumi.Output<String> name;
  /// The service bus rule Id of the diagnostic setting. This is here to maintain backwards compatibility.
  late final pulumi.Output<String?> serviceBusRuleId;
  /// The resource ID of the storage account to which you would like to send Diagnostic Logs.
  late final pulumi.Output<String?> storageAccountId;
  /// Azure resource type
  late final pulumi.Output<String> type;
  /// The workspace ID (resource ID of a Log Analytics workspace) for a Log Analytics workspace to which you would like to send Diagnostic Logs. Example: /subscriptions/4b9e8510-67ab-4e9a-95a9-e2f1e570ea9c/resourceGroups/insights-integration/providers/Microsoft.OperationalInsights/workspaces/viruela2
  late final pulumi.Output<String?> workspaceId;

  /// Creates a new [DiagnosticSetting].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DiagnosticSetting]. {@macro pulumi_aadiam_diagnostic_setting_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DiagnosticSetting(
    String name, {
    DiagnosticSettingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:aadiam:DiagnosticSetting',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.eventHubAuthorizationRuleId = registerOutput<String?>('eventHubAuthorizationRuleId');
    this.eventHubName = registerOutput<String?>('eventHubName');
    this.logs = registerOutput<List<LogSettingsResponse>?>('logs');
    this.name = registerOutput<String>('name');
    this.serviceBusRuleId = registerOutput<String?>('serviceBusRuleId');
    this.storageAccountId = registerOutput<String?>('storageAccountId');
    this.type = registerOutput<String>('type');
    this.workspaceId = registerOutput<String?>('workspaceId');
  }
}
