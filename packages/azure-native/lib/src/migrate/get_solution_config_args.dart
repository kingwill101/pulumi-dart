// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_migrate_get_solution_config_args_doc}
/// Arguments for getSolutionConfig.
/// {@endtemplate}
/// {@macro pulumi_migrate_get_solution_config_args_doc}
class GetSolutionConfigArgs {
  /// Name of the Azure Migrate project.
  final pulumi.Input<String> migrateProjectName;
  /// Name of the Azure Resource Group that migrate project is part of.
  final pulumi.Input<String> resourceGroupName;
  /// Unique name of a migration solution within a migrate project.
  final pulumi.Input<String> solutionName;

  /// Creates a new [GetSolutionConfigArgs].
  /// [migrateProjectName] Name of the Azure Migrate project.
  /// [resourceGroupName] Name of the Azure Resource Group that migrate project is part of.
  /// [solutionName] Unique name of a migration solution within a migrate project.
  GetSolutionConfigArgs({
    required String migrateProjectName,
    required String resourceGroupName,
    required String solutionName,
  }) :
      migrateProjectName = pulumi.Input.asInput<String>(migrateProjectName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      solutionName = pulumi.Input.asInput<String>(solutionName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'migrateProjectName': migrateProjectName,
      'resourceGroupName': resourceGroupName,
      'solutionName': solutionName,
    };
  }

  factory GetSolutionConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetSolutionConfigArgs(
      migrateProjectName: map['migrateProjectName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      solutionName: map['solutionName'] as String,
    );
  }
}

