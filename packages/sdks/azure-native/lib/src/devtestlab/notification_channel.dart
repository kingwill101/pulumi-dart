import 'package:pulumi/pulumi.dart' as pulumi;
import 'notification_channel_args.dart';

/// A notification.
///
/// Uses Azure REST API version 2018-09-15. In version 2.x of the Azure Native provider, it used API version 2018-09-15.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### NotificationChannels_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var notificationChannel = new AzureNative.DevTestLab.NotificationChannel("notificationChannel", new()
///     {
///         Description = "Integration configured for auto-shutdown",
///         EmailRecipient = "{email}",
///         Events = new[]
///         {
///             new AzureNative.DevTestLab.Inputs.EventArgs
///             {
///                 EventName = AzureNative.DevTestLab.NotificationChannelEventType.AutoShutdown,
///             },
///         },
///         LabName = "{labName}",
///         Name = "{notificationChannelName}",
///         NotificationLocale = "en",
///         ResourceGroupName = "resourceGroupName",
///         WebHookUrl = "{webhookUrl}",
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
/// 	devtestlab "github.com/pulumi/pulumi-azure-native-sdk/devtestlab/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := devtestlab.NewNotificationChannel(ctx, "notificationChannel", &devtestlab.NotificationChannelArgs{
/// 			Description:    pulumi.String("Integration configured for auto-shutdown"),
/// 			EmailRecipient: pulumi.String("{email}"),
/// 			Events: devtestlab.EventArray{
/// 				&devtestlab.EventArgs{
/// 					EventName: pulumi.String(devtestlab.NotificationChannelEventTypeAutoShutdown),
/// 				},
/// 			},
/// 			LabName:            pulumi.String("{labName}"),
/// 			Name:               pulumi.String("{notificationChannelName}"),
/// 			NotificationLocale: pulumi.String("en"),
/// 			ResourceGroupName:  pulumi.String("resourceGroupName"),
/// 			WebHookUrl:         pulumi.String("{webhookUrl}"),
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
/// import com.pulumi.azurenative.devtestlab.NotificationChannel;
/// import com.pulumi.azurenative.devtestlab.NotificationChannelArgs;
/// import com.pulumi.azurenative.devtestlab.inputs.EventArgs;
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
///         var notificationChannel = new NotificationChannel("notificationChannel", NotificationChannelArgs.builder()
///             .description("Integration configured for auto-shutdown")
///             .emailRecipient("{email}")
///             .events(EventArgs.builder()
///                 .eventName("AutoShutdown")
///                 .build())
///             .labName("{labName}")
///             .name("{notificationChannelName}")
///             .notificationLocale("en")
///             .resourceGroupName("resourceGroupName")
///             .webHookUrl("{webhookUrl}")
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
/// const notificationChannel = new azure_native.devtestlab.NotificationChannel("notificationChannel", {
///     description: "Integration configured for auto-shutdown",
///     emailRecipient: "{email}",
///     events: [{
///         eventName: azure_native.devtestlab.NotificationChannelEventType.AutoShutdown,
///     }],
///     labName: "{labName}",
///     name: "{notificationChannelName}",
///     notificationLocale: "en",
///     resourceGroupName: "resourceGroupName",
///     webHookUrl: "{webhookUrl}",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// notification_channel = azure_native.devtestlab.NotificationChannel("notificationChannel",
///     description="Integration configured for auto-shutdown",
///     email_recipient="{email}",
///     events=[{
///         "event_name": azure_native.devtestlab.NotificationChannelEventType.AUTO_SHUTDOWN,
///     }],
///     lab_name="{labName}",
///     name="{notificationChannelName}",
///     notification_locale="en",
///     resource_group_name="resourceGroupName",
///     web_hook_url="{webhookUrl}")
///
/// ```
///
/// ```yaml
/// resources:
///   notificationChannel:
///     type: azure-native:devtestlab:NotificationChannel
///     properties:
///       description: Integration configured for auto-shutdown
///       emailRecipient: '{email}'
///       events:
///         - eventName: AutoShutdown
///       labName: '{labName}'
///       name: '{notificationChannelName}'
///       notificationLocale: en
///       resourceGroupName: resourceGroupName
///       webHookUrl: '{webhookUrl}'
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
/// $ pulumi import azure-native:devtestlab:NotificationChannel {notificationChannelName} /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DevTestLab/labs/{labName}/notificationchannels/{name}
/// ```
class NotificationChannel extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The creation date of the notification channel.
  late final pulumi.Output<String> createdDate;

  /// Description of notification.
  late final pulumi.Output<String?> description;

  /// The email recipient to send notifications to (can be a list of semi-colon separated email addresses).
  late final pulumi.Output<String?> emailRecipient;

  /// The list of event for which this notification is enabled.
  late final pulumi.Output<List<Map<String, dynamic>>?> events;

  /// The location of the resource.
  late final pulumi.Output<String?> location;

  /// The name of the resource.
  late final pulumi.Output<String> name;

  /// The locale to use when sending a notification (fallback for unsupported languages is EN).
  late final pulumi.Output<String?> notificationLocale;

  /// The provisioning status of the resource.
  late final pulumi.Output<String> provisioningState;

  /// The tags of the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource.
  late final pulumi.Output<String> type;

  /// The unique immutable identifier of a resource (Guid).
  late final pulumi.Output<String> uniqueIdentifier;

  /// The webhook URL to send notifications to.
  late final pulumi.Output<String?> webHookUrl;

  /// Creates a new [NotificationChannel].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NotificationChannel]. {@macro pulumi_devtestlab_notification_channel_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NotificationChannel(
    String name, {
    NotificationChannelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:devtestlab:NotificationChannel',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    createdDate = registerOutput<String>('createdDate');
    description = registerOutput<String?>('description');
    emailRecipient = registerOutput<String?>('emailRecipient');
    events = registerOutput<List<Map<String, dynamic>>?>('events');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    notificationLocale = registerOutput<String?>('notificationLocale');
    provisioningState = registerOutput<String>('provisioningState');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    uniqueIdentifier = registerOutput<String>('uniqueIdentifier');
    webHookUrl = registerOutput<String?>('webHookUrl');
  }
}
