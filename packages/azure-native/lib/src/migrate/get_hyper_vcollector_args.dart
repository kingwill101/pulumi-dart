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
  GetHyperVCollectorArgs({
    required String hyperVCollectorName,
    required String projectName,
    required String resourceGroupName,
  }) :
      hyperVCollectorName = pulumi.Input.asInput<String>(hyperVCollectorName),
      projectName = pulumi.Input.asInput<String>(projectName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hyperVCollectorName': hyperVCollectorName,
      'projectName': projectName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetHyperVCollectorArgs.fromMap(Map<String, dynamic> map) {
    return GetHyperVCollectorArgs(
      hyperVCollectorName: map['hyperVCollectorName'] as String,
      projectName: map['projectName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

