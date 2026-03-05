import 'package:pulumi/pulumi.dart' as pulumi;
import 'mongo_dbresource_mongo_user_definition_args.dart';

/// An Azure Cosmos DB User Definition
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2021-10-15-preview, 2021-11-15-preview, 2022-02-15-preview, 2022-05-15-preview, 2022-08-15, 2022-08-15-preview, 2022-11-15, 2022-11-15-preview, 2023-03-01-preview, 2023-03-15, 2023-03-15-preview, 2023-04-15, 2023-09-15, 2023-09-15-preview, 2023-11-15, 2023-11-15-preview, 2024-02-15-preview, 2024-05-15, 2024-05-15-preview, 2024-08-15, 2024-09-01-preview, 2024-11-15, 2024-12-01-preview, 2025-04-15, 2025-05-01-preview, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CosmosDBMongoDBUserDefinitionCreateUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var mongoDBResourceMongoUserDefinition = new AzureNative.CosmosDB.MongoDBResourceMongoUserDefinition("mongoDBResourceMongoUserDefinition", new()
///     {
///         AccountName = "myAccountName",
///         CustomData = "My custom data",
///         DatabaseName = "sales",
///         Mechanisms = "SCRAM-SHA-256",
///         MongoUserDefinitionId = "myMongoUserDefinitionId",
///         Password = "myPassword",
///         ResourceGroupName = "myResourceGroupName",
///         Roles = new[]
///         {
///             new AzureNative.CosmosDB.Inputs.RoleArgs
///             {
///                 Db = "sales",
///                 Role = "myReadRole",
///             },
///         },
///         UserName = "myUserName",
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
/// 		_, err := cosmosdb.NewMongoDBResourceMongoUserDefinition(ctx, "mongoDBResourceMongoUserDefinition", &cosmosdb.MongoDBResourceMongoUserDefinitionArgs{
/// 			AccountName:           pulumi.String("myAccountName"),
/// 			CustomData:            pulumi.String("My custom data"),
/// 			DatabaseName:          pulumi.String("sales"),
/// 			Mechanisms:            pulumi.String("SCRAM-SHA-256"),
/// 			MongoUserDefinitionId: pulumi.String("myMongoUserDefinitionId"),
/// 			Password:              pulumi.String("myPassword"),
/// 			ResourceGroupName:     pulumi.String("myResourceGroupName"),
/// 			Roles: cosmosdb.RoleArray{
/// 				&cosmosdb.RoleArgs{
/// 					Db:   pulumi.String("sales"),
/// 					Role: pulumi.String("myReadRole"),
/// 				},
/// 			},
/// 			UserName: pulumi.String("myUserName"),
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
/// import com.pulumi.azurenative.cosmosdb.MongoDBResourceMongoUserDefinition;
/// import com.pulumi.azurenative.cosmosdb.MongoDBResourceMongoUserDefinitionArgs;
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
///         var mongoDBResourceMongoUserDefinition = new MongoDBResourceMongoUserDefinition("mongoDBResourceMongoUserDefinition", MongoDBResourceMongoUserDefinitionArgs.builder()
///             .accountName("myAccountName")
///             .customData("My custom data")
///             .databaseName("sales")
///             .mechanisms("SCRAM-SHA-256")
///             .mongoUserDefinitionId("myMongoUserDefinitionId")
///             .password("myPassword")
///             .resourceGroupName("myResourceGroupName")
///             .roles(RoleArgs.builder()
///                 .db("sales")
///                 .role("myReadRole")
///                 .build())
///             .userName("myUserName")
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
/// const mongoDBResourceMongoUserDefinition = new azure_native.cosmosdb.MongoDBResourceMongoUserDefinition("mongoDBResourceMongoUserDefinition", {
///     accountName: "myAccountName",
///     customData: "My custom data",
///     databaseName: "sales",
///     mechanisms: "SCRAM-SHA-256",
///     mongoUserDefinitionId: "myMongoUserDefinitionId",
///     password: "myPassword",
///     resourceGroupName: "myResourceGroupName",
///     roles: [{
///         db: "sales",
///         role: "myReadRole",
///     }],
///     userName: "myUserName",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// mongo_db_resource_mongo_user_definition = azure_native.cosmosdb.MongoDBResourceMongoUserDefinition("mongoDBResourceMongoUserDefinition",
///     account_name="myAccountName",
///     custom_data="My custom data",
///     database_name="sales",
///     mechanisms="SCRAM-SHA-256",
///     mongo_user_definition_id="myMongoUserDefinitionId",
///     password="myPassword",
///     resource_group_name="myResourceGroupName",
///     roles=[{
///         "db": "sales",
///         "role": "myReadRole",
///     }],
///     user_name="myUserName")
///
/// ```
///
/// ```yaml
/// resources:
///   mongoDBResourceMongoUserDefinition:
///     type: azure-native:cosmosdb:MongoDBResourceMongoUserDefinition
///     properties:
///       accountName: myAccountName
///       customData: My custom data
///       databaseName: sales
///       mechanisms: SCRAM-SHA-256
///       mongoUserDefinitionId: myMongoUserDefinitionId
///       password: myPassword
///       resourceGroupName: myResourceGroupName
///       roles:
///         - db: sales
///           role: myReadRole
///       userName: myUserName
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
/// $ pulumi import azure-native:cosmosdb:MongoDBResourceMongoUserDefinition myUserName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DocumentDB/databaseAccounts/{accountName}/mongodbUserDefinitions/{mongoUserDefinitionId}
/// ```
class MongoDBResourceMongoUserDefinition extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// A custom definition for the USer Definition.
  late final pulumi.Output<String?> customData;
  /// The database name for which access is being granted for this User Definition.
  late final pulumi.Output<String?> databaseName;
  /// The Mongo Auth mechanism. For now, we only support auth mechanism SCRAM-SHA-256.
  late final pulumi.Output<String?> mechanisms;
  /// The name of the database account.
  late final pulumi.Output<String> name;
  /// The password for User Definition. Response does not contain user password.
  late final pulumi.Output<String?> password;
  /// The set of roles inherited by the User Definition.
  late final pulumi.Output<List<Map<String, dynamic>>?> roles;
  /// The type of Azure resource.
  late final pulumi.Output<String> type;
  /// The user name for User Definition.
  late final pulumi.Output<String?> userName;

  /// Creates a new [MongoDBResourceMongoUserDefinition].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MongoDBResourceMongoUserDefinition]. {@macro pulumi_cosmosdb_mongo_dbresource_mongo_user_definition_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MongoDBResourceMongoUserDefinition(
    String name, {
    MongoDBResourceMongoUserDefinitionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:cosmosdb:MongoDBResourceMongoUserDefinition',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    customData = registerOutput<String?>('customData');
    databaseName = registerOutput<String?>('databaseName');
    mechanisms = registerOutput<String?>('mechanisms');
    this.name = registerOutput<String>('name');
    password = registerOutput<String?>('password');
    roles = registerOutput<List<Map<String, dynamic>>?>('roles');
    type = registerOutput<String>('type');
    userName = registerOutput<String?>('userName');
  }
}
