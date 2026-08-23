// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_run_source_properties.dart';
import 'pipeline_run_target_properties.dart';

/// The request properties provided for a pipeline run.
class PipelineRunRequest {
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
  final pulumi.Input<PipelineRunSourceProperties>? source;
  /// The target properties of the pipeline run.
  final pulumi.Input<PipelineRunTargetProperties>? target;

  /// Creates a new [PipelineRunRequest].
  /// [artifacts] List of source artifacts to be transferred by the pipeline.
  /// [catalogDigest] The digest of the tar used to transfer the artifacts.
  /// [pipelineResourceId] The resource ID of the pipeline to run.
  /// [source] The source properties of the pipeline run.
  /// [target] The target properties of the pipeline run.
  const PipelineRunRequest({
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
      'source': ?pulumi.Input.mapOptionalInputValue<PipelineRunSourceProperties, Map<String, dynamic>>(source, (value) => value.toMap()),
      'target': ?pulumi.Input.mapOptionalInputValue<PipelineRunTargetProperties, Map<String, dynamic>>(target, (value) => value.toMap()),
    };
  }

  factory PipelineRunRequest.fromMap(Map<String, dynamic> map) {
    return PipelineRunRequest(
      artifacts: (() { final guardedValue = map['artifacts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      catalogDigest: (() { final guardedValue = map['catalogDigest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pipelineResourceId: (() { final guardedValue = map['pipelineResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipelineRunSourceProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipelineRunTargetProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
