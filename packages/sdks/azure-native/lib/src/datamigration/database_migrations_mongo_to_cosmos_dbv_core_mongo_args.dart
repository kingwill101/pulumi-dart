// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mongo_connection_information.dart';
import 'mongo_migration_collection.dart';

/// {@template pulumi_datamigration_database_migrations_mongo_to_cosmos_dbv_core_mongo_args_doc}
/// The set of arguments for DatabaseMigrationsMongoToCosmosDbvCoreMongo.
/// {@endtemplate}
/// {@macro pulumi_datamigration_database_migrations_mongo_to_cosmos_dbv_core_mongo_args_doc}
class DatabaseMigrationsMongoToCosmosDbvCoreMongoArgs {
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

  /// Creates a new [DatabaseMigrationsMongoToCosmosDbvCoreMongoArgs].
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
  DatabaseMigrationsMongoToCosmosDbvCoreMongoArgs({
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

  factory DatabaseMigrationsMongoToCosmosDbvCoreMongoArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseMigrationsMongoToCosmosDbvCoreMongoArgs(
      collectionList: map['collectionList'] == null ? null : (pulumi.Input.decodeList<MongoMigrationCollection>(map['collectionList']!, (value) => MongoMigrationCollection.fromMap((value as Map).cast<String, dynamic>()))).input(),
      kind: (map['kind'] as String).input(),
      migrationName: map['migrationName'] == null ? null : (map['migrationName']! as String).input(),
      migrationOperationId: map['migrationOperationId'] == null ? null : (map['migrationOperationId']! as String).input(),
      migrationService: map['migrationService'] == null ? null : (map['migrationService']! as String).input(),
      provisioningError: map['provisioningError'] == null ? null : (map['provisioningError']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      scope: map['scope'] == null ? null : (map['scope']! as String).input(),
      sourceMongoConnection: map['sourceMongoConnection'] == null ? null : (MongoConnectionInformation.fromMap((map['sourceMongoConnection']! as Map).cast<String, dynamic>())).input(),
      targetMongoConnection: map['targetMongoConnection'] == null ? null : (MongoConnectionInformation.fromMap((map['targetMongoConnection']! as Map).cast<String, dynamic>())).input(),
      targetResourceName: (map['targetResourceName'] as String).input(),
    );
  }
}

