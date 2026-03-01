import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_migrations_mongo_to_cosmos_dbv_core_mongo_args.dart';
import 'error_info_response.dart';
import 'mongo_connection_information_response.dart';
import 'mongo_migration_collection_response.dart';
import 'system_data_response.dart';

/// Database Migration Resource for Mongo to CosmosDb.
///
/// Uses Azure REST API version 2023-07-15-preview. In version 2.x of the Azure Native provider, it used API version 2023-07-15-preview.
///
/// Other available API versions: 2025-03-15-preview, 2025-06-30, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native datamigration [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create Mongo to CosmosDb Mongo(vCore) Database Migration resource with Maximum parameters.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var databaseMigrationsMongoToCosmosDbvCoreMongo = new AzureNative.DataMigration.DatabaseMigrationsMongoToCosmosDbvCoreMongo("databaseMigrationsMongoToCosmosDbvCoreMongo", new()
///     {
///         CollectionList = new[]
///         {
///             new AzureNative.DataMigration.Inputs.MongoMigrationCollectionArgs
///             {
///                 SourceCollection = "sourceCol1",
///                 SourceDatabase = "sourceDb1",
///                 TargetCollection = "targetCol1",
///                 TargetDatabase = "targetDb1",
///             },
///             new AzureNative.DataMigration.Inputs.MongoMigrationCollectionArgs
///             {
///                 SourceCollection = "sourceCol2",
///                 SourceDatabase = "sourceDb2",
///                 TargetCollection = "sourceCol2",
///                 TargetDatabase = "sourceDb2",
///             },
///         },
///         Kind = "MongoToCosmosDbMongo",
///         MigrationName = "migrationRequest",
///         MigrationService = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.DataMigration/MigrationServices/testMigrationService",
///         ResourceGroupName = "testrg",
///         Scope = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.DocumentDB/mongoClusters/targetCosmosDbClusterName",
///         SourceMongoConnection = new AzureNative.DataMigration.Inputs.MongoConnectionInformationArgs
///         {
///             Host = "abc.mongodb.com",
///             Password = "placeholder",
///             Port = 88,
///             UseSsl = true,
///             UserName = "abc",
///         },
///         TargetMongoConnection = new AzureNative.DataMigration.Inputs.MongoConnectionInformationArgs
///         {
///             Host = "xyz.mongocluster.cosmos.azure.com",
///             Password = "placeholder",
///             Port = 10255,
///             UseSsl = true,
///             UserName = "def",
///         },
///         TargetResourceName = "targetCosmosDbClusterName",
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
/// 	datamigration "github.com/pulumi/pulumi-azure-native-sdk/datamigration/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datamigration.NewDatabaseMigrationsMongoToCosmosDbvCoreMongo(ctx, "databaseMigrationsMongoToCosmosDbvCoreMongo", &datamigration.DatabaseMigrationsMongoToCosmosDbvCoreMongoArgs{
/// 			CollectionList: datamigration.MongoMigrationCollectionArray{
/// 				&datamigration.MongoMigrationCollectionArgs{
/// 					SourceCollection: pulumi.String("sourceCol1"),
/// 					SourceDatabase:   pulumi.String("sourceDb1"),
/// 					TargetCollection: pulumi.String("targetCol1"),
/// 					TargetDatabase:   pulumi.String("targetDb1"),
/// 				},
/// 				&datamigration.MongoMigrationCollectionArgs{
/// 					SourceCollection: pulumi.String("sourceCol2"),
/// 					SourceDatabase:   pulumi.String("sourceDb2"),
/// 					TargetCollection: pulumi.String("sourceCol2"),
/// 					TargetDatabase:   pulumi.String("sourceDb2"),
/// 				},
/// 			},
/// 			Kind:              pulumi.String("MongoToCosmosDbMongo"),
/// 			MigrationName:     pulumi.String("migrationRequest"),
/// 			MigrationService:  pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.DataMigration/MigrationServices/testMigrationService"),
/// 			ResourceGroupName: pulumi.String("testrg"),
/// 			Scope:             pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.DocumentDB/mongoClusters/targetCosmosDbClusterName"),
/// 			SourceMongoConnection: &datamigration.MongoConnectionInformationArgs{
/// 				Host:     pulumi.String("abc.mongodb.com"),
/// 				Password: pulumi.String("placeholder"),
/// 				Port:     pulumi.Int(88),
/// 				UseSsl:   pulumi.Bool(true),
/// 				UserName: pulumi.String("abc"),
/// 			},
/// 			TargetMongoConnection: &datamigration.MongoConnectionInformationArgs{
/// 				Host:     pulumi.String("xyz.mongocluster.cosmos.azure.com"),
/// 				Password: pulumi.String("placeholder"),
/// 				Port:     pulumi.Int(10255),
/// 				UseSsl:   pulumi.Bool(true),
/// 				UserName: pulumi.String("def"),
/// 			},
/// 			TargetResourceName: pulumi.String("targetCosmosDbClusterName"),
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
/// import com.pulumi.azurenative.datamigration.DatabaseMigrationsMongoToCosmosDbvCoreMongo;
/// import com.pulumi.azurenative.datamigration.DatabaseMigrationsMongoToCosmosDbvCoreMongoArgs;
/// import com.pulumi.azurenative.datamigration.inputs.MongoMigrationCollectionArgs;
/// import com.pulumi.azurenative.datamigration.inputs.MongoConnectionInformationArgs;
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
///         var databaseMigrationsMongoToCosmosDbvCoreMongo = new DatabaseMigrationsMongoToCosmosDbvCoreMongo("databaseMigrationsMongoToCosmosDbvCoreMongo", DatabaseMigrationsMongoToCosmosDbvCoreMongoArgs.builder()
///             .collectionList(
///                 MongoMigrationCollectionArgs.builder()
///                     .sourceCollection("sourceCol1")
///                     .sourceDatabase("sourceDb1")
///                     .targetCollection("targetCol1")
///                     .targetDatabase("targetDb1")
///                     .build(),
///                 MongoMigrationCollectionArgs.builder()
///                     .sourceCollection("sourceCol2")
///                     .sourceDatabase("sourceDb2")
///                     .targetCollection("sourceCol2")
///                     .targetDatabase("sourceDb2")
///                     .build())
///             .kind("MongoToCosmosDbMongo")
///             .migrationName("migrationRequest")
///             .migrationService("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.DataMigration/MigrationServices/testMigrationService")
///             .resourceGroupName("testrg")
///             .scope("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.DocumentDB/mongoClusters/targetCosmosDbClusterName")
///             .sourceMongoConnection(MongoConnectionInformationArgs.builder()
///                 .host("abc.mongodb.com")
///                 .password("placeholder")
///                 .port(88)
///                 .useSsl(true)
///                 .userName("abc")
///                 .build())
///             .targetMongoConnection(MongoConnectionInformationArgs.builder()
///                 .host("xyz.mongocluster.cosmos.azure.com")
///                 .password("placeholder")
///                 .port(10255)
///                 .useSsl(true)
///                 .userName("def")
///                 .build())
///             .targetResourceName("targetCosmosDbClusterName")
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
/// const databaseMigrationsMongoToCosmosDbvCoreMongo = new azure_native.datamigration.DatabaseMigrationsMongoToCosmosDbvCoreMongo("databaseMigrationsMongoToCosmosDbvCoreMongo", {
///     collectionList: [
///         {
///             sourceCollection: "sourceCol1",
///             sourceDatabase: "sourceDb1",
///             targetCollection: "targetCol1",
///             targetDatabase: "targetDb1",
///         },
///         {
///             sourceCollection: "sourceCol2",
///             sourceDatabase: "sourceDb2",
///             targetCollection: "sourceCol2",
///             targetDatabase: "sourceDb2",
///         },
///     ],
///     kind: "MongoToCosmosDbMongo",
///     migrationName: "migrationRequest",
///     migrationService: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.DataMigration/MigrationServices/testMigrationService",
///     resourceGroupName: "testrg",
///     scope: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.DocumentDB/mongoClusters/targetCosmosDbClusterName",
///     sourceMongoConnection: {
///         host: "abc.mongodb.com",
///         password: "placeholder",
///         port: 88,
///         useSsl: true,
///         userName: "abc",
///     },
///     targetMongoConnection: {
///         host: "xyz.mongocluster.cosmos.azure.com",
///         password: "placeholder",
///         port: 10255,
///         useSsl: true,
///         userName: "def",
///     },
///     targetResourceName: "targetCosmosDbClusterName",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// database_migrations_mongo_to_cosmos_dbv_core_mongo = azure_native.datamigration.DatabaseMigrationsMongoToCosmosDbvCoreMongo("databaseMigrationsMongoToCosmosDbvCoreMongo",
///     collection_list=[
///         {
///             "source_collection": "sourceCol1",
///             "source_database": "sourceDb1",
///             "target_collection": "targetCol1",
///             "target_database": "targetDb1",
///         },
///         {
///             "source_collection": "sourceCol2",
///             "source_database": "sourceDb2",
///             "target_collection": "sourceCol2",
///             "target_database": "sourceDb2",
///         },
///     ],
///     kind="MongoToCosmosDbMongo",
///     migration_name="migrationRequest",
///     migration_service="/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.DataMigration/MigrationServices/testMigrationService",
///     resource_group_name="testrg",
///     scope="/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.DocumentDB/mongoClusters/targetCosmosDbClusterName",
///     source_mongo_connection={
///         "host": "abc.mongodb.com",
///         "password": "placeholder",
///         "port": 88,
///         "use_ssl": True,
///         "user_name": "abc",
///     },
///     target_mongo_connection={
///         "host": "xyz.mongocluster.cosmos.azure.com",
///         "password": "placeholder",
///         "port": 10255,
///         "use_ssl": True,
///         "user_name": "def",
///     },
///     target_resource_name="targetCosmosDbClusterName")
///
/// ```
///
/// ```yaml
/// resources:
///   databaseMigrationsMongoToCosmosDbvCoreMongo:
///     type: azure-native:datamigration:DatabaseMigrationsMongoToCosmosDbvCoreMongo
///     properties:
///       collectionList:
///         - sourceCollection: sourceCol1
///           sourceDatabase: sourceDb1
///           targetCollection: targetCol1
///           targetDatabase: targetDb1
///         - sourceCollection: sourceCol2
///           sourceDatabase: sourceDb2
///           targetCollection: sourceCol2
///           targetDatabase: sourceDb2
///       kind: MongoToCosmosDbMongo
///       migrationName: migrationRequest
///       migrationService: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.DataMigration/MigrationServices/testMigrationService
///       resourceGroupName: testrg
///       scope: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.DocumentDB/mongoClusters/targetCosmosDbClusterName
///       sourceMongoConnection:
///         host: abc.mongodb.com
///         password: placeholder
///         port: 88
///         useSsl: true
///         userName: abc
///       targetMongoConnection:
///         host: xyz.mongocluster.cosmos.azure.com
///         password: placeholder
///         port: 10255
///         useSsl: true
///         userName: def
///       targetResourceName: targetCosmosDbClusterName
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Mongo to CosmosDb Mongo(vCore) Database Migration resource with Minimum parameters.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var databaseMigrationsMongoToCosmosDbvCoreMongo = new AzureNative.DataMigration.DatabaseMigrationsMongoToCosmosDbvCoreMongo("databaseMigrationsMongoToCosmosDbvCoreMongo", new()
///     {
///         CollectionList = new[]
///         {
///             new AzureNative.DataMigration.Inputs.MongoMigrationCollectionArgs
///             {
///                 SourceCollection = "sourceCol1",
///                 SourceDatabase = "sourceDb1",
///                 TargetCollection = "targetCol1",
///                 TargetDatabase = "targetDb1",
///             },
///             new AzureNative.DataMigration.Inputs.MongoMigrationCollectionArgs
///             {
///                 SourceCollection = "sourceCol2",
///                 SourceDatabase = "sourceDb2",
///             },
///         },
///         Kind = "MongoToCosmosDbMongo",
///         MigrationName = "migrationRequest",
///         MigrationService = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.DataMigration/MigrationServices/testMigrationService",
///         ResourceGroupName = "testrg",
///         Scope = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.DocumentDB/mongoClusters/targetCosmosDbClusterName",
///         SourceMongoConnection = new AzureNative.DataMigration.Inputs.MongoConnectionInformationArgs
///         {
///             Host = "abc.mongodb.com",
///             Password = "placeholder",
///             Port = 88,
///             UseSsl = true,
///             UserName = "abc",
///         },
///         TargetMongoConnection = new AzureNative.DataMigration.Inputs.MongoConnectionInformationArgs
///         {
///             ConnectionString = "placeholder",
///         },
///         TargetResourceName = "targetCosmosDbClusterName",
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
/// 	datamigration "github.com/pulumi/pulumi-azure-native-sdk/datamigration/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datamigration.NewDatabaseMigrationsMongoToCosmosDbvCoreMongo(ctx, "databaseMigrationsMongoToCosmosDbvCoreMongo", &datamigration.DatabaseMigrationsMongoToCosmosDbvCoreMongoArgs{
/// 			CollectionList: datamigration.MongoMigrationCollectionArray{
/// 				&datamigration.MongoMigrationCollectionArgs{
/// 					SourceCollection: pulumi.String("sourceCol1"),
/// 					SourceDatabase:   pulumi.String("sourceDb1"),
/// 					TargetCollection: pulumi.String("targetCol1"),
/// 					TargetDatabase:   pulumi.String("targetDb1"),
/// 				},
/// 				&datamigration.MongoMigrationCollectionArgs{
/// 					SourceCollection: pulumi.String("sourceCol2"),
/// 					SourceDatabase:   pulumi.String("sourceDb2"),
/// 				},
/// 			},
/// 			Kind:              pulumi.String("MongoToCosmosDbMongo"),
/// 			MigrationName:     pulumi.String("migrationRequest"),
/// 			MigrationService:  pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.DataMigration/MigrationServices/testMigrationService"),
/// 			ResourceGroupName: pulumi.String("testrg"),
/// 			Scope:             pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.DocumentDB/mongoClusters/targetCosmosDbClusterName"),
/// 			SourceMongoConnection: &datamigration.MongoConnectionInformationArgs{
/// 				Host:     pulumi.String("abc.mongodb.com"),
/// 				Password: pulumi.String("placeholder"),
/// 				Port:     pulumi.Int(88),
/// 				UseSsl:   pulumi.Bool(true),
/// 				UserName: pulumi.String("abc"),
/// 			},
/// 			TargetMongoConnection: &datamigration.MongoConnectionInformationArgs{
/// 				ConnectionString: pulumi.String("placeholder"),
/// 			},
/// 			TargetResourceName: pulumi.String("targetCosmosDbClusterName"),
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
/// import com.pulumi.azurenative.datamigration.DatabaseMigrationsMongoToCosmosDbvCoreMongo;
/// import com.pulumi.azurenative.datamigration.DatabaseMigrationsMongoToCosmosDbvCoreMongoArgs;
/// import com.pulumi.azurenative.datamigration.inputs.MongoMigrationCollectionArgs;
/// import com.pulumi.azurenative.datamigration.inputs.MongoConnectionInformationArgs;
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
///         var databaseMigrationsMongoToCosmosDbvCoreMongo = new DatabaseMigrationsMongoToCosmosDbvCoreMongo("databaseMigrationsMongoToCosmosDbvCoreMongo", DatabaseMigrationsMongoToCosmosDbvCoreMongoArgs.builder()
///             .collectionList(
///                 MongoMigrationCollectionArgs.builder()
///                     .sourceCollection("sourceCol1")
///                     .sourceDatabase("sourceDb1")
///                     .targetCollection("targetCol1")
///                     .targetDatabase("targetDb1")
///                     .build(),
///                 MongoMigrationCollectionArgs.builder()
///                     .sourceCollection("sourceCol2")
///                     .sourceDatabase("sourceDb2")
///                     .build())
///             .kind("MongoToCosmosDbMongo")
///             .migrationName("migrationRequest")
///             .migrationService("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.DataMigration/MigrationServices/testMigrationService")
///             .resourceGroupName("testrg")
///             .scope("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.DocumentDB/mongoClusters/targetCosmosDbClusterName")
///             .sourceMongoConnection(MongoConnectionInformationArgs.builder()
///                 .host("abc.mongodb.com")
///                 .password("placeholder")
///                 .port(88)
///                 .useSsl(true)
///                 .userName("abc")
///                 .build())
///             .targetMongoConnection(MongoConnectionInformationArgs.builder()
///                 .connectionString("placeholder")
///                 .build())
///             .targetResourceName("targetCosmosDbClusterName")
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
/// const databaseMigrationsMongoToCosmosDbvCoreMongo = new azure_native.datamigration.DatabaseMigrationsMongoToCosmosDbvCoreMongo("databaseMigrationsMongoToCosmosDbvCoreMongo", {
///     collectionList: [
///         {
///             sourceCollection: "sourceCol1",
///             sourceDatabase: "sourceDb1",
///             targetCollection: "targetCol1",
///             targetDatabase: "targetDb1",
///         },
///         {
///             sourceCollection: "sourceCol2",
///             sourceDatabase: "sourceDb2",
///         },
///     ],
///     kind: "MongoToCosmosDbMongo",
///     migrationName: "migrationRequest",
///     migrationService: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.DataMigration/MigrationServices/testMigrationService",
///     resourceGroupName: "testrg",
///     scope: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.DocumentDB/mongoClusters/targetCosmosDbClusterName",
///     sourceMongoConnection: {
///         host: "abc.mongodb.com",
///         password: "placeholder",
///         port: 88,
///         useSsl: true,
///         userName: "abc",
///     },
///     targetMongoConnection: {
///         connectionString: "placeholder",
///     },
///     targetResourceName: "targetCosmosDbClusterName",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// database_migrations_mongo_to_cosmos_dbv_core_mongo = azure_native.datamigration.DatabaseMigrationsMongoToCosmosDbvCoreMongo("databaseMigrationsMongoToCosmosDbvCoreMongo",
///     collection_list=[
///         {
///             "source_collection": "sourceCol1",
///             "source_database": "sourceDb1",
///             "target_collection": "targetCol1",
///             "target_database": "targetDb1",
///         },
///         {
///             "source_collection": "sourceCol2",
///             "source_database": "sourceDb2",
///         },
///     ],
///     kind="MongoToCosmosDbMongo",
///     migration_name="migrationRequest",
///     migration_service="/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.DataMigration/MigrationServices/testMigrationService",
///     resource_group_name="testrg",
///     scope="/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.DocumentDB/mongoClusters/targetCosmosDbClusterName",
///     source_mongo_connection={
///         "host": "abc.mongodb.com",
///         "password": "placeholder",
///         "port": 88,
///         "use_ssl": True,
///         "user_name": "abc",
///     },
///     target_mongo_connection={
///         "connection_string": "placeholder",
///     },
///     target_resource_name="targetCosmosDbClusterName")
///
/// ```
///
/// ```yaml
/// resources:
///   databaseMigrationsMongoToCosmosDbvCoreMongo:
///     type: azure-native:datamigration:DatabaseMigrationsMongoToCosmosDbvCoreMongo
///     properties:
///       collectionList:
///         - sourceCollection: sourceCol1
///           sourceDatabase: sourceDb1
///           targetCollection: targetCol1
///           targetDatabase: targetDb1
///         - sourceCollection: sourceCol2
///           sourceDatabase: sourceDb2
///       kind: MongoToCosmosDbMongo
///       migrationName: migrationRequest
///       migrationService: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.DataMigration/MigrationServices/testMigrationService
///       resourceGroupName: testrg
///       scope: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.DocumentDB/mongoClusters/targetCosmosDbClusterName
///       sourceMongoConnection:
///         host: abc.mongodb.com
///         password: placeholder
///         port: 88
///         useSsl: true
///         userName: abc
///       targetMongoConnection:
///         connectionString: placeholder
///       targetResourceName: targetCosmosDbClusterName
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
/// $ pulumi import azure-native:datamigration:DatabaseMigrationsMongoToCosmosDbvCoreMongo migrationRequest /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DocumentDB/mongoClusters/{targetResourceName}/providers/Microsoft.DataMigration/databaseMigrations/{migrationName}
/// ```
class DatabaseMigrationsMongoToCosmosDbvCoreMongo extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// List of Mongo Collections to be migrated.
  late final pulumi.Output<List<MongoMigrationCollectionResponse>?> collectionList;
  /// Database migration end time.
  late final pulumi.Output<String> endedOn;
  /// Expected value is 'MongoToCosmosDbMongo'.
  late final pulumi.Output<String> kind;
  /// Error details in case of migration failure.
  late final pulumi.Output<ErrorInfoResponse> migrationFailureError;
  /// ID for current migration operation.
  late final pulumi.Output<String?> migrationOperationId;
  /// Resource Id of the Migration Service.
  late final pulumi.Output<String?> migrationService;
  /// Migration status.
  late final pulumi.Output<String> migrationStatus;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Error message for migration provisioning failure, if any.
  late final pulumi.Output<String?> provisioningError;
  /// Provisioning State of migration. ProvisioningState as Succeeded implies that validations have been performed and migration has started.
  late final pulumi.Output<String> provisioningState;
  /// Resource Id of the target resource.
  late final pulumi.Output<String?> scope;
  /// Source Mongo connection details.
  late final pulumi.Output<MongoConnectionInformationResponse?> sourceMongoConnection;
  /// Database migration start time.
  late final pulumi.Output<String> startedOn;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Target Cosmos DB Mongo connection details.
  late final pulumi.Output<MongoConnectionInformationResponse?> targetMongoConnection;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [DatabaseMigrationsMongoToCosmosDbvCoreMongo].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DatabaseMigrationsMongoToCosmosDbvCoreMongo]. {@macro pulumi_datamigration_database_migrations_mongo_to_cosmos_dbv_core_mongo_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DatabaseMigrationsMongoToCosmosDbvCoreMongo(
    String name, {
    DatabaseMigrationsMongoToCosmosDbvCoreMongoArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:datamigration:DatabaseMigrationsMongoToCosmosDbvCoreMongo',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.collectionList = registerOutput<List<MongoMigrationCollectionResponse>?>('collectionList');
    this.endedOn = registerOutput<String>('endedOn');
    this.kind = registerOutput<String>('kind');
    this.migrationFailureError = registerOutput<ErrorInfoResponse>('migrationFailureError');
    this.migrationOperationId = registerOutput<String?>('migrationOperationId');
    this.migrationService = registerOutput<String?>('migrationService');
    this.migrationStatus = registerOutput<String>('migrationStatus');
    this.name = registerOutput<String>('name');
    this.provisioningError = registerOutput<String?>('provisioningError');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.scope = registerOutput<String?>('scope');
    this.sourceMongoConnection = registerOutput<MongoConnectionInformationResponse?>('sourceMongoConnection');
    this.startedOn = registerOutput<String>('startedOn');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.targetMongoConnection = registerOutput<MongoConnectionInformationResponse?>('targetMongoConnection');
    this.type = registerOutput<String>('type');
  }
}
