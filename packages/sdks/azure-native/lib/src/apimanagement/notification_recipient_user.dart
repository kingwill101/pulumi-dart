import 'package:pulumi/pulumi.dart' as pulumi;
import 'notification_recipient_user_args.dart';

/// Recipient User details.
///
/// Uses Azure REST API version 2022-09-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-08-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-05-01, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApiManagementCreateNotificationRecipientUser
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var notificationRecipientUser = new AzureNative.ApiManagement.NotificationRecipientUser("notificationRecipientUser", new()
///     {
///         NotificationName = "RequestPublisherNotificationMessage",
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
///         UserId = "576823d0a40f7e74ec07d642",
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
/// 	apimanagement "github.com/pulumi/pulumi-azure-native-sdk/apimanagement/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apimanagement.NewNotificationRecipientUser(ctx, "notificationRecipientUser", &apimanagement.NotificationRecipientUserArgs{
/// 			NotificationName:  pulumi.String("RequestPublisherNotificationMessage"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ServiceName:       pulumi.String("apimService1"),
/// 			UserId:            pulumi.String("576823d0a40f7e74ec07d642"),
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
/// import com.pulumi.azurenative.apimanagement.NotificationRecipientUser;
/// import com.pulumi.azurenative.apimanagement.NotificationRecipientUserArgs;
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
///         var notificationRecipientUser = new NotificationRecipientUser("notificationRecipientUser", NotificationRecipientUserArgs.builder()
///             .notificationName("RequestPublisherNotificationMessage")
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
///             .userId("576823d0a40f7e74ec07d642")
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
/// const notificationRecipientUser = new azure_native.apimanagement.NotificationRecipientUser("notificationRecipientUser", {
///     notificationName: "RequestPublisherNotificationMessage",
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
///     userId: "576823d0a40f7e74ec07d642",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// notification_recipient_user = azure_native.apimanagement.NotificationRecipientUser("notificationRecipientUser",
///     notification_name="RequestPublisherNotificationMessage",
///     resource_group_name="rg1",
///     service_name="apimService1",
///     user_id="576823d0a40f7e74ec07d642")
///
/// ```
///
/// ```yaml
/// resources:
///   notificationRecipientUser:
///     type: azure-native:apimanagement:NotificationRecipientUser
///     properties:
///       notificationName: RequestPublisherNotificationMessage
///       resourceGroupName: rg1
///       serviceName: apimService1
///       userId: 576823d0a40f7e74ec07d642
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
/// $ pulumi import azure-native:apimanagement:NotificationRecipientUser 576823d0a40f7e74ec07d642 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/notifications/{notificationName}/recipientUsers/{userId}
/// ```
class NotificationRecipientUser extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// API Management UserId subscribed to notification.
  late final pulumi.Output<String?> userId;

  /// Creates a new [NotificationRecipientUser].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NotificationRecipientUser]. {@macro pulumi_apimanagement_notification_recipient_user_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NotificationRecipientUser(
    String name, {
    NotificationRecipientUserArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:apimanagement:NotificationRecipientUser',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    type = registerOutput<String>('type');
    userId = registerOutput<String?>('userId');
  }
}
