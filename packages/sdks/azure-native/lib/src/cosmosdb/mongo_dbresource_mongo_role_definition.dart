import 'package:pulumi/pulumi.dart' as pulumi;
import 'mongo_dbresource_mongo_role_definition_args.dart';

/// An Azure Cosmos DB Mongo Role Definition.
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2021-10-15-preview, 2021-11-15-preview, 2022-02-15-preview, 2022-05-15-preview, 2022-08-15, 2022-08-15-preview, 2022-11-15, 2022-11-15-preview, 2023-03-01-preview, 2023-03-15, 2023-03-15-preview, 2023-04-15, 2023-09-15, 2023-09-15-preview, 2023-11-15, 2023-11-15-preview, 2024-02-15-preview, 2024-05-15, 2024-05-15-preview, 2024-08-15, 2024-09-01-preview, 2024-11-15, 2024-12-01-preview, 2025-04-15, 2025-05-01-preview, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CosmosDBMongoDBRoleDefinitionCreateUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var mongoDBResourceMongoRoleDefinition = new AzureNative.CosmosDB.MongoDBResourceMongoRoleDefinition("mongoDBResourceMongoRoleDefinition", new()
///     {
///         AccountName = "myAccountName",
///         DatabaseName = "sales",
///         MongoRoleDefinitionId = "myMongoRoleDefinitionId",
///         Privileges = new[]
///         {
///             new AzureNative.CosmosDB.Inputs.PrivilegeArgs
///             {
///                 Actions = new[]
///                 {
///                     "insert",
///                     "find",
///                 },
///                 Resource = new AzureNative.CosmosDB.Inputs.PrivilegeResourceArgs
///                 {
///                     Collection = "sales",
///                     Db = "sales",
///                 },
///             },
///         },
///         ResourceGroupName = "myResourceGroupName",
///         RoleName = "myRoleName",
///         Roles = new[]
///         {
///             new AzureNative.CosmosDB.Inputs.RoleArgs
///             {
///                 Db = "sales",
///                 Role = "myInheritedRole",
///             },
///         },
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
/// 		_, err := cosmosdb.NewMongoDBResourceMongoRoleDefinition(ctx, "mongoDBResourceMongoRoleDefinition", &cosmosdb.MongoDBResourceMongoRoleDefinitionArgs{
/// 			AccountName:           pulumi.String("myAccountName"),
/// 			DatabaseName:          pulumi.String("sales"),
/// 			MongoRoleDefinitionId: pulumi.String("myMongoRoleDefinitionId"),
/// 			Privileges: cosmosdb.PrivilegeArray{
/// 				&cosmosdb.PrivilegeArgs{
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("insert"),
/// 						pulumi.String("find"),
/// 					},
/// 					Resource: &cosmosdb.PrivilegeResourceArgs{
/// 						Collection: pulumi.String("sales"),
/// 						Db:         pulumi.String("sales"),
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroupName"),
/// 			RoleName:          pulumi.String("myRoleName"),
/// 			Roles: cosmosdb.RoleArray{
/// 				&cosmosdb.RoleArgs{
/// 					Db:   pulumi.String("sales"),
/// 					Role: pulumi.String("myInheritedRole"),
/// 				},
/// 			},
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
/// import com.pulumi.azurenative.cosmosdb.MongoDBResourceMongoRoleDefinition;
/// import com.pulumi.azurenative.cosmosdb.MongoDBResourceMongoRoleDefinitionArgs;
/// import com.pulumi.azurenative.cosmosdb.inputs.PrivilegeArgs;
/// import com.pulumi.azurenative.cosmosdb.inputs.PrivilegeResourceArgs;
/// import com.pulumi.azurenative.cosmosdb.inputs.RoleArgs;
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
///         var mongoDBResourceMongoRoleDefinition = new MongoDBResourceMongoRoleDefinition("mongoDBResourceMongoRoleDefinition", MongoDBResourceMongoRoleDefinitionArgs.builder()
///             .accountName("myAccountName")
///             .databaseName("sales")
///             .mongoRoleDefinitionId("myMongoRoleDefinitionId")
///             .privileges(PrivilegeArgs.builder()
///                 .actions(
///                     "insert",
///                     "find")
///                 .resource(PrivilegeResourceArgs.builder()
///                     .collection("sales")
///                     .db("sales")
///                     .build())
///                 .build())
///             .resourceGroupName("myResourceGroupName")
///             .roleName("myRoleName")
///             .roles(RoleArgs.builder()
///                 .db("sales")
///                 .role("myInheritedRole")
///                 .build())
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
/// const mongoDBResourceMongoRoleDefinition = new azure_native.cosmosdb.MongoDBResourceMongoRoleDefinition("mongoDBResourceMongoRoleDefinition", {
///     accountName: "myAccountName",
///     databaseName: "sales",
///     mongoRoleDefinitionId: "myMongoRoleDefinitionId",
///     privileges: [{
///         actions: [
///             "insert",
///             "find",
///         ],
///         resource: {
///             collection: "sales",
///             db: "sales",
///         },
///     }],
///     resourceGroupName: "myResourceGroupName",
///     roleName: "myRoleName",
///     roles: [{
///         db: "sales",
///         role: "myInheritedRole",
///     }],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// mongo_db_resource_mongo_role_definition = azure_native.cosmosdb.MongoDBResourceMongoRoleDefinition("mongoDBResourceMongoRoleDefinition",
///     account_name="myAccountName",
///     database_name="sales",
///     mongo_role_definition_id="myMongoRoleDefinitionId",
///     privileges=[{
///         "actions": [
///             "insert",
///             "find",
///         ],
///         "resource": {
///             "collection": "sales",
///             "db": "sales",
///         },
///     }],
///     resource_group_name="myResourceGroupName",
///     role_name="myRoleName",
///     roles=[{
///         "db": "sales",
///         "role": "myInheritedRole",
///     }])
///
/// ```
///
/// ```yaml
/// resources:
///   mongoDBResourceMongoRoleDefinition:
///     type: azure-native:cosmosdb:MongoDBResourceMongoRoleDefinition
///     properties:
///       accountName: myAccountName
///       databaseName: sales
///       mongoRoleDefinitionId: myMongoRoleDefinitionId
///       privileges:
///         - actions:
///             - insert
///             - find
///           resource:
///             collection: sales
///             db: sales
///       resourceGroupName: myResourceGroupName
///       roleName: myRoleName
///       roles:
///         - db: sales
///           role: myInheritedRole
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
/// $ pulumi import azure-native:cosmosdb:MongoDBResourceMongoRoleDefinition myMongoDbRoleDefinitionId /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DocumentDB/databaseAccounts/{accountName}/mongodbRoleDefinitions/{mongoRoleDefinitionId}
/// ```
class MongoDBResourceMongoRoleDefinition extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The database name for which access is being granted for this Role Definition.
  late final pulumi.Output<String?> databaseName;
  /// The name of the database account.
  late final pulumi.Output<String> name;
  /// A set of privileges contained by the Role Definition. This will allow application of this Role Definition on the entire database account or any underlying Database / Collection. Scopes higher than Database are not enforceable as privilege.
  late final pulumi.Output<List<Map<String, dynamic>>?> privileges;
  /// A user-friendly name for the Role Definition. Must be unique for the database account.
  late final pulumi.Output<String?> roleName;
  /// The set of roles inherited by this Role Definition.
  late final pulumi.Output<List<Map<String, dynamic>>?> roles;
  /// The type of Azure resource.
  late final pulumi.Output<String> type;

  /// Creates a new [MongoDBResourceMongoRoleDefinition].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MongoDBResourceMongoRoleDefinition]. {@macro pulumi_cosmosdb_mongo_dbresource_mongo_role_definition_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MongoDBResourceMongoRoleDefinition(
    String name, {
    MongoDBResourceMongoRoleDefinitionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:cosmosdb:MongoDBResourceMongoRoleDefinition',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    databaseName = registerOutput<String?>('databaseName');
    this.name = registerOutput<String>('name');
    privileges = registerOutput<List<Map<String, dynamic>>?>('privileges');
    roleName = registerOutput<String?>('roleName');
    roles = registerOutput<List<Map<String, dynamic>>?>('roles');
    type = registerOutput<String>('type');
  }
}
