import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_user_args.dart';

/// User details.
///
/// Uses Azure REST API version 2022-09-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-08-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-05-01, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApiManagementCreateGroupUser
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var groupUser = new AzureNative.ApiManagement.GroupUser("groupUser", new()
///     {
///         GroupId = "tempgroup",
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
///         UserId = "59307d350af58404d8a26300",
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
/// 		_, err := apimanagement.NewGroupUser(ctx, "groupUser", &apimanagement.GroupUserArgs{
/// 			GroupId:           pulumi.String("tempgroup"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ServiceName:       pulumi.String("apimService1"),
/// 			UserId:            pulumi.String("59307d350af58404d8a26300"),
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
/// import com.pulumi.azurenative.apimanagement.GroupUser;
/// import com.pulumi.azurenative.apimanagement.GroupUserArgs;
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
///         var groupUser = new GroupUser("groupUser", GroupUserArgs.builder()
///             .groupId("tempgroup")
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
///             .userId("59307d350af58404d8a26300")
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
/// const groupUser = new azure_native.apimanagement.GroupUser("groupUser", {
///     groupId: "tempgroup",
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
///     userId: "59307d350af58404d8a26300",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// group_user = azure_native.apimanagement.GroupUser("groupUser",
///     group_id="tempgroup",
///     resource_group_name="rg1",
///     service_name="apimService1",
///     user_id="59307d350af58404d8a26300")
///
/// ```
///
/// ```yaml
/// resources:
///   groupUser:
///     type: azure-native:apimanagement:GroupUser
///     properties:
///       groupId: tempgroup
///       resourceGroupName: rg1
///       serviceName: apimService1
///       userId: 59307d350af58404d8a26300
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
/// $ pulumi import azure-native:apimanagement:GroupUser 59307d350af58404d8a26300 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/groups/{groupId}/users/{userId}
/// ```
class GroupUser extends pulumi.CustomResource {
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

  /// Creates a new [GroupUser].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GroupUser]. {@macro pulumi_apimanagement_group_user_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GroupUser(
    String name, {
    GroupUserArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:apimanagement:GroupUser',
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
