import 'package:pulumi/pulumi.dart' as pulumi;
import 'cassandra_resource_cassandra_role_definition_args.dart';
import 'system_data_response.dart';

/// Parameters to create and update an Azure Cosmos DB Cassandra Role Definition.
///
/// Uses Azure REST API version 2025-05-01-preview.
///
/// Other available API versions: 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CosmosDBCassandraRoleDefinitionCreateUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cassandraResourceCassandraRoleDefinition = new AzureNative.CosmosDB.CassandraResourceCassandraRoleDefinition("cassandraResourceCassandraRoleDefinition", new()
///     {
///         AccountName = "myAccountName",
///         AssignableScopes = new[]
///         {
///             "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/myResourceGroupName/providers/Microsoft.DocumentDB/databaseAccounts/myAccountName/dbs/sales",
///             "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/myResourceGroupName/providers/Microsoft.DocumentDB/databaseAccounts/myAccountName/dbs/purchases",
///         },
///         Permissions = new[]
///         {
///             new AzureNative.CosmosDB.Inputs.PermissionArgs
///             {
///                 DataActions = new[]
///                 {
///                     "Microsoft.DocumentDB/databaseAccounts/cassandraDatabases/containers/entities/create",
///                     "Microsoft.DocumentDB/databaseAccounts/cassandraDatabases/containers/entities/read",
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
/// 		_, err := cosmosdb.NewCassandraResourceCassandraRoleDefinition(ctx, "cassandraResourceCassandraRoleDefinition", &cosmosdb.CassandraResourceCassandraRoleDefinitionArgs{
/// 			AccountName: pulumi.String("myAccountName"),
/// 			AssignableScopes: pulumi.StringArray{
/// 				pulumi.String("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/myResourceGroupName/providers/Microsoft.DocumentDB/databaseAccounts/myAccountName/dbs/sales"),
/// 				pulumi.String("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/myResourceGroupName/providers/Microsoft.DocumentDB/databaseAccounts/myAccountName/dbs/purchases"),
/// 			},
/// 			Permissions: cosmosdb.PermissionArray{
/// 				&cosmosdb.PermissionArgs{
/// 					DataActions: pulumi.StringArray{
/// 						pulumi.String("Microsoft.DocumentDB/databaseAccounts/cassandraDatabases/containers/entities/create"),
/// 						pulumi.String("Microsoft.DocumentDB/databaseAccounts/cassandraDatabases/containers/entities/read"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.cosmosdb.CassandraResourceCassandraRoleDefinition;
/// import com.pulumi.azurenative.cosmosdb.CassandraResourceCassandraRoleDefinitionArgs;
/// import com.pulumi.azurenative.cosmosdb.inputs.PermissionArgs;
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
///         var cassandraResourceCassandraRoleDefinition = new CassandraResourceCassandraRoleDefinition("cassandraResourceCassandraRoleDefinition", CassandraResourceCassandraRoleDefinitionArgs.builder()
///             .accountName("myAccountName")
///             .assignableScopes(
///                 "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/myResourceGroupName/providers/Microsoft.DocumentDB/databaseAccounts/myAccountName/dbs/sales",
///                 "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/myResourceGroupName/providers/Microsoft.DocumentDB/databaseAccounts/myAccountName/dbs/purchases")
///             .permissions(PermissionArgs.builder()
///                 .dataActions(
///                     "Microsoft.DocumentDB/databaseAccounts/cassandraDatabases/containers/entities/create",
///                     "Microsoft.DocumentDB/databaseAccounts/cassandraDatabases/containers/entities/read")
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
/// const cassandraResourceCassandraRoleDefinition = new azure_native.cosmosdb.CassandraResourceCassandraRoleDefinition("cassandraResourceCassandraRoleDefinition", {
///     accountName: "myAccountName",
///     assignableScopes: [
///         "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/myResourceGroupName/providers/Microsoft.DocumentDB/databaseAccounts/myAccountName/dbs/sales",
///         "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/myResourceGroupName/providers/Microsoft.DocumentDB/databaseAccounts/myAccountName/dbs/purchases",
///     ],
///     permissions: [{
///         dataActions: [
///             "Microsoft.DocumentDB/databaseAccounts/cassandraDatabases/containers/entities/create",
///             "Microsoft.DocumentDB/databaseAccounts/cassandraDatabases/containers/entities/read",
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
/// cassandra_resource_cassandra_role_definition = azure_native.cosmosdb.CassandraResourceCassandraRoleDefinition("cassandraResourceCassandraRoleDefinition",
///     account_name="myAccountName",
///     assignable_scopes=[
///         "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/myResourceGroupName/providers/Microsoft.DocumentDB/databaseAccounts/myAccountName/dbs/sales",
///         "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/myResourceGroupName/providers/Microsoft.DocumentDB/databaseAccounts/myAccountName/dbs/purchases",
///     ],
///     permissions=[{
///         "data_actions": [
///             "Microsoft.DocumentDB/databaseAccounts/cassandraDatabases/containers/entities/create",
///             "Microsoft.DocumentDB/databaseAccounts/cassandraDatabases/containers/entities/read",
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
///   cassandraResourceCassandraRoleDefinition:
///     type: azure-native:cosmosdb:CassandraResourceCassandraRoleDefinition
///     properties:
///       accountName: myAccountName
///       assignableScopes:
///         - /subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/myResourceGroupName/providers/Microsoft.DocumentDB/databaseAccounts/myAccountName/dbs/sales
///         - /subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/myResourceGroupName/providers/Microsoft.DocumentDB/databaseAccounts/myAccountName/dbs/purchases
///       permissions:
///         - dataActions:
///             - Microsoft.DocumentDB/databaseAccounts/cassandraDatabases/containers/entities/create
///             - Microsoft.DocumentDB/databaseAccounts/cassandraDatabases/containers/entities/read
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
/// $ pulumi import azure-native:cosmosdb:CassandraResourceCassandraRoleDefinition myRoleDefinitionId /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DocumentDB/databaseAccounts/{accountName}/cassandraRoleDefinitions/{roleDefinitionId}
/// ```
class CassandraResourceCassandraRoleDefinition extends pulumi.CustomResource {
  /// A set of fully qualified Scopes at or below which Cassandra Role Assignments may be created using this Role Definition. This will allow application of this Role Definition on the entire database account or any underlying Database / Collection. Must have at least one element. Scopes higher than Database account are not enforceable as assignable Scopes. Note that resources referenced in assignable Scopes need not exist.
  late final pulumi.Output<List<String>?> assignableScopes;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The set of operations allowed through this Role Definition.
  late final pulumi.Output<List<Map<String, dynamic>>?> permissions;

  /// A user-friendly name for the Role Definition. Must be unique for the database account.
  late final pulumi.Output<String?> roleName;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [CassandraResourceCassandraRoleDefinition].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CassandraResourceCassandraRoleDefinition]. {@macro pulumi_cosmosdb_cassandra_resource_cassandra_role_definition_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CassandraResourceCassandraRoleDefinition(
    String name, {
    CassandraResourceCassandraRoleDefinitionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:cosmosdb:CassandraResourceCassandraRoleDefinition',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    assignableScopes = registerOutput<List<String>?>('assignableScopes');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    permissions = registerOutput<List<Map<String, dynamic>>?>('permissions');
    roleName = registerOutput<String?>('roleName');
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
  }
}
