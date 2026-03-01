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
  ExportPipelineArgs({
    pulumi.Output<String>? exportPipelineName,
    pulumi.Output<IdentityProperties>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<List<String>>? options,
    required pulumi.Output<String> registryName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<ExportPipelineTargetProperties> target,
  }) :
      exportPipelineName = pulumi.Input.asOptionalInput<String>(exportPipelineName),
      identity = pulumi.Input.asOptionalInput<IdentityProperties>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      options = pulumi.Input.asOptionalInput<List<String>>(options),
      registryName = pulumi.Input.asInput<String>(registryName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      target = pulumi.Input.asInput<ExportPipelineTargetProperties>(target);

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
      exportPipelineName: map['exportPipelineName'] == null ? null : pulumi.Output.create<String>(map['exportPipelineName'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<IdentityProperties>(IdentityProperties.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      options: map['options'] == null ? null : pulumi.Output.create<List<String>>((map['options'] as List).cast<String>()),
      registryName: pulumi.Output.create<String>(map['registryName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      target: pulumi.Output.create<ExportPipelineTargetProperties>(ExportPipelineTargetProperties.fromMap((map['target'] as Map).cast<String, dynamic>())),
    );
  }
}

