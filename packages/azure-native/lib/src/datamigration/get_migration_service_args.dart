// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datamigration_get_migration_service_args_doc}
/// Arguments for getMigrationService.
/// {@endtemplate}
/// {@macro pulumi_datamigration_get_migration_service_args_doc}
class GetMigrationServiceArgs {
  /// Name of the Migration Service.
  final pulumi.Input<String> migrationServiceName;
  /// Name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetMigrationServiceArgs].
  /// [migrationServiceName] Name of the Migration Service.
  /// [resourceGroupName] Name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  GetMigrationServiceArgs({
    required String migrationServiceName,
    required String resourceGroupName,
  }) :
      migrationServiceName = pulumi.Input.asInput<String>(migrationServiceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'migrationServiceName': migrationServiceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetMigrationServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetMigrationServiceArgs(
      migrationServiceName: map['migrationServiceName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

