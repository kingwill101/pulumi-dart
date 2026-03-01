// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datamigration_migration_service_args_doc}
/// The set of arguments for MigrationService.
/// {@endtemplate}
/// {@macro pulumi_datamigration_migration_service_args_doc}
class MigrationServiceArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Name of the Migration Service.
  final pulumi.Input<String>? migrationServiceName;
  /// Name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [MigrationServiceArgs].
  /// [location] The geo-location where the resource lives
  /// [migrationServiceName] Name of the Migration Service.
  /// [resourceGroupName] Name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [tags] Resource tags.
  MigrationServiceArgs({
    String? location,
    String? migrationServiceName,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      migrationServiceName = pulumi.Input.asOptionalInput<String>(migrationServiceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'migrationServiceName': ?migrationServiceName,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory MigrationServiceArgs.fromMap(Map<String, dynamic> map) {
    return MigrationServiceArgs(
      location: map['location'] == null ? null : map['location'] as String,
      migrationServiceName: map['migrationServiceName'] == null ? null : map['migrationServiceName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

