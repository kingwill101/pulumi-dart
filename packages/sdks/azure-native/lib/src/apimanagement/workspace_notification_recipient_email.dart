import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_notification_recipient_email_args.dart';

/// Recipient Email details.
///
/// Uses Azure REST API version 2022-09-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-09-01-preview.
///
/// Other available API versions: 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-05-01, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApiManagementCreateWorkspaceNotificationRecipientEmail
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workspaceNotificationRecipientEmail = new AzureNative.ApiManagement.WorkspaceNotificationRecipientEmail("workspaceNotificationRecipientEmail", new()
///     {
///         Email = "foobar@live.com",
///         NotificationName = "RequestPublisherNotificationMessage",
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
///         WorkspaceId = "wks1",
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
/// 		_, err := apimanagement.NewWorkspaceNotificationRecipientEmail(ctx, "workspaceNotificationRecipientEmail", &apimanagement.WorkspaceNotificationRecipientEmailArgs{
/// 			Email:             pulumi.String("foobar@live.com"),
/// 			NotificationName:  pulumi.String("RequestPublisherNotificationMessage"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ServiceName:       pulumi.String("apimService1"),
/// 			WorkspaceId:       pulumi.String("wks1"),
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
/// import com.pulumi.azurenative.apimanagement.WorkspaceNotificationRecipientEmail;
/// import com.pulumi.azurenative.apimanagement.WorkspaceNotificationRecipientEmailArgs;
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
///         var workspaceNotificationRecipientEmail = new WorkspaceNotificationRecipientEmail("workspaceNotificationRecipientEmail", WorkspaceNotificationRecipientEmailArgs.builder()
///             .email("foobar@live.com")
///             .notificationName("RequestPublisherNotificationMessage")
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
///             .workspaceId("wks1")
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
/// const workspaceNotificationRecipientEmail = new azure_native.apimanagement.WorkspaceNotificationRecipientEmail("workspaceNotificationRecipientEmail", {
///     email: "foobar@live.com",
///     notificationName: "RequestPublisherNotificationMessage",
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
///     workspaceId: "wks1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// workspace_notification_recipient_email = azure_native.apimanagement.WorkspaceNotificationRecipientEmail("workspaceNotificationRecipientEmail",
///     email="foobar@live.com",
///     notification_name="RequestPublisherNotificationMessage",
///     resource_group_name="rg1",
///     service_name="apimService1",
///     workspace_id="wks1")
///
/// ```
///
/// ```yaml
/// resources:
///   workspaceNotificationRecipientEmail:
///     type: azure-native:apimanagement:WorkspaceNotificationRecipientEmail
///     properties:
///       email: foobar@live.com
///       notificationName: RequestPublisherNotificationMessage
///       resourceGroupName: rg1
///       serviceName: apimService1
///       workspaceId: wks1
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
/// $ pulumi import azure-native:apimanagement:WorkspaceNotificationRecipientEmail foobar@live.com /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/workspaces/{workspaceId}/notifications/{notificationName}/recipientEmails/{email}
/// ```
class WorkspaceNotificationRecipientEmail extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// User Email subscribed to notification.
  late final pulumi.Output<String?> email;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [WorkspaceNotificationRecipientEmail].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkspaceNotificationRecipientEmail]. {@macro pulumi_apimanagement_workspace_notification_recipient_email_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkspaceNotificationRecipientEmail(
    String name, {
    WorkspaceNotificationRecipientEmailArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:apimanagement:WorkspaceNotificationRecipientEmail',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.email = registerOutput<String?>('email');
    this.name = registerOutput<String>('name');
    this.type = registerOutput<String>('type');
  }
}
