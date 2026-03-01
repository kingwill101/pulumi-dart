// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datamigration_get_database_migrations_mongo_to_cosmos_db_rumongo_args_doc}
/// Arguments for getDatabaseMigrationsMongoToCosmosDbRUMongo.
/// {@endtemplate}
/// {@macro pulumi_datamigration_get_database_migrations_mongo_to_cosmos_db_rumongo_args_doc}
class GetDatabaseMigrationsMongoToCosmosDbRUMongoArgs {
  /// Name of the migration.
  final pulumi.Input<String> migrationName;
  /// Name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the target resource/account.
  final pulumi.Input<String> targetResourceName;

  /// Creates a new [GetDatabaseMigrationsMongoToCosmosDbRUMongoArgs].
  /// [migrationName] Name of the migration.
  /// [resourceGroupName] Name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [targetResourceName] The name of the target resource/account.
  GetDatabaseMigrationsMongoToCosmosDbRUMongoArgs({
    required pulumi.Output<String> migrationName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> targetResourceName,
  }) :
      migrationName = pulumi.Input.asInput<String>(migrationName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      targetResourceName = pulumi.Input.asInput<String>(targetResourceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'migrationName': migrationName,
      'resourceGroupName': resourceGroupName,
      'targetResourceName': targetResourceName,
    };
  }

  factory GetDatabaseMigrationsMongoToCosmosDbRUMongoArgs.fromMap(Map<String, dynamic> map) {
    return GetDatabaseMigrationsMongoToCosmosDbRUMongoArgs(
      migrationName: pulumi.Output.create<String>(map['migrationName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      targetResourceName: pulumi.Output.create<String>(map['targetResourceName'] as String),
    );
  }
}

