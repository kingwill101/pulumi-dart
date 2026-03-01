// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_properties.dart';

/// {@template pulumi_azuredatatransfer_pipeline_args_doc}
/// The set of arguments for Pipeline.
/// {@endtemplate}
/// {@macro pulumi_azuredatatransfer_pipeline_args_doc}
class PipelineArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name for the pipeline that is to be requested.
  final pulumi.Input<String>? pipelineName;
  /// Properties of pipeline
  final pulumi.Input<PipelineProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [PipelineArgs].
  /// [location] The geo-location where the resource lives
  /// [pipelineName] The name for the pipeline that is to be requested.
  /// [properties] Properties of pipeline
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  PipelineArgs({
    pulumi.Output<String>? location,
    pulumi.Output<String>? pipelineName,
    pulumi.Output<PipelineProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      pipelineName = pulumi.Input.asOptionalInput<String>(pipelineName),
      properties = pulumi.Input.asOptionalInput<PipelineProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'pipelineName': ?pipelineName,
      'properties': ?pulumi.Input.mapOptionalInputValue<PipelineProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory PipelineArgs.fromMap(Map<String, dynamic> map) {
    return PipelineArgs(
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      pipelineName: map['pipelineName'] == null ? null : pulumi.Output.create<String>(map['pipelineName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<PipelineProperties>(PipelineProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

