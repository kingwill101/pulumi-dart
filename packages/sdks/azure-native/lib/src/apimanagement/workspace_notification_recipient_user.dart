import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_notification_recipient_user_args.dart';

/// Recipient User details.
///
/// Uses Azure REST API version 2022-09-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-09-01-preview.
///
/// Other available API versions: 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-05-01, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApiManagementCreateWorkspaceNotificationRecipientUser
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workspaceNotificationRecipientUser = new AzureNative.ApiManagement.WorkspaceNotificationRecipientUser("workspaceNotificationRecipientUser", new()
///     {
///         NotificationName = "RequestPublisherNotificationMessage",
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
///         UserId = "576823d0a40f7e74ec07d642",
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
/// 		_, err := apimanagement.NewWorkspaceNotificationRecipientUser(ctx, "workspaceNotificationRecipientUser", &apimanagement.WorkspaceNotificationRecipientUserArgs{
/// 			NotificationName:  pulumi.String("RequestPublisherNotificationMessage"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ServiceName:       pulumi.String("apimService1"),
/// 			UserId:            pulumi.String("576823d0a40f7e74ec07d642"),
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
/// import com.pulumi.azurenative.apimanagement.WorkspaceNotificationRecipientUser;
/// import com.pulumi.azurenative.apimanagement.WorkspaceNotificationRecipientUserArgs;
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
///         var workspaceNotificationRecipientUser = new WorkspaceNotificationRecipientUser("workspaceNotificationRecipientUser", WorkspaceNotificationRecipientUserArgs.builder()
///             .notificationName("RequestPublisherNotificationMessage")
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
///             .userId("576823d0a40f7e74ec07d642")
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
/// const workspaceNotificationRecipientUser = new azure_native.apimanagement.WorkspaceNotificationRecipientUser("workspaceNotificationRecipientUser", {
///     notificationName: "RequestPublisherNotificationMessage",
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
///     userId: "576823d0a40f7e74ec07d642",
///     workspaceId: "wks1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// workspace_notification_recipient_user = azure_native.apimanagement.WorkspaceNotificationRecipientUser("workspaceNotificationRecipientUser",
///     notification_name="RequestPublisherNotificationMessage",
///     resource_group_name="rg1",
///     service_name="apimService1",
///     user_id="576823d0a40f7e74ec07d642",
///     workspace_id="wks1")
///
/// ```
///
/// ```yaml
/// resources:
///   workspaceNotificationRecipientUser:
///     type: azure-native:apimanagement:WorkspaceNotificationRecipientUser
///     properties:
///       notificationName: RequestPublisherNotificationMessage
///       resourceGroupName: rg1
///       serviceName: apimService1
///       userId: 576823d0a40f7e74ec07d642
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
/// $ pulumi import azure-native:apimanagement:WorkspaceNotificationRecipientUser 576823d0a40f7e74ec07d642 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/workspaces/{workspaceId}/notifications/{notificationName}/recipientUsers/{userId}
/// ```
class WorkspaceNotificationRecipientUser extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// API Management UserId subscribed to notification.
  late final pulumi.Output<String?> userId;

  /// Creates a new [WorkspaceNotificationRecipientUser].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkspaceNotificationRecipientUser]. {@macro pulumi_apimanagement_workspace_notification_recipient_user_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkspaceNotificationRecipientUser(
    String name, {
    WorkspaceNotificationRecipientUserArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:apimanagement:WorkspaceNotificationRecipientUser',
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
