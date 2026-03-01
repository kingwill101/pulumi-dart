// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mongo_connection_information.dart';
import 'mongo_migration_collection.dart';

/// {@template pulumi_datamigration_database_migrations_mongo_to_cosmos_db_rumongo_args_doc}
/// The set of arguments for DatabaseMigrationsMongoToCosmosDbRUMongo.
/// {@endtemplate}
/// {@macro pulumi_datamigration_database_migrations_mongo_to_cosmos_db_rumongo_args_doc}
class DatabaseMigrationsMongoToCosmosDbRUMongoArgs {
  /// List of Mongo Collections to be migrated.
  final pulumi.Input<List<MongoMigrationCollection>>? collectionList;
  /// Expected value is 'MongoToCosmosDbMongo'.
  final pulumi.Input<String> kind;
  /// Name of the migration.
  final pulumi.Input<String>? migrationName;
  /// ID for current migration operation.
  final pulumi.Input<String>? migrationOperationId;
  /// Resource Id of the Migration Service.
  final pulumi.Input<String>? migrationService;
  /// Error message for migration provisioning failure, if any.
  final pulumi.Input<String>? provisioningError;
  /// Name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// Resource Id of the target resource.
  final pulumi.Input<String>? scope;
  /// Source Mongo connection details.
  final pulumi.Input<MongoConnectionInformation>? sourceMongoConnection;
  /// Target Cosmos DB Mongo connection details.
  final pulumi.Input<MongoConnectionInformation>? targetMongoConnection;
  /// The name of the target resource/account.
  final pulumi.Input<String> targetResourceName;

  /// Creates a new [DatabaseMigrationsMongoToCosmosDbRUMongoArgs].
  /// [collectionList] List of Mongo Collections to be migrated.
  /// [kind] Expected value is 'MongoToCosmosDbMongo'.
  /// [migrationName] Name of the migration.
  /// [migrationOperationId] ID for current migration operation.
  /// [migrationService] Resource Id of the Migration Service.
  /// [provisioningError] Error message for migration provisioning failure, if any.
  /// [resourceGroupName] Name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [scope] Resource Id of the target resource.
  /// [sourceMongoConnection] Source Mongo connection details.
  /// [targetMongoConnection] Target Cosmos DB Mongo connection details.
  /// [targetResourceName] The name of the target resource/account.
  DatabaseMigrationsMongoToCosmosDbRUMongoArgs({
    List<MongoMigrationCollection>? collectionList,
    required String kind,
    String? migrationName,
    String? migrationOperationId,
    String? migrationService,
    String? provisioningError,
    required String resourceGroupName,
    String? scope,
    MongoConnectionInformation? sourceMongoConnection,
    MongoConnectionInformation? targetMongoConnection,
    required String targetResourceName,
  }) :
      collectionList = pulumi.Input.asOptionalInput<List<MongoMigrationCollection>>(collectionList),
      kind = pulumi.Input.asInput<String>(kind),
      migrationName = pulumi.Input.asOptionalInput<String>(migrationName),
      migrationOperationId = pulumi.Input.asOptionalInput<String>(migrationOperationId),
      migrationService = pulumi.Input.asOptionalInput<String>(migrationService),
      provisioningError = pulumi.Input.asOptionalInput<String>(provisioningError),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      scope = pulumi.Input.asOptionalInput<String>(scope),
      sourceMongoConnection = pulumi.Input.asOptionalInput<MongoConnectionInformation>(sourceMongoConnection),
      targetMongoConnection = pulumi.Input.asOptionalInput<MongoConnectionInformation>(targetMongoConnection),
      targetResourceName = pulumi.Input.asInput<String>(targetResourceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectionList': ?pulumi.Input.mapOptionalInputValue<List<MongoMigrationCollection>, List<Map<String, dynamic>>>(collectionList, (value) => pulumi.Input.encodeList<MongoMigrationCollection, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kind': kind,
      'migrationName': ?migrationName,
      'migrationOperationId': ?migrationOperationId,
      'migrationService': ?migrationService,
      'provisioningError': ?provisioningError,
      'resourceGroupName': resourceGroupName,
      'scope': ?scope,
      'sourceMongoConnection': ?pulumi.Input.mapOptionalInputValue<MongoConnectionInformation, Map<String, dynamic>>(sourceMongoConnection, (value) => value.toMap()),
      'targetMongoConnection': ?pulumi.Input.mapOptionalInputValue<MongoConnectionInformation, Map<String, dynamic>>(targetMongoConnection, (value) => value.toMap()),
      'targetResourceName': targetResourceName,
    };
  }

  factory DatabaseMigrationsMongoToCosmosDbRUMongoArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseMigrationsMongoToCosmosDbRUMongoArgs(
      collectionList: map['collectionList'] == null ? null : pulumi.Input.decodeList<MongoMigrationCollection>(map['collectionList'], (value) => MongoMigrationCollection.fromMap((value as Map).cast<String, dynamic>())),
      kind: map['kind'] as String,
      migrationName: map['migrationName'] == null ? null : map['migrationName'] as String,
      migrationOperationId: map['migrationOperationId'] == null ? null : map['migrationOperationId'] as String,
      migrationService: map['migrationService'] == null ? null : map['migrationService'] as String,
      provisioningError: map['provisioningError'] == null ? null : map['provisioningError'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      scope: map['scope'] == null ? null : map['scope'] as String,
      sourceMongoConnection: map['sourceMongoConnection'] == null ? null : MongoConnectionInformation.fromMap((map['sourceMongoConnection'] as Map).cast<String, dynamic>()),
      targetMongoConnection: map['targetMongoConnection'] == null ? null : MongoConnectionInformation.fromMap((map['targetMongoConnection'] as Map).cast<String, dynamic>()),
      targetResourceName: map['targetResourceName'] as String,
    );
  }
}

