// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_migrate_get_migrate_projects_controller_migrate_project_args_doc}
/// Arguments for getMigrateProjectsControllerMigrateProject.
/// {@endtemplate}
/// {@macro pulumi_migrate_get_migrate_projects_controller_migrate_project_args_doc}
class GetMigrateProjectsControllerMigrateProjectArgs {
  /// Migrate project name.
  final pulumi.Input<String> migrateProjectName;
  /// Name of the Azure Resource Group that project is part of.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetMigrateProjectsControllerMigrateProjectArgs].
  /// [migrateProjectName] Migrate project name.
  /// [resourceGroupName] Name of the Azure Resource Group that project is part of.
  GetMigrateProjectsControllerMigrateProjectArgs({
    required pulumi.Output<String> migrateProjectName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      migrateProjectName = pulumi.Input.asInput<String>(migrateProjectName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'migrateProjectName': migrateProjectName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetMigrateProjectsControllerMigrateProjectArgs.fromMap(Map<String, dynamic> map) {
    return GetMigrateProjectsControllerMigrateProjectArgs(
      migrateProjectName: pulumi.Output.create<String>(map['migrateProjectName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

