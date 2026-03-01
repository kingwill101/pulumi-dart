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
    required pulumi.Output<String> migrateProjectName,
    pulumi.Output<SolutionProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? solutionName,
  }) :
      migrateProjectName = pulumi.Input.asInput<String>(migrateProjectName),
      properties = pulumi.Input.asOptionalInput<SolutionProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      solutionName = pulumi.Input.asOptionalInput<String>(solutionName);

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
      migrateProjectName: pulumi.Output.create<String>(map['migrateProjectName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<SolutionProperties>(SolutionProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      solutionName: map['solutionName'] == null ? null : pulumi.Output.create<String>(map['solutionName'] as String),
    );
  }
}

