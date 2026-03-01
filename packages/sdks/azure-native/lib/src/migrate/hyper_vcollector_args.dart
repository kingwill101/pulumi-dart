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
    pulumi.Output<String>? eTag,
    pulumi.Output<String>? hyperVCollectorName,
    required pulumi.Output<String> projectName,
    pulumi.Output<CollectorProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
  }) :
      eTag = pulumi.Input.asOptionalInput<String>(eTag),
      hyperVCollectorName = pulumi.Input.asOptionalInput<String>(hyperVCollectorName),
      projectName = pulumi.Input.asInput<String>(projectName),
      properties = pulumi.Input.asOptionalInput<CollectorProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      eTag: map['eTag'] == null ? null : pulumi.Output.create<String>(map['eTag'] as String),
      hyperVCollectorName: map['hyperVCollectorName'] == null ? null : pulumi.Output.create<String>(map['hyperVCollectorName'] as String),
      projectName: pulumi.Output.create<String>(map['projectName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<CollectorProperties>(CollectorProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

