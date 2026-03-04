import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_group_user_args.dart';

/// User details.
///
/// Uses Azure REST API version 2022-09-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-09-01-preview.
///
/// Other available API versions: 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-05-01, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApiManagementCreateWorkspaceGroupUser
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workspaceGroupUser = new AzureNative.ApiManagement.WorkspaceGroupUser("workspaceGroupUser", new()
///     {
///         GroupId = "tempgroup",
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
///         UserId = "59307d350af58404d8a26300",
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
/// 		_, err := apimanagement.NewWorkspaceGroupUser(ctx, "workspaceGroupUser", &apimanagement.WorkspaceGroupUserArgs{
/// 			GroupId:           pulumi.String("tempgroup"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ServiceName:       pulumi.String("apimService1"),
/// 			UserId:            pulumi.String("59307d350af58404d8a26300"),
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
/// import com.pulumi.azurenative.apimanagement.WorkspaceGroupUser;
/// import com.pulumi.azurenative.apimanagement.WorkspaceGroupUserArgs;
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
///         var workspaceGroupUser = new WorkspaceGroupUser("workspaceGroupUser", WorkspaceGroupUserArgs.builder()
///             .groupId("tempgroup")
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
///             .userId("59307d350af58404d8a26300")
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
/// const workspaceGroupUser = new azure_native.apimanagement.WorkspaceGroupUser("workspaceGroupUser", {
///     groupId: "tempgroup",
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
///     userId: "59307d350af58404d8a26300",
///     workspaceId: "wks1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// workspace_group_user = azure_native.apimanagement.WorkspaceGroupUser("workspaceGroupUser",
///     group_id="tempgroup",
///     resource_group_name="rg1",
///     service_name="apimService1",
///     user_id="59307d350af58404d8a26300",
///     workspace_id="wks1")
///
/// ```
///
/// ```yaml
/// resources:
///   workspaceGroupUser:
///     type: azure-native:apimanagement:WorkspaceGroupUser
///     properties:
///       groupId: tempgroup
///       resourceGroupName: rg1
///       serviceName: apimService1
///       userId: 59307d350af58404d8a26300
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
/// $ pulumi import azure-native:apimanagement:WorkspaceGroupUser 59307d350af58404d8a26300 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/workspaces/{workspaceId}/groups/{groupId}/users/{userId}
/// ```
class WorkspaceGroupUser extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Email address.
  late final pulumi.Output<String?> email;

  /// First name.
  late final pulumi.Output<String?> firstName;

  /// Collection of groups user is part of.
  late final pulumi.Output<List<Map<String, dynamic>>> groups;

  /// Collection of user identities.
  late final pulumi.Output<List<Map<String, dynamic>>?> identities;

  /// Last name.
  late final pulumi.Output<String?> lastName;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Optional note about a user set by the administrator.
  late final pulumi.Output<String?> note;

  /// Date of user registration. The date conforms to the following format: `yyyy-MM-ddTHH:mm:ssZ` as specified by the ISO 8601 standard.
  late final pulumi.Output<String?> registrationDate;

  /// Account state. Specifies whether the user is active or not. Blocked users are unable to sign into the developer portal or call any APIs of subscribed products. Default state is Active.
  late final pulumi.Output<String?> state;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [WorkspaceGroupUser].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkspaceGroupUser]. {@macro pulumi_apimanagement_workspace_group_user_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkspaceGroupUser(
    String name, {
    WorkspaceGroupUserArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:apimanagement:WorkspaceGroupUser',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    email = registerOutput<String?>('email');
    firstName = registerOutput<String?>('firstName');
    groups = registerOutput<List<Map<String, dynamic>>>('groups');
    identities = registerOutput<List<Map<String, dynamic>>?>('identities');
    lastName = registerOutput<String?>('lastName');
    this.name = registerOutput<String>('name');
    note = registerOutput<String?>('note');
    registrationDate = registerOutput<String?>('registrationDate');
    state = registerOutput<String?>('state');
    type = registerOutput<String>('type');
  }
}
