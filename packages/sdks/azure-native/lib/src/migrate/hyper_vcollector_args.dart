// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'collector_properties.dart';

/// {@template pulumi_migrate_hyper_vcollector_args_doc}
/// The set of arguments for HyperVCollector.
/// {@endtemplate}
/// {@macro pulumi_migrate_hyper_vcollector_args_doc}
class HyperVCollectorArgs {
  final pulumi.Input<String>? eTag;
  /// Unique name of a Hyper-V collector within a project.
  final pulumi.Input<String>? hyperVCollectorName;
  /// Name of the Azure Migrate project.
  final pulumi.Input<String> projectName;
  final pulumi.Input<CollectorProperties>? properties;
  /// Name of the Azure Resource Group that project is part of.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [HyperVCollectorArgs].
  /// [eTag] Optional.
  /// [hyperVCollectorName] Unique name of a Hyper-V collector within a project.
  /// [projectName] Name of the Azure Migrate project.
  /// [properties] Optional.
  /// [resourceGroupName] Name of the Azure Resource Group that project is part of.
  HyperVCollectorArgs({
    this.eTag,
    this.hyperVCollectorName,
    required this.projectName,
    this.properties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eTag': ?eTag,
      'hyperVCollectorName': ?hyperVCollectorName,
      'projectName': projectName,
      'properties': ?pulumi.Input.mapOptionalInputValue<CollectorProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory HyperVCollectorArgs.fromMap(Map<String, dynamic> map) {
    return HyperVCollectorArgs(
      eTag: map['eTag'] == null ? null : (map['eTag'] as String).input(),
      hyperVCollectorName: map['hyperVCollectorName'] == null ? null : (map['hyperVCollectorName'] as String).input(),
      projectName: (map['projectName'] as String).input(),
      properties: map['properties'] == null ? null : (CollectorProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

