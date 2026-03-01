import 'package:pulumi/pulumi.dart' as pulumi;
import 'role_assignment_args.dart';

/// Role Assignments
///
/// Uses Azure REST API version 2022-04-01. In version 2.x of the Azure Native provider, it used API version 2022-04-01.
///
/// Other available API versions: 2020-08-01-preview, 2020-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native authorization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create role assignment for resource
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var roleAssignment = new AzureNative.Authorization.RoleAssignment("roleAssignment", new()
///     {
///         PrincipalId = "ce2ce14e-85d7-4629-bdbc-454d0519d987",
///         PrincipalType = AzureNative.Authorization.PrincipalType.User,
///         RoleAssignmentName = "05c5a614-a7d6-4502-b150-c2fb455033ff",
///         RoleDefinitionId = "/subscriptions/a925f2f7-5c63-4b7b-8799-25a5f97bc3b2/providers/Microsoft.Authorization/roleDefinitions/0b5fe924-9a61-425c-96af-cfe6e287ca2d",
///         Scope = "subscriptions/a925f2f7-5c63-4b7b-8799-25a5f97bc3b2/resourceGroups/testrg/providers/Microsoft.DocumentDb/databaseAccounts/test-db-account",
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
/// 		_, err := authorization.NewRoleAssignment(ctx, "roleAssignment", &authorization.RoleAssignmentArgs{
/// 			PrincipalId:        pulumi.String("ce2ce14e-85d7-4629-bdbc-454d0519d987"),
/// 			PrincipalType:      pulumi.String(authorization.PrincipalTypeUser),
/// 			RoleAssignmentName: pulumi.String("05c5a614-a7d6-4502-b150-c2fb455033ff"),
/// 			RoleDefinitionId:   pulumi.String("/subscriptions/a925f2f7-5c63-4b7b-8799-25a5f97bc3b2/providers/Microsoft.Authorization/roleDefinitions/0b5fe924-9a61-425c-96af-cfe6e287ca2d"),
/// 			Scope:              pulumi.String("subscriptions/a925f2f7-5c63-4b7b-8799-25a5f97bc3b2/resourceGroups/testrg/providers/Microsoft.DocumentDb/databaseAccounts/test-db-account"),
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
/// import com.pulumi.azurenative.authorization.RoleAssignment;
/// import com.pulumi.azurenative.authorization.RoleAssignmentArgs;
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
///         var roleAssignment = new RoleAssignment("roleAssignment", RoleAssignmentArgs.builder()
///             .principalId("ce2ce14e-85d7-4629-bdbc-454d0519d987")
///             .principalType("User")
///             .roleAssignmentName("05c5a614-a7d6-4502-b150-c2fb455033ff")
///             .roleDefinitionId("/subscriptions/a925f2f7-5c63-4b7b-8799-25a5f97bc3b2/providers/Microsoft.Authorization/roleDefinitions/0b5fe924-9a61-425c-96af-cfe6e287ca2d")
///             .scope("subscriptions/a925f2f7-5c63-4b7b-8799-25a5f97bc3b2/resourceGroups/testrg/providers/Microsoft.DocumentDb/databaseAccounts/test-db-account")
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
/// const roleAssignment = new azure_native.authorization.RoleAssignment("roleAssignment", {
///     principalId: "ce2ce14e-85d7-4629-bdbc-454d0519d987",
///     principalType: azure_native.authorization.PrincipalType.User,
///     roleAssignmentName: "05c5a614-a7d6-4502-b150-c2fb455033ff",
///     roleDefinitionId: "/subscriptions/a925f2f7-5c63-4b7b-8799-25a5f97bc3b2/providers/Microsoft.Authorization/roleDefinitions/0b5fe924-9a61-425c-96af-cfe6e287ca2d",
///     scope: "subscriptions/a925f2f7-5c63-4b7b-8799-25a5f97bc3b2/resourceGroups/testrg/providers/Microsoft.DocumentDb/databaseAccounts/test-db-account",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// role_assignment = azure_native.authorization.RoleAssignment("roleAssignment",
///     principal_id="ce2ce14e-85d7-4629-bdbc-454d0519d987",
///     principal_type=azure_native.authorization.PrincipalType.USER,
///     role_assignment_name="05c5a614-a7d6-4502-b150-c2fb455033ff",
///     role_definition_id="/subscriptions/a925f2f7-5c63-4b7b-8799-25a5f97bc3b2/providers/Microsoft.Authorization/roleDefinitions/0b5fe924-9a61-425c-96af-cfe6e287ca2d",
///     scope="subscriptions/a925f2f7-5c63-4b7b-8799-25a5f97bc3b2/resourceGroups/testrg/providers/Microsoft.DocumentDb/databaseAccounts/test-db-account")
///
/// ```
///
/// ```yaml
/// resources:
///   roleAssignment:
///     type: azure-native:authorization:RoleAssignment
///     properties:
///       principalId: ce2ce14e-85d7-4629-bdbc-454d0519d987
///       principalType: User
///       roleAssignmentName: 05c5a614-a7d6-4502-b150-c2fb455033ff
///       roleDefinitionId: /subscriptions/a925f2f7-5c63-4b7b-8799-25a5f97bc3b2/providers/Microsoft.Authorization/roleDefinitions/0b5fe924-9a61-425c-96af-cfe6e287ca2d
///       scope: subscriptions/a925f2f7-5c63-4b7b-8799-25a5f97bc3b2/resourceGroups/testrg/providers/Microsoft.DocumentDb/databaseAccounts/test-db-account
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create role assignment for resource group
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var roleAssignment = new AzureNative.Authorization.RoleAssignment("roleAssignment", new()
///     {
///         PrincipalId = "ce2ce14e-85d7-4629-bdbc-454d0519d987",
///         PrincipalType = AzureNative.Authorization.PrincipalType.User,
///         RoleAssignmentName = "05c5a614-a7d6-4502-b150-c2fb455033ff",
///         RoleDefinitionId = "/subscriptions/a925f2f7-5c63-4b7b-8799-25a5f97bc3b2/providers/Microsoft.Authorization/roleDefinitions/0b5fe924-9a61-425c-96af-cfe6e287ca2d",
///         Scope = "subscriptions/a925f2f7-5c63-4b7b-8799-25a5f97bc3b2/resourceGroups/testrg",
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
/// 		_, err := authorization.NewRoleAssignment(ctx, "roleAssignment", &authorization.RoleAssignmentArgs{
/// 			PrincipalId:        pulumi.String("ce2ce14e-85d7-4629-bdbc-454d0519d987"),
/// 			PrincipalType:      pulumi.String(authorization.PrincipalTypeUser),
/// 			RoleAssignmentName: pulumi.String("05c5a614-a7d6-4502-b150-c2fb455033ff"),
/// 			RoleDefinitionId:   pulumi.String("/subscriptions/a925f2f7-5c63-4b7b-8799-25a5f97bc3b2/providers/Microsoft.Authorization/roleDefinitions/0b5fe924-9a61-425c-96af-cfe6e287ca2d"),
/// 			Scope:              pulumi.String("subscriptions/a925f2f7-5c63-4b7b-8799-25a5f97bc3b2/resourceGroups/testrg"),
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
/// import com.pulumi.azurenative.authorization.RoleAssignment;
/// import com.pulumi.azurenative.authorization.RoleAssignmentArgs;
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
///         var roleAssignment = new RoleAssignment("roleAssignment", RoleAssignmentArgs.builder()
///             .principalId("ce2ce14e-85d7-4629-bdbc-454d0519d987")
///             .principalType("User")
///             .roleAssignmentName("05c5a614-a7d6-4502-b150-c2fb455033ff")
///             .roleDefinitionId("/subscriptions/a925f2f7-5c63-4b7b-8799-25a5f97bc3b2/providers/Microsoft.Authorization/roleDefinitions/0b5fe924-9a61-425c-96af-cfe6e287ca2d")
///             .scope("subscriptions/a925f2f7-5c63-4b7b-8799-25a5f97bc3b2/resourceGroups/testrg")
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
/// const roleAssignment = new azure_native.authorization.RoleAssignment("roleAssignment", {
///     principalId: "ce2ce14e-85d7-4629-bdbc-454d0519d987",
///     principalType: azure_native.authorization.PrincipalType.User,
///     roleAssignmentName: "05c5a614-a7d6-4502-b150-c2fb455033ff",
///     roleDefinitionId: "/subscriptions/a925f2f7-5c63-4b7b-8799-25a5f97bc3b2/providers/Microsoft.Authorization/roleDefinitions/0b5fe924-9a61-425c-96af-cfe6e287ca2d",
///     scope: "subscriptions/a925f2f7-5c63-4b7b-8799-25a5f97bc3b2/resourceGroups/testrg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// role_assignment = azure_native.authorization.RoleAssignment("roleAssignment",
///     principal_id="ce2ce14e-85d7-4629-bdbc-454d0519d987",
///     principal_type=azure_native.authorization.PrincipalType.USER,
///     role_assignment_name="05c5a614-a7d6-4502-b150-c2fb455033ff",
///     role_definition_id="/subscriptions/a925f2f7-5c63-4b7b-8799-25a5f97bc3b2/providers/Microsoft.Authorization/roleDefinitions/0b5fe924-9a61-425c-96af-cfe6e287ca2d",
///     scope="subscriptions/a925f2f7-5c63-4b7b-8799-25a5f97bc3b2/resourceGroups/testrg")
///
/// ```
///
/// ```yaml
/// resources:
///   roleAssignment:
///     type: azure-native:authorization:RoleAssignment
///     properties:
///       principalId: ce2ce14e-85d7-4629-bdbc-454d0519d987
///       principalType: User
///       roleAssignmentName: 05c5a614-a7d6-4502-b150-c2fb455033ff
///       roleDefinitionId: /subscriptions/a925f2f7-5c63-4b7b-8799-25a5f97bc3b2/providers/Microsoft.Authorization/roleDefinitions/0b5fe924-9a61-425c-96af-cfe6e287ca2d
///       scope: subscriptions/a925f2f7-5c63-4b7b-8799-25a5f97bc3b2/resourceGroups/testrg
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create role assignment for subscription
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var roleAssignment = new AzureNative.Authorization.RoleAssignment("roleAssignment", new()
///     {
///         PrincipalId = "ce2ce14e-85d7-4629-bdbc-454d0519d987",
///         PrincipalType = AzureNative.Authorization.PrincipalType.User,
///         RoleAssignmentName = "05c5a614-a7d6-4502-b150-c2fb455033ff",
///         RoleDefinitionId = "/subscriptions/a925f2f7-5c63-4b7b-8799-25a5f97bc3b2/providers/Microsoft.Authorization/roleDefinitions/0b5fe924-9a61-425c-96af-cfe6e287ca2d",
///         Scope = "subscriptions/a925f2f7-5c63-4b7b-8799-25a5f97bc3b2",
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
/// 		_, err := authorization.NewRoleAssignment(ctx, "roleAssignment", &authorization.RoleAssignmentArgs{
/// 			PrincipalId:        pulumi.String("ce2ce14e-85d7-4629-bdbc-454d0519d987"),
/// 			PrincipalType:      pulumi.String(authorization.PrincipalTypeUser),
/// 			RoleAssignmentName: pulumi.String("05c5a614-a7d6-4502-b150-c2fb455033ff"),
/// 			RoleDefinitionId:   pulumi.String("/subscriptions/a925f2f7-5c63-4b7b-8799-25a5f97bc3b2/providers/Microsoft.Authorization/roleDefinitions/0b5fe924-9a61-425c-96af-cfe6e287ca2d"),
/// 			Scope:              pulumi.String("subscriptions/a925f2f7-5c63-4b7b-8799-25a5f97bc3b2"),
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
/// import com.pulumi.azurenative.authorization.RoleAssignment;
/// import com.pulumi.azurenative.authorization.RoleAssignmentArgs;
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
///         var roleAssignment = new RoleAssignment("roleAssignment", RoleAssignmentArgs.builder()
///             .principalId("ce2ce14e-85d7-4629-bdbc-454d0519d987")
///             .principalType("User")
///             .roleAssignmentName("05c5a614-a7d6-4502-b150-c2fb455033ff")
///             .roleDefinitionId("/subscriptions/a925f2f7-5c63-4b7b-8799-25a5f97bc3b2/providers/Microsoft.Authorization/roleDefinitions/0b5fe924-9a61-425c-96af-cfe6e287ca2d")
///             .scope("subscriptions/a925f2f7-5c63-4b7b-8799-25a5f97bc3b2")
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
/// const roleAssignment = new azure_native.authorization.RoleAssignment("roleAssignment", {
///     principalId: "ce2ce14e-85d7-4629-bdbc-454d0519d987",
///     principalType: azure_native.authorization.PrincipalType.User,
///     roleAssignmentName: "05c5a614-a7d6-4502-b150-c2fb455033ff",
///     roleDefinitionId: "/subscriptions/a925f2f7-5c63-4b7b-8799-25a5f97bc3b2/providers/Microsoft.Authorization/roleDefinitions/0b5fe924-9a61-425c-96af-cfe6e287ca2d",
///     scope: "subscriptions/a925f2f7-5c63-4b7b-8799-25a5f97bc3b2",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// role_assignment = azure_native.authorization.RoleAssignment("roleAssignment",
///     principal_id="ce2ce14e-85d7-4629-bdbc-454d0519d987",
///     principal_type=azure_native.authorization.PrincipalType.USER,
///     role_assignment_name="05c5a614-a7d6-4502-b150-c2fb455033ff",
///     role_definition_id="/subscriptions/a925f2f7-5c63-4b7b-8799-25a5f97bc3b2/providers/Microsoft.Authorization/roleDefinitions/0b5fe924-9a61-425c-96af-cfe6e287ca2d",
///     scope="subscriptions/a925f2f7-5c63-4b7b-8799-25a5f97bc3b2")
///
/// ```
///
/// ```yaml
/// resources:
///   roleAssignment:
///     type: azure-native:authorization:RoleAssignment
///     properties:
///       principalId: ce2ce14e-85d7-4629-bdbc-454d0519d987
///       principalType: User
///       roleAssignmentName: 05c5a614-a7d6-4502-b150-c2fb455033ff
///       roleDefinitionId: /subscriptions/a925f2f7-5c63-4b7b-8799-25a5f97bc3b2/providers/Microsoft.Authorization/roleDefinitions/0b5fe924-9a61-425c-96af-cfe6e287ca2d
///       scope: subscriptions/a925f2f7-5c63-4b7b-8799-25a5f97bc3b2
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
/// $ pulumi import azure-native:authorization:RoleAssignment 05c5a614-a7d6-4502-b150-c2fb455033ff /{scope}/providers/Microsoft.Authorization/roleAssignments/{roleAssignmentName}
/// ```
class RoleAssignment extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The conditions on the role assignment. This limits the resources it can be assigned to. e.g.: @Resource[Microsoft.Storage/storageAccounts/blobServices/containers:ContainerName] StringEqualsIgnoreCase 'foo_storage_container'
  late final pulumi.Output<String?> condition;
  /// Version of the condition. Currently the only accepted value is '2.0'
  late final pulumi.Output<String?> conditionVersion;
  /// Id of the user who created the assignment
  late final pulumi.Output<String> createdBy;
  /// Time it was created
  late final pulumi.Output<String> createdOn;
  /// Id of the delegated managed identity resource
  late final pulumi.Output<String?> delegatedManagedIdentityResourceId;
  /// Description of role assignment
  late final pulumi.Output<String?> description;
  /// The role assignment name.
  late final pulumi.Output<String> name;
  /// The principal ID.
  late final pulumi.Output<String> principalId;
  /// The principal type of the assigned principal ID.
  late final pulumi.Output<String?> principalType;
  /// The role definition ID.
  late final pulumi.Output<String> roleDefinitionId;
  /// The role assignment scope.
  late final pulumi.Output<String> scope;
  /// The role assignment type.
  late final pulumi.Output<String> type;
  /// Id of the user who updated the assignment
  late final pulumi.Output<String> updatedBy;
  /// Time it was updated
  late final pulumi.Output<String> updatedOn;

  /// Creates a new [RoleAssignment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RoleAssignment]. {@macro pulumi_authorization_role_assignment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RoleAssignment(
    String name, {
    RoleAssignmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:authorization:RoleAssignment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.condition = registerOutput<String?>('condition');
    this.conditionVersion = registerOutput<String?>('conditionVersion');
    this.createdBy = registerOutput<String>('createdBy');
    this.createdOn = registerOutput<String>('createdOn');
    this.delegatedManagedIdentityResourceId = registerOutput<String?>('delegatedManagedIdentityResourceId');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.principalId = registerOutput<String>('principalId');
    this.principalType = registerOutput<String?>('principalType');
    this.roleDefinitionId = registerOutput<String>('roleDefinitionId');
    this.scope = registerOutput<String>('scope');
    this.type = registerOutput<String>('type');
    this.updatedBy = registerOutput<String>('updatedBy');
    this.updatedOn = registerOutput<String>('updatedOn');
  }
}
