// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_migrate_get_migrate_project_args_doc}
/// Arguments for getMigrateProject.
/// {@endtemplate}
/// {@macro pulumi_migrate_get_migrate_project_args_doc}
class GetMigrateProjectArgs {
  /// Name of the Azure Migrate project.
  final pulumi.Input<String> migrateProjectName;
  /// Name of the Azure Resource Group that migrate project is part of.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetMigrateProjectArgs].
  /// [migrateProjectName] Name of the Azure Migrate project.
  /// [resourceGroupName] Name of the Azure Resource Group that migrate project is part of.
  const GetMigrateProjectArgs({
    required this.migrateProjectName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'migrateProjectName': migrateProjectName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetMigrateProjectArgs.fromMap(Map<String, dynamic> map) {
    return GetMigrateProjectArgs(
      migrateProjectName: pulumi.Input.fromValue(map['migrateProjectName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

