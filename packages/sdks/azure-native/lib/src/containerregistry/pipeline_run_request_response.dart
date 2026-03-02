// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_run_source_properties_response.dart';
import 'pipeline_run_target_properties_response.dart';

/// The request properties provided for a pipeline run.
class PipelineRunRequestResponse {
  /// List of source artifacts to be transferred by the pipeline.
  /// Specify an image by repository ('hello-world'). This will use the 'latest' tag.
  /// Specify an image by tag ('hello-world:latest').
  /// Specify an image by sha256-based manifest digest ('hello-world@sha256:abc123').
  final pulumi.Input<List<String>>? artifacts;
  /// The digest of the tar used to transfer the artifacts.
  final pulumi.Input<String>? catalogDigest;
  /// The resource ID of the pipeline to run.
  final pulumi.Input<String>? pipelineResourceId;
  /// The source properties of the pipeline run.
  final pulumi.Input<PipelineRunSourcePropertiesResponse>? source;
  /// The target properties of the pipeline run.
  final pulumi.Input<PipelineRunTargetPropertiesResponse>? target;

  /// Creates a new [PipelineRunRequestResponse].
  /// [artifacts] List of source artifacts to be transferred by the pipeline.
  /// [catalogDigest] The digest of the tar used to transfer the artifacts.
  /// [pipelineResourceId] The resource ID of the pipeline to run.
  /// [source] The source properties of the pipeline run.
  /// [target] The target properties of the pipeline run.
  PipelineRunRequestResponse({
    this.artifacts,
    this.catalogDigest,
    this.pipelineResourceId,
    this.source,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifacts': ?artifacts,
      'catalogDigest': ?catalogDigest,
      'pipelineResourceId': ?pipelineResourceId,
      'source': ?pulumi.Input.mapOptionalInputValue<PipelineRunSourcePropertiesResponse, Map<String, dynamic>>(source, (value) => value.toMap()),
      'target': ?pulumi.Input.mapOptionalInputValue<PipelineRunTargetPropertiesResponse, Map<String, dynamic>>(target, (value) => value.toMap()),
    };
  }

  factory PipelineRunRequestResponse.fromMap(Map<String, dynamic> map) {
    return PipelineRunRequestResponse(
      artifacts: map['artifacts'] == null ? null : ((map['artifacts']! as List).cast<String>()).input(),
      catalogDigest: map['catalogDigest'] == null ? null : (map['catalogDigest']! as String).input(),
      pipelineResourceId: map['pipelineResourceId'] == null ? null : (map['pipelineResourceId']! as String).input(),
      source: map['source'] == null ? null : (PipelineRunSourcePropertiesResponse.fromMap((map['source']! as Map).cast<String, dynamic>())).input(),
      target: map['target'] == null ? null : (PipelineRunTargetPropertiesResponse.fromMap((map['target']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

