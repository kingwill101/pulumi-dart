// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_database_migration_service_replication_instance_args_doc}
/// Arguments for getDatabaseMigrationServiceReplicationInstance.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_database_migration_service_replication_instance_args_doc}
class GetDatabaseMigrationServiceReplicationInstanceArgs {
  /// Name of DatabaseMigrationServiceReplicationInstance
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDatabaseMigrationServiceReplicationInstanceArgs].
  /// [name] Name of DatabaseMigrationServiceReplicationInstance
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetDatabaseMigrationServiceReplicationInstanceArgs({
    required String name,
    required String resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDatabaseMigrationServiceReplicationInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetDatabaseMigrationServiceReplicationInstanceArgs(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

