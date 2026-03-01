// ignore_for_file: unused_element, unnecessary_cast

import 'pipeline_run_source_properties.dart';
import 'pipeline_run_target_properties.dart';

/// The request properties provided for a pipeline run.
class PipelineRunRequest {
  /// List of source artifacts to be transferred by the pipeline.
  /// Specify an image by repository ('hello-world'). This will use the 'latest' tag.
  /// Specify an image by tag ('hello-world:latest').
  /// Specify an image by sha256-based manifest digest ('hello-world@sha256:abc123').
  final List<String>? artifacts;
  /// The digest of the tar used to transfer the artifacts.
  final String? catalogDigest;
  /// The resource ID of the pipeline to run.
  final String? pipelineResourceId;
  /// The source properties of the pipeline run.
  final PipelineRunSourceProperties? source;
  /// The target properties of the pipeline run.
  final PipelineRunTargetProperties? target;

  /// Creates a new [PipelineRunRequest].
  /// [artifacts] List of source artifacts to be transferred by the pipeline.
  /// [catalogDigest] The digest of the tar used to transfer the artifacts.
  /// [pipelineResourceId] The resource ID of the pipeline to run.
  /// [source] The source properties of the pipeline run.
  /// [target] The target properties of the pipeline run.
  PipelineRunRequest({
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
      'source': ?source == null ? null : source!.toMap(),
      'target': ?target == null ? null : target!.toMap(),
    };
  }

  factory PipelineRunRequest.fromMap(Map<String, dynamic> map) {
    return PipelineRunRequest(
      artifacts: map['artifacts'] == null ? null : (map['artifacts'] as List).cast<String>(),
      catalogDigest: map['catalogDigest'] == null ? null : map['catalogDigest'] as String,
      pipelineResourceId: map['pipelineResourceId'] == null ? null : map['pipelineResourceId'] as String,
      source: map['source'] == null ? null : PipelineRunSourceProperties.fromMap((map['source'] as Map).cast<String, dynamic>()),
      target: map['target'] == null ? null : PipelineRunTargetProperties.fromMap((map['target'] as Map).cast<String, dynamic>()),
    );
  }
}

