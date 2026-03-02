// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'solution_properties.dart';

/// {@template pulumi_migrate_solution_args_doc}
/// The set of arguments for Solution.
/// {@endtemplate}
/// {@macro pulumi_migrate_solution_args_doc}
class SolutionArgs {
  /// Name of the Azure Migrate project.
  final pulumi.Input<String> migrateProjectName;
  /// Gets or sets the properties of the solution.
  final pulumi.Input<SolutionProperties>? properties;
  /// Name of the Azure Resource Group that migrate project is part of.
  final pulumi.Input<String> resourceGroupName;
  /// Unique name of a migration solution within a migrate project.
  final pulumi.Input<String>? solutionName;

  /// Creates a new [SolutionArgs].
  /// [migrateProjectName] Name of the Azure Migrate project.
  /// [properties] Gets or sets the properties of the solution.
  /// [resourceGroupName] Name of the Azure Resource Group that migrate project is part of.
  /// [solutionName] Unique name of a migration solution within a migrate project.
  SolutionArgs({
    required this.migrateProjectName,
    this.properties,
    required this.resourceGroupName,
    this.solutionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'migrateProjectName': migrateProjectName,
      'properties': ?pulumi.Input.mapOptionalInputValue<SolutionProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'solutionName': ?solutionName,
    };
  }

  factory SolutionArgs.fromMap(Map<String, dynamic> map) {
    return SolutionArgs(
      migrateProjectName: (map['migrateProjectName'] as String).input(),
      properties: map['properties'] == null ? null : (SolutionProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      solutionName: map['solutionName'] == null ? null : (map['solutionName']! as String).input(),
    );
  }
}

