// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_migrate_get_solution_args_doc}
/// Arguments for getSolution.
/// {@endtemplate}
/// {@macro pulumi_migrate_get_solution_args_doc}
class GetSolutionArgs {
  /// Name of the Azure Migrate project.
  final pulumi.Input<String> migrateProjectName;
  /// Name of the Azure Resource Group that migrate project is part of.
  final pulumi.Input<String> resourceGroupName;
  /// Unique name of a migration solution within a migrate project.
  final pulumi.Input<String> solutionName;

  /// Creates a new [GetSolutionArgs].
  /// [migrateProjectName] Name of the Azure Migrate project.
  /// [resourceGroupName] Name of the Azure Resource Group that migrate project is part of.
  /// [solutionName] Unique name of a migration solution within a migrate project.
  GetSolutionArgs({
    required pulumi.Output<String> migrateProjectName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> solutionName,
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

  factory GetSolutionArgs.fromMap(Map<String, dynamic> map) {
    return GetSolutionArgs(
      migrateProjectName: pulumi.Output.create<String>(map['migrateProjectName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      solutionName: pulumi.Output.create<String>(map['solutionName'] as String),
    );
  }
}

