// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_migrate_get_hyper_vcollector_args_doc}
/// Arguments for getHyperVCollector.
/// {@endtemplate}
/// {@macro pulumi_migrate_get_hyper_vcollector_args_doc}
class GetHyperVCollectorArgs {
  /// Unique name of a Hyper-V collector within a project.
  final pulumi.Input<String> hyperVCollectorName;
  /// Name of the Azure Migrate project.
  final pulumi.Input<String> projectName;
  /// Name of the Azure Resource Group that project is part of.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetHyperVCollectorArgs].
  /// [hyperVCollectorName] Unique name of a Hyper-V collector within a project.
  /// [projectName] Name of the Azure Migrate project.
  /// [resourceGroupName] Name of the Azure Resource Group that project is part of.
  const GetHyperVCollectorArgs({
    required this.hyperVCollectorName,
    required this.projectName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hyperVCollectorName': hyperVCollectorName,
      'projectName': projectName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetHyperVCollectorArgs.fromMap(Map<String, dynamic> map) {
    return GetHyperVCollectorArgs(
      hyperVCollectorName: pulumi.Input.fromValue(map['hyperVCollectorName'] as String),
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
