import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'webhook_args.dart';

/// A class represent an AppComplianceAutomation webhook resource.
///
/// Uses Azure REST API version 2024-06-27. In version 2.x of the Azure Native provider, it used API version 2024-06-27.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Webhook_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var webhook = new AzureNative.AppComplianceAutomation.Webhook("webhook", new()
///     {
///         ContentType = AzureNative.AppComplianceAutomation.ContentType.ApplicationJson,
///         EnableSslVerification = AzureNative.AppComplianceAutomation.EnableSslVerification.True,
///         Events = new[]
///         {
///             AzureNative.AppComplianceAutomation.NotificationEvent.Generate_snapshot_failed,
///         },
///         PayloadUrl = "https://example.com",
///         ReportName = "testReportName",
///         SendAllEvents = AzureNative.AppComplianceAutomation.SendAllEvents.False,
///         Status = AzureNative.AppComplianceAutomation.WebhookStatus.Enabled,
///         UpdateWebhookKey = AzureNative.AppComplianceAutomation.UpdateWebhookKey.True,
///         WebhookKey = "00000000-0000-0000-0000-000000000000",
///         WebhookName = "testWebhookName",
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
/// 	appcomplianceautomation "github.com/pulumi/pulumi-azure-native-sdk/appcomplianceautomation/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := appcomplianceautomation.NewWebhook(ctx, "webhook", &appcomplianceautomation.WebhookArgs{
/// 			ContentType:           pulumi.String(appcomplianceautomation.ContentTypeApplicationJson),
/// 			EnableSslVerification: pulumi.String(appcomplianceautomation.EnableSslVerificationTrue),
/// 			Events: pulumi.StringArray{
/// 				pulumi.String(appcomplianceautomation.NotificationEvent_Generate_snapshot_failed),
/// 			},
/// 			PayloadUrl:       pulumi.String("https://example.com"),
/// 			ReportName:       pulumi.String("testReportName"),
/// 			SendAllEvents:    pulumi.String(appcomplianceautomation.SendAllEventsFalse),
/// 			Status:           pulumi.String(appcomplianceautomation.WebhookStatusEnabled),
/// 			UpdateWebhookKey: pulumi.String(appcomplianceautomation.UpdateWebhookKeyTrue),
/// 			WebhookKey:       pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 			WebhookName:      pulumi.String("testWebhookName"),
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
/// import com.pulumi.azurenative.appcomplianceautomation.Webhook;
/// import com.pulumi.azurenative.appcomplianceautomation.WebhookArgs;
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
///             .contentType("application/json")
///             .enableSslVerification("true")
///             .events("generate_snapshot_failed")
///             .payloadUrl("https://example.com")
///             .reportName("testReportName")
///             .sendAllEvents("false")
///             .status("Enabled")
///             .updateWebhookKey("true")
///             .webhookKey("00000000-0000-0000-0000-000000000000")
///             .webhookName("testWebhookName")
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
/// const webhook = new azure_native.appcomplianceautomation.Webhook("webhook", {
///     contentType: azure_native.appcomplianceautomation.ContentType.ApplicationJson,
///     enableSslVerification: azure_native.appcomplianceautomation.EnableSslVerification.True,
///     events: [azure_native.appcomplianceautomation.NotificationEvent.Generate_snapshot_failed],
///     payloadUrl: "https://example.com",
///     reportName: "testReportName",
///     sendAllEvents: azure_native.appcomplianceautomation.SendAllEvents.False,
///     status: azure_native.appcomplianceautomation.WebhookStatus.Enabled,
///     updateWebhookKey: azure_native.appcomplianceautomation.UpdateWebhookKey.True,
///     webhookKey: "00000000-0000-0000-0000-000000000000",
///     webhookName: "testWebhookName",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// webhook = azure_native.appcomplianceautomation.Webhook("webhook",
///     content_type=azure_native.appcomplianceautomation.ContentType.APPLICATION_JSON,
///     enable_ssl_verification=azure_native.appcomplianceautomation.EnableSslVerification.TRUE,
///     events=[azure_native.appcomplianceautomation.NotificationEvent.GENERATE_SNAPSHOT_FAILED],
///     payload_url="https://example.com",
///     report_name="testReportName",
///     send_all_events=azure_native.appcomplianceautomation.SendAllEvents.FALSE,
///     status=azure_native.appcomplianceautomation.WebhookStatus.ENABLED,
///     update_webhook_key=azure_native.appcomplianceautomation.UpdateWebhookKey.TRUE,
///     webhook_key="00000000-0000-0000-0000-000000000000",
///     webhook_name="testWebhookName")
///
/// ```
///
/// ```yaml
/// resources:
///   webhook:
///     type: azure-native:appcomplianceautomation:Webhook
///     properties:
///       contentType: application/json
///       enableSslVerification: 'true'
///       events:
///         - generate_snapshot_failed
///       payloadUrl: https://example.com
///       reportName: testReportName
///       sendAllEvents: 'false'
///       status: Enabled
///       updateWebhookKey: 'true'
///       webhookKey: 00000000-0000-0000-0000-000000000000
///       webhookName: testWebhookName
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
/// $ pulumi import azure-native:appcomplianceautomation:Webhook testWebhookName /providers/Microsoft.AppComplianceAutomation/reports/{reportName}/webhooks/{webhookName}
/// ```
class Webhook extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// content type
  late final pulumi.Output<String?> contentType;

  /// webhook deliveryStatus
  late final pulumi.Output<String> deliveryStatus;

  /// whether to enable ssl verification
  late final pulumi.Output<String?> enableSslVerification;

  /// under which event notification should be sent.
  late final pulumi.Output<List<String>?> events;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// webhook payload url
  late final pulumi.Output<String?> payloadUrl;

  /// Azure Resource Provisioning State
  late final pulumi.Output<String> provisioningState;

  /// whether to send notification under any event.
  late final pulumi.Output<String?> sendAllEvents;

  /// Webhook status.
  late final pulumi.Output<String?> status;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Tenant id.
  late final pulumi.Output<String> tenantId;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// whether to update webhookKey.
  late final pulumi.Output<String?> updateWebhookKey;

  /// Webhook id in database.
  late final pulumi.Output<String> webhookId;

  /// webhook secret token. If not set, this field value is null; otherwise, please set a string value.
  late final pulumi.Output<String?> webhookKey;

  /// whether webhookKey is enabled.
  late final pulumi.Output<String> webhookKeyEnabled;

  /// Creates a new [Webhook].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Webhook]. {@macro pulumi_appcomplianceautomation_webhook_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Webhook(
    String name, {
    WebhookArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:appcomplianceautomation:Webhook',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    contentType = registerOutput<String?>('contentType');
    deliveryStatus = registerOutput<String>('deliveryStatus');
    enableSslVerification = registerOutput<String?>('enableSslVerification');
    events = registerOutput<List<String>?>('events');
    this.name = registerOutput<String>('name');
    payloadUrl = registerOutput<String?>('payloadUrl');
    provisioningState = registerOutput<String>('provisioningState');
    sendAllEvents = registerOutput<String?>('sendAllEvents');
    status = registerOutput<String?>('status');
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tenantId = registerOutput<String>('tenantId');
    type = registerOutput<String>('type');
    updateWebhookKey = registerOutput<String?>('updateWebhookKey');
    webhookId = registerOutput<String>('webhookId');
    webhookKey = registerOutput<String?>('webhookKey');
    webhookKeyEnabled = registerOutput<String>('webhookKeyEnabled');
  }
}
