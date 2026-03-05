import 'package:pulumi/pulumi.dart' as pulumi;
import 'runbook_association_property_response.dart';
import 'system_data_response.dart';
import 'webhook_args.dart';

/// Definition of the webhook type.
///
/// Uses Azure REST API version 2023-05-15-preview. In version 2.x of the Azure Native provider, it used API version 2015-10-31.
///
/// Other available API versions: 2015-10-31, 2024-10-23. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native automation [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update webhook
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var webhook = new AzureNative.Automation.Webhook("webhook", new()
///     {
///         AutomationAccountName = "myAutomationAccount33",
///         ExpiryTime = "2018-03-29T22:18:13.7002872Z",
///         IsEnabled = true,
///         Name = "TestWebhook",
///         ResourceGroupName = "rg",
///         Runbook = new AzureNative.Automation.Inputs.RunbookAssociationPropertyArgs
///         {
///             Name = "TestRunbook",
///         },
///         Uri = "<uri>",
///         WebhookName = "TestWebhook",
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
/// 	automation "github.com/pulumi/pulumi-azure-native-sdk/automation/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := automation.NewWebhook(ctx, "webhook", &automation.WebhookArgs{
/// 			AutomationAccountName: pulumi.String("myAutomationAccount33"),
/// 			ExpiryTime:            pulumi.String("2018-03-29T22:18:13.7002872Z"),
/// 			IsEnabled:             pulumi.Bool(true),
/// 			Name:                  pulumi.String("TestWebhook"),
/// 			ResourceGroupName:     pulumi.String("rg"),
/// 			Runbook: &automation.RunbookAssociationPropertyArgs{
/// 				Name: pulumi.String("TestRunbook"),
/// 			},
/// 			Uri:         pulumi.String("<uri>"),
/// 			WebhookName: pulumi.String("TestWebhook"),
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
/// import com.pulumi.azurenative.automation.Webhook;
/// import com.pulumi.azurenative.automation.WebhookArgs;
/// import com.pulumi.azurenative.automation.inputs.RunbookAssociationPropertyArgs;
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
///         var webhook = new Webhook("webhook", WebhookArgs.builder()
///             .automationAccountName("myAutomationAccount33")
///             .expiryTime("2018-03-29T22:18:13.7002872Z")
///             .isEnabled(true)
///             .name("TestWebhook")
///             .resourceGroupName("rg")
///             .runbook(RunbookAssociationPropertyArgs.builder()
///                 .name("TestRunbook")
///                 .build())
///             .uri("<uri>")
///             .webhookName("TestWebhook")
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
/// const webhook = new azure_native.automation.Webhook("webhook", {
///     automationAccountName: "myAutomationAccount33",
///     expiryTime: "2018-03-29T22:18:13.7002872Z",
///     isEnabled: true,
///     name: "TestWebhook",
///     resourceGroupName: "rg",
///     runbook: {
///         name: "TestRunbook",
///     },
///     uri: "<uri>",
///     webhookName: "TestWebhook",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// webhook = azure_native.automation.Webhook("webhook",
///     automation_account_name="myAutomationAccount33",
///     expiry_time="2018-03-29T22:18:13.7002872Z",
///     is_enabled=True,
///     name="TestWebhook",
///     resource_group_name="rg",
///     runbook={
///         "name": "TestRunbook",
///     },
///     uri="<uri>",
///     webhook_name="TestWebhook")
///
/// ```
///
/// ```yaml
/// resources:
///   webhook:
///     type: azure-native:automation:Webhook
///     properties:
///       automationAccountName: myAutomationAccount33
///       expiryTime: 2018-03-29T22:18:13.7002872Z
///       isEnabled: true
///       name: TestWebhook
///       resourceGroupName: rg
///       runbook:
///         name: TestRunbook
///       uri: <uri>
///       webhookName: TestWebhook
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
/// $ pulumi import azure-native:automation:Webhook TestWebhook /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Automation/automationAccounts/{automationAccountName}/webhooks/{webhookName}
/// ```
class Webhook extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Gets or sets the creation time.
  late final pulumi.Output<String?> creationTime;
  /// Gets or sets the description.
  late final pulumi.Output<String?> description;
  /// Gets or sets the expiry time.
  late final pulumi.Output<String?> expiryTime;
  /// Gets or sets the value of the enabled flag of the webhook.
  late final pulumi.Output<bool?> isEnabled;
  /// Gets or sets the last invoked time.
  late final pulumi.Output<String?> lastInvokedTime;
  /// Details of the user who last modified the Webhook
  late final pulumi.Output<String?> lastModifiedBy;
  /// Gets or sets the last modified time.
  late final pulumi.Output<String?> lastModifiedTime;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Gets or sets the parameters of the job that is created when the webhook calls the runbook it is associated with.
  late final pulumi.Output<Map<String, String>?> parameters;
  /// Gets or sets the name of the hybrid worker group the webhook job will run on.
  late final pulumi.Output<String?> runOn;
  /// Gets or sets the runbook the webhook is associated with.
  late final pulumi.Output<RunbookAssociationPropertyResponse?> runbook;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Gets or sets the webhook uri.
  late final pulumi.Output<String?> uri;

  /// Creates a new [Webhook].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Webhook]. {@macro pulumi_automation_webhook_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Webhook(
    String name, {
    WebhookArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:automation:Webhook',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    creationTime = registerOutput<String?>('creationTime');
    description = registerOutput<String?>('description');
    expiryTime = registerOutput<String?>('expiryTime');
    isEnabled = registerOutput<bool?>('isEnabled');
    lastInvokedTime = registerOutput<String?>('lastInvokedTime');
    lastModifiedBy = registerOutput<String?>('lastModifiedBy');
    lastModifiedTime = registerOutput<String?>('lastModifiedTime');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, String>?>('parameters');
    runOn = registerOutput<String?>('runOn');
    runbook = registerOutput<RunbookAssociationPropertyResponse?>('runbook', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RunbookAssociationPropertyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    uri = registerOutput<String?>('uri');
  }
}
