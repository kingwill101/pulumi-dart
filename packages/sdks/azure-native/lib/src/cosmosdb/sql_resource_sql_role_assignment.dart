import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_resource_sql_role_assignment_args.dart';

/// An Azure Cosmos DB Role Assignment
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2020-06-01-preview, 2021-03-01-preview, 2021-04-01-preview, 2021-04-15, 2021-05-15, 2021-06-15, 2021-07-01-preview, 2021-10-15, 2021-10-15-preview, 2021-11-15-preview, 2022-02-15-preview, 2022-05-15, 2022-05-15-preview, 2022-08-15, 2022-08-15-preview, 2022-11-15, 2022-11-15-preview, 2023-03-01-preview, 2023-03-15, 2023-03-15-preview, 2023-04-15, 2023-09-15, 2023-09-15-preview, 2023-11-15, 2023-11-15-preview, 2024-02-15-preview, 2024-05-15, 2024-05-15-preview, 2024-08-15, 2024-09-01-preview, 2024-11-15, 2024-12-01-preview, 2025-04-15, 2025-05-01-preview, 2025-11-01-preview, 2026-03-15, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CosmosDBSqlRoleAssignmentCreateUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sqlResourceSqlRoleAssignment = new AzureNative.CosmosDB.SqlResourceSqlRoleAssignment("sqlResourceSqlRoleAssignment", new()
///     {
///         AccountName = "myAccountName",
///         PrincipalId = "myPrincipalId",
///         ResourceGroupName = "myResourceGroupName",
///         RoleAssignmentId = "myRoleAssignmentId",
///         RoleDefinitionId = "/subscriptions/mySubscriptionId/resourceGroups/myResourceGroupName/providers/Microsoft.DocumentDB/databaseAccounts/myAccountName/sqlRoleDefinitions/myRoleDefinitionId",
///         Scope = "/subscriptions/mySubscriptionId/resourceGroups/myResourceGroupName/providers/Microsoft.DocumentDB/databaseAccounts/myAccountName/dbs/purchases/colls/redmond-purchases",
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
/// 		_, err := cosmosdb.NewSqlResourceSqlRoleAssignment(ctx, "sqlResourceSqlRoleAssignment", &cosmosdb.SqlResourceSqlRoleAssignmentArgs{
/// 			AccountName:       pulumi.String("myAccountName"),
/// 			PrincipalId:       pulumi.String("myPrincipalId"),
/// 			ResourceGroupName: pulumi.String("myResourceGroupName"),
/// 			RoleAssignmentId:  pulumi.String("myRoleAssignmentId"),
/// 			RoleDefinitionId:  pulumi.String("/subscriptions/mySubscriptionId/resourceGroups/myResourceGroupName/providers/Microsoft.DocumentDB/databaseAccounts/myAccountName/sqlRoleDefinitions/myRoleDefinitionId"),
/// 			Scope:             pulumi.String("/subscriptions/mySubscriptionId/resourceGroups/myResourceGroupName/providers/Microsoft.DocumentDB/databaseAccounts/myAccountName/dbs/purchases/colls/redmond-purchases"),
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
/// resource "azure-native_cosmosdb_sqlresourcesqlroleassignment" "sqlResourceSqlRoleAssignment" {
///   account_name        = "myAccountName"
///   principal_id        = "myPrincipalId"
///   resource_group_name = "myResourceGroupName"
///   role_assignment_id  = "myRoleAssignmentId"
///   role_definition_id  = "/subscriptions/mySubscriptionId/resourceGroups/myResourceGroupName/providers/Microsoft.DocumentDB/databaseAccounts/myAccountName/sqlRoleDefinitions/myRoleDefinitionId"
///   scope               = "/subscriptions/mySubscriptionId/resourceGroups/myResourceGroupName/providers/Microsoft.DocumentDB/databaseAccounts/myAccountName/dbs/purchases/colls/redmond-purchases"
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
/// import com.pulumi.azurenative.cosmosdb.SqlResourceSqlRoleAssignment;
/// import com.pulumi.azurenative.cosmosdb.SqlResourceSqlRoleAssignmentArgs;
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
///         var sqlResourceSqlRoleAssignment = new SqlResourceSqlRoleAssignment("sqlResourceSqlRoleAssignment", SqlResourceSqlRoleAssignmentArgs.builder()
///             .accountName("myAccountName")
///             .principalId("myPrincipalId")
///             .resourceGroupName("myResourceGroupName")
///             .roleAssignmentId("myRoleAssignmentId")
///             .roleDefinitionId("/subscriptions/mySubscriptionId/resourceGroups/myResourceGroupName/providers/Microsoft.DocumentDB/databaseAccounts/myAccountName/sqlRoleDefinitions/myRoleDefinitionId")
///             .scope("/subscriptions/mySubscriptionId/resourceGroups/myResourceGroupName/providers/Microsoft.DocumentDB/databaseAccounts/myAccountName/dbs/purchases/colls/redmond-purchases")
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
/// const sqlResourceSqlRoleAssignment = new azure_native.cosmosdb.SqlResourceSqlRoleAssignment("sqlResourceSqlRoleAssignment", {
///     accountName: "myAccountName",
///     principalId: "myPrincipalId",
///     resourceGroupName: "myResourceGroupName",
///     roleAssignmentId: "myRoleAssignmentId",
///     roleDefinitionId: "/subscriptions/mySubscriptionId/resourceGroups/myResourceGroupName/providers/Microsoft.DocumentDB/databaseAccounts/myAccountName/sqlRoleDefinitions/myRoleDefinitionId",
///     scope: "/subscriptions/mySubscriptionId/resourceGroups/myResourceGroupName/providers/Microsoft.DocumentDB/databaseAccounts/myAccountName/dbs/purchases/colls/redmond-purchases",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sql_resource_sql_role_assignment = azure_native.cosmosdb.SqlResourceSqlRoleAssignment("sqlResourceSqlRoleAssignment",
///     account_name="myAccountName",
///     principal_id="myPrincipalId",
///     resource_group_name="myResourceGroupName",
///     role_assignment_id="myRoleAssignmentId",
///     role_definition_id="/subscriptions/mySubscriptionId/resourceGroups/myResourceGroupName/providers/Microsoft.DocumentDB/databaseAccounts/myAccountName/sqlRoleDefinitions/myRoleDefinitionId",
///     scope="/subscriptions/mySubscriptionId/resourceGroups/myResourceGroupName/providers/Microsoft.DocumentDB/databaseAccounts/myAccountName/dbs/purchases/colls/redmond-purchases")
///
/// ```
///
/// ```yaml
/// resources:
///   sqlResourceSqlRoleAssignment:
///     type: azure-native:cosmosdb:SqlResourceSqlRoleAssignment
///     properties:
///       accountName: myAccountName
///       principalId: myPrincipalId
///       resourceGroupName: myResourceGroupName
///       roleAssignmentId: myRoleAssignmentId
///       roleDefinitionId: /subscriptions/mySubscriptionId/resourceGroups/myResourceGroupName/providers/Microsoft.DocumentDB/databaseAccounts/myAccountName/sqlRoleDefinitions/myRoleDefinitionId
///       scope: /subscriptions/mySubscriptionId/resourceGroups/myResourceGroupName/providers/Microsoft.DocumentDB/databaseAccounts/myAccountName/dbs/purchases/colls/redmond-purchases
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
/// $ pulumi import azure-native:cosmosdb:SqlResourceSqlRoleAssignment myRoleAssignmentId /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DocumentDB/databaseAccounts/{accountName}/sqlRoleAssignments/{roleAssignmentId}
/// ```
class SqlResourceSqlRoleAssignment extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the database account.
  late final pulumi.Output<String> name;
  /// The unique identifier for the associated AAD principal in the AAD graph to which access is being granted through this Role Assignment. Tenant ID for the principal is inferred using the tenant associated with the subscription.
  late final pulumi.Output<String?> principalId;
  /// The unique identifier for the associated Role Definition.
  late final pulumi.Output<String?> roleDefinitionId;
  /// The data plane resource path for which access is being granted through this Role Assignment.
  late final pulumi.Output<String?> scope;
  /// The type of Azure resource.
  late final pulumi.Output<String> type;

  /// Creates a new [SqlResourceSqlRoleAssignment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SqlResourceSqlRoleAssignment]. {@macro pulumi_cosmosdb_sql_resource_sql_role_assignment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SqlResourceSqlRoleAssignment(
    String name, {
    SqlResourceSqlRoleAssignmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:cosmosdb:SqlResourceSqlRoleAssignment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    principalId = registerOutput<String?>('principalId');
    roleDefinitionId = registerOutput<String?>('roleDefinitionId');
    scope = registerOutput<String?>('scope');
    type = registerOutput<String>('type');
  }
}
