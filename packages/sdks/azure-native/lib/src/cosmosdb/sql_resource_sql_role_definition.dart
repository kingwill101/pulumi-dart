import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_resource_sql_role_definition_args.dart';

/// An Azure Cosmos DB SQL Role Definition.
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2020-06-01-preview, 2021-03-01-preview, 2021-04-01-preview, 2021-04-15, 2021-05-15, 2021-06-15, 2021-07-01-preview, 2021-10-15, 2021-10-15-preview, 2021-11-15-preview, 2022-02-15-preview, 2022-05-15, 2022-05-15-preview, 2022-08-15, 2022-08-15-preview, 2022-11-15, 2022-11-15-preview, 2023-03-01-preview, 2023-03-15, 2023-03-15-preview, 2023-04-15, 2023-09-15, 2023-09-15-preview, 2023-11-15, 2023-11-15-preview, 2024-02-15-preview, 2024-05-15, 2024-05-15-preview, 2024-08-15, 2024-09-01-preview, 2024-11-15, 2024-12-01-preview, 2025-04-15, 2025-05-01-preview, 2025-11-01-preview, 2026-03-15, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CosmosDBSqlRoleDefinitionCreateUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sqlResourceSqlRoleDefinition = new AzureNative.CosmosDB.SqlResourceSqlRoleDefinition("sqlResourceSqlRoleDefinition", new()
///     {
///         AccountName = "myAccountName",
///         AssignableScopes = new[]
///         {
///             "/subscriptions/mySubscriptionId/resourceGroups/myResourceGroupName/providers/Microsoft.DocumentDB/databaseAccounts/myAccountName/dbs/sales",
///             "/subscriptions/mySubscriptionId/resourceGroups/myResourceGroupName/providers/Microsoft.DocumentDB/databaseAccounts/myAccountName/dbs/purchases",
///         },
///         Permissions = new[]
///         {
///             new AzureNative.CosmosDB.Inputs.PermissionArgs
///             {
///                 DataActions = new[]
///                 {
///                     "Microsoft.DocumentDB/databaseAccounts/sqlDatabases/containers/items/create",
///                     "Microsoft.DocumentDB/databaseAccounts/sqlDatabases/containers/items/read",
///                 },
///                 NotDataActions = new() { },
///             },
///         },
///         ResourceGroupName = "myResourceGroupName",
///         RoleDefinitionId = "myRoleDefinitionId",
///         RoleName = "myRoleName",
///         Type = AzureNative.CosmosDB.RoleDefinitionType.CustomRole,
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
/// 	cosmosdb "github.com/pulumi/pulumi-azure-native-sdk/cosmosdb/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cosmosdb.NewSqlResourceSqlRoleDefinition(ctx, "sqlResourceSqlRoleDefinition", &cosmosdb.SqlResourceSqlRoleDefinitionArgs{
/// 			AccountName: pulumi.String("myAccountName"),
/// 			AssignableScopes: pulumi.StringArray{
/// 				pulumi.String("/subscriptions/mySubscriptionId/resourceGroups/myResourceGroupName/providers/Microsoft.DocumentDB/databaseAccounts/myAccountName/dbs/sales"),
/// 				pulumi.String("/subscriptions/mySubscriptionId/resourceGroups/myResourceGroupName/providers/Microsoft.DocumentDB/databaseAccounts/myAccountName/dbs/purchases"),
/// 			},
/// 			Permissions: cosmosdb.PermissionArray{
/// 				&cosmosdb.PermissionArgs{
/// 					DataActions: pulumi.StringArray{
/// 						pulumi.String("Microsoft.DocumentDB/databaseAccounts/sqlDatabases/containers/items/create"),
/// 						pulumi.String("Microsoft.DocumentDB/databaseAccounts/sqlDatabases/containers/items/read"),
/// 					},
/// 					NotDataActions: pulumi.StringArray{},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroupName"),
/// 			RoleDefinitionId:  pulumi.String("myRoleDefinitionId"),
/// 			RoleName:          pulumi.String("myRoleName"),
/// 			Type:              cosmosdb.RoleDefinitionTypeCustomRole,
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_cosmosdb_sqlresourcesqlroledefinition" "sqlResourceSqlRoleDefinition" {
///   account_name      = "myAccountName"
///   assignable_scopes = ["/subscriptions/mySubscriptionId/resourceGroups/myResourceGroupName/providers/Microsoft.DocumentDB/databaseAccounts/myAccountName/dbs/sales", "/subscriptions/mySubscriptionId/resourceGroups/myResourceGroupName/providers/Microsoft.DocumentDB/databaseAccounts/myAccountName/dbs/purchases"]
///   permissions {
///     data_actions     = ["Microsoft.DocumentDB/databaseAccounts/sqlDatabases/containers/items/create", "Microsoft.DocumentDB/databaseAccounts/sqlDatabases/containers/items/read"]
///     not_data_actions = []
///   }
///   resource_group_name = "myResourceGroupName"
///   role_definition_id  = "myRoleDefinitionId"
///   role_name           = "myRoleName"
///   type                = "CustomRole"
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
/// import com.pulumi.azurenative.cosmosdb.SqlResourceSqlRoleDefinition;
/// import com.pulumi.azurenative.cosmosdb.SqlResourceSqlRoleDefinitionArgs;
/// import com.pulumi.azurenative.cosmosdb.inputs.PermissionArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var sqlResourceSqlRoleDefinition = new SqlResourceSqlRoleDefinition("sqlResourceSqlRoleDefinition", SqlResourceSqlRoleDefinitionArgs.builder()
///             .accountName("myAccountName")
///             .assignableScopes(
///                 "/subscriptions/mySubscriptionId/resourceGroups/myResourceGroupName/providers/Microsoft.DocumentDB/databaseAccounts/myAccountName/dbs/sales",
///                 "/subscriptions/mySubscriptionId/resourceGroups/myResourceGroupName/providers/Microsoft.DocumentDB/databaseAccounts/myAccountName/dbs/purchases")
///             .permissions(PermissionArgs.builder()
///                 .dataActions(
///                     "Microsoft.DocumentDB/databaseAccounts/sqlDatabases/containers/items/create",
///                     "Microsoft.DocumentDB/databaseAccounts/sqlDatabases/containers/items/read")
///                 .notDataActions()
///                 .build())
///             .resourceGroupName("myResourceGroupName")
///             .roleDefinitionId("myRoleDefinitionId")
///             .roleName("myRoleName")
///             .type("CustomRole")
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
/// const sqlResourceSqlRoleDefinition = new azure_native.cosmosdb.SqlResourceSqlRoleDefinition("sqlResourceSqlRoleDefinition", {
///     accountName: "myAccountName",
///     assignableScopes: [
///         "/subscriptions/mySubscriptionId/resourceGroups/myResourceGroupName/providers/Microsoft.DocumentDB/databaseAccounts/myAccountName/dbs/sales",
///         "/subscriptions/mySubscriptionId/resourceGroups/myResourceGroupName/providers/Microsoft.DocumentDB/databaseAccounts/myAccountName/dbs/purchases",
///     ],
///     permissions: [{
///         dataActions: [
///             "Microsoft.DocumentDB/databaseAccounts/sqlDatabases/containers/items/create",
///             "Microsoft.DocumentDB/databaseAccounts/sqlDatabases/containers/items/read",
///         ],
///         notDataActions: [],
///     }],
///     resourceGroupName: "myResourceGroupName",
///     roleDefinitionId: "myRoleDefinitionId",
///     roleName: "myRoleName",
///     type: azure_native.cosmosdb.RoleDefinitionType.CustomRole,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sql_resource_sql_role_definition = azure_native.cosmosdb.SqlResourceSqlRoleDefinition("sqlResourceSqlRoleDefinition",
///     account_name="myAccountName",
///     assignable_scopes=[
///         "/subscriptions/mySubscriptionId/resourceGroups/myResourceGroupName/providers/Microsoft.DocumentDB/databaseAccounts/myAccountName/dbs/sales",
///         "/subscriptions/mySubscriptionId/resourceGroups/myResourceGroupName/providers/Microsoft.DocumentDB/databaseAccounts/myAccountName/dbs/purchases",
///     ],
///     permissions=[{
///         "data_actions": [
///             "Microsoft.DocumentDB/databaseAccounts/sqlDatabases/containers/items/create",
///             "Microsoft.DocumentDB/databaseAccounts/sqlDatabases/containers/items/read",
///         ],
///         "not_data_actions": [],
///     }],
///     resource_group_name="myResourceGroupName",
///     role_definition_id="myRoleDefinitionId",
///     role_name="myRoleName",
///     type=azure_native.cosmosdb.RoleDefinitionType.CUSTOM_ROLE)
///
/// ```
///
/// ```yaml
/// resources:
///   sqlResourceSqlRoleDefinition:
///     type: azure-native:cosmosdb:SqlResourceSqlRoleDefinition
///     properties:
///       accountName: myAccountName
///       assignableScopes:
///         - /subscriptions/mySubscriptionId/resourceGroups/myResourceGroupName/providers/Microsoft.DocumentDB/databaseAccounts/myAccountName/dbs/sales
///         - /subscriptions/mySubscriptionId/resourceGroups/myResourceGroupName/providers/Microsoft.DocumentDB/databaseAccounts/myAccountName/dbs/purchases
///       permissions:
///         - dataActions:
///             - Microsoft.DocumentDB/databaseAccounts/sqlDatabases/containers/items/create
///             - Microsoft.DocumentDB/databaseAccounts/sqlDatabases/containers/items/read
///           notDataActions: []
///       resourceGroupName: myResourceGroupName
///       roleDefinitionId: myRoleDefinitionId
///       roleName: myRoleName
///       type: CustomRole
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
/// $ pulumi import azure-native:cosmosdb:SqlResourceSqlRoleDefinition myRoleDefinitionId /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DocumentDB/databaseAccounts/{accountName}/sqlRoleDefinitions/{roleDefinitionId}
/// ```
class SqlResourceSqlRoleDefinition extends pulumi.CustomResource {
  /// A set of fully qualified Scopes at or below which Role Assignments may be created using this Role Definition. This will allow application of this Role Definition on the entire database account or any underlying Database / Collection. Must have at least one element. Scopes higher than Database account are not enforceable as assignable Scopes. Note that resources referenced in assignable Scopes need not exist.
  late final pulumi.Output<List<String>?> assignableScopes;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the database account.
  late final pulumi.Output<String> name;
  /// The set of operations allowed through this Role Definition.
  late final pulumi.Output<List<Map<String, dynamic>>?> permissions;
  /// A user-friendly name for the Role Definition. Must be unique for the database account.
  late final pulumi.Output<String?> roleName;
  /// The type of Azure resource.
  late final pulumi.Output<String> type;

  /// Creates a new [SqlResourceSqlRoleDefinition].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SqlResourceSqlRoleDefinition]. {@macro pulumi_cosmosdb_sql_resource_sql_role_definition_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SqlResourceSqlRoleDefinition(
    String name, {
    SqlResourceSqlRoleDefinitionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:cosmosdb:SqlResourceSqlRoleDefinition',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    assignableScopes = registerOutput<List<String>?>('assignableScopes');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    permissions = registerOutput<List<Map<String, dynamic>>?>('permissions');
    roleName = registerOutput<String?>('roleName');
    type = registerOutput<String>('type');
  }
}
