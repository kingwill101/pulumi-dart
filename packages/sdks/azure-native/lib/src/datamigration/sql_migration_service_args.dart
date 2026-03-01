// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datamigration_sql_migration_service_args_doc}
/// The set of arguments for SqlMigrationService.
/// {@endtemplate}
/// {@macro pulumi_datamigration_sql_migration_service_args_doc}
class SqlMigrationServiceArgs {
  final pulumi.Input<String>? location;
  /// Name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the SQL Migration Service.
  final pulumi.Input<String>? sqlMigrationServiceName;
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SqlMigrationServiceArgs].
  /// [location] Optional.
  /// [resourceGroupName] Name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [sqlMigrationServiceName] Name of the SQL Migration Service.
  /// [tags] Optional.
  SqlMigrationServiceArgs({
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? sqlMigrationServiceName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sqlMigrationServiceName = pulumi.Input.asOptionalInput<String>(sqlMigrationServiceName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'sqlMigrationServiceName': ?sqlMigrationServiceName,
      'tags': ?tags,
    };
  }

  factory SqlMigrationServiceArgs.fromMap(Map<String, dynamic> map) {
    return SqlMigrationServiceArgs(
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sqlMigrationServiceName: map['sqlMigrationServiceName'] == null ? null : pulumi.Output.create<String>(map['sqlMigrationServiceName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

