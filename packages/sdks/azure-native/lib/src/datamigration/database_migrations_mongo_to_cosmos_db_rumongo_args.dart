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
  const DatabaseMigrationsMongoToCosmosDbRUMongoArgs({
    this.collectionList,
    required this.kind,
    this.migrationName,
    this.migrationOperationId,
    this.migrationService,
    this.provisioningError,
    required this.resourceGroupName,
    this.scope,
    this.sourceMongoConnection,
    this.targetMongoConnection,
    required this.targetResourceName,
  });

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
      collectionList: (() { final guardedValue = map['collectionList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MongoMigrationCollection>(guardedValue, (value) => MongoMigrationCollection.fromMap((value as Map).cast<String, dynamic>()))); })(),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      migrationName: (() { final guardedValue = map['migrationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      migrationOperationId: (() { final guardedValue = map['migrationOperationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      migrationService: (() { final guardedValue = map['migrationService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningError: (() { final guardedValue = map['provisioningError']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceMongoConnection: (() { final guardedValue = map['sourceMongoConnection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MongoConnectionInformation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      targetMongoConnection: (() { final guardedValue = map['targetMongoConnection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MongoConnectionInformation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      targetResourceName: pulumi.Input.fromValue(map['targetResourceName'] as String),
    );
  }
}
