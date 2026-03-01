import 'package:pulumi/pulumi.dart' as pulumi;
import 'permission_response.dart';
import 'role_definition_args.dart';

/// Role definition.
///
/// Uses Azure REST API version 2022-05-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-05-01-preview.
///
/// Other available API versions: 2022-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native authorization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create role definition
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var roleDefinition = new AzureNative.Authorization.RoleDefinition("roleDefinition", new()
///     {
///         RoleDefinitionId = "roleDefinitionId",
///         Scope = "scope",
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
/// 	authorization "github.com/pulumi/pulumi-azure-native-sdk/authorization/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := authorization.NewRoleDefinition(ctx, "roleDefinition", &authorization.RoleDefinitionArgs{
/// 			RoleDefinitionId: pulumi.String("roleDefinitionId"),
/// 			Scope:            pulumi.String("scope"),
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
/// import com.pulumi.azurenative.authorization.RoleDefinition;
/// import com.pulumi.azurenative.authorization.RoleDefinitionArgs;
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
///         var roleDefinition = new RoleDefinition("roleDefinition", RoleDefinitionArgs.builder()
///             .roleDefinitionId("roleDefinitionId")
///             .scope("scope")
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
/// const roleDefinition = new azure_native.authorization.RoleDefinition("roleDefinition", {
///     roleDefinitionId: "roleDefinitionId",
///     scope: "scope",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// role_definition = azure_native.authorization.RoleDefinition("roleDefinition",
///     role_definition_id="roleDefinitionId",
///     scope="scope")
///
/// ```
///
/// ```yaml
/// resources:
///   roleDefinition:
///     type: azure-native:authorization:RoleDefinition
///     properties:
///       roleDefinitionId: roleDefinitionId
///       scope: scope
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
/// $ pulumi import azure-native:authorization:RoleDefinition roleDefinitionId /{scope}/providers/Microsoft.Authorization/roleDefinitions/{roleDefinitionId}
/// ```
class RoleDefinition extends pulumi.CustomResource {
  /// Role definition assignable scopes.
  late final pulumi.Output<List<String>?> assignableScopes;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Id of the user who created the assignment
  late final pulumi.Output<String> createdBy;
  /// Time it was created
  late final pulumi.Output<String> createdOn;
  /// The role definition description.
  late final pulumi.Output<String?> description;
  /// The role definition name.
  late final pulumi.Output<String> name;
  /// Role definition permissions.
  late final pulumi.Output<List<PermissionResponse>?> permissions;
  /// The role name.
  late final pulumi.Output<String?> roleName;
  /// The role type.
  late final pulumi.Output<String?> roleType;
  /// The role definition type.
  late final pulumi.Output<String> type;
  /// Id of the user who updated the assignment
  late final pulumi.Output<String> updatedBy;
  /// Time it was updated
  late final pulumi.Output<String> updatedOn;

  /// Creates a new [RoleDefinition].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RoleDefinition]. {@macro pulumi_authorization_role_definition_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RoleDefinition(
    String name, {
    RoleDefinitionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:authorization:RoleDefinition',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.assignableScopes = registerOutput<List<String>?>('assignableScopes');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.createdBy = registerOutput<String>('createdBy');
    this.createdOn = registerOutput<String>('createdOn');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.permissions = registerOutput<List<PermissionResponse>?>('permissions');
    this.roleName = registerOutput<String?>('roleName');
    this.roleType = registerOutput<String?>('roleType');
    this.type = registerOutput<String>('type');
    this.updatedBy = registerOutput<String>('updatedBy');
    this.updatedOn = registerOutput<String>('updatedOn');
  }
}
