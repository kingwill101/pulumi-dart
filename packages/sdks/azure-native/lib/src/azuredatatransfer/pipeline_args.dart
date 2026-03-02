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
    this.location,
    this.pipelineName,
    this.properties,
    required this.resourceGroupName,
    this.tags,
  });

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
      location: map['location'] == null ? null : (map['location']! as String).input(),
      pipelineName: map['pipelineName'] == null ? null : (map['pipelineName']! as String).input(),
      properties: map['properties'] == null ? null : (PipelineProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

