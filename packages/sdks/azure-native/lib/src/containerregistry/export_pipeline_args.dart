// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'export_pipeline_target_properties.dart';
import 'identity_properties.dart';

/// {@template pulumi_containerregistry_export_pipeline_args_doc}
/// The set of arguments for ExportPipeline.
/// {@endtemplate}
/// {@macro pulumi_containerregistry_export_pipeline_args_doc}
class ExportPipelineArgs {
  /// The name of the export pipeline.
  final pulumi.Input<String>? exportPipelineName;
  /// The identity of the export pipeline.
  final pulumi.Input<IdentityProperties>? identity;
  /// The location of the export pipeline.
  final pulumi.Input<String>? location;
  /// The list of all options configured for the pipeline.
  final pulumi.Input<List<String>>? options;
  /// The name of the container registry.
  final pulumi.Input<String> registryName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The target properties of the export pipeline.
  final pulumi.Input<ExportPipelineTargetProperties> target;

  /// Creates a new [ExportPipelineArgs].
  /// [exportPipelineName] The name of the export pipeline.
  /// [identity] The identity of the export pipeline.
  /// [location] The location of the export pipeline.
  /// [options] The list of all options configured for the pipeline.
  /// [registryName] The name of the container registry.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [target] The target properties of the export pipeline.
  const ExportPipelineArgs({
    this.exportPipelineName,
    this.identity,
    this.location,
    this.options,
    required this.registryName,
    required this.resourceGroupName,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exportPipelineName': ?exportPipelineName,
      'identity': ?pulumi.Input.mapOptionalInputValue<IdentityProperties, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'options': ?options,
      'registryName': registryName,
      'resourceGroupName': resourceGroupName,
      'target': pulumi.Input.mapInputValue<ExportPipelineTargetProperties, Map<String, dynamic>>(target, (value) => value.toMap()),
    };
  }

  factory ExportPipelineArgs.fromMap(Map<String, dynamic> map) {
    return ExportPipelineArgs(
      exportPipelineName: (() { final guardedValue = map['exportPipelineName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IdentityProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      options: (() { final guardedValue = map['options']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      registryName: pulumi.Input.fromValue(map['registryName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      target: pulumi.Input.fromValue(ExportPipelineTargetProperties.fromMap((map['target']! as Map).cast<String, dynamic>())),
    );
  }
}
