// ignore_for_file: unused_element, unnecessary_cast

import 'pipeline_reference.dart';

/// Pipeline that needs to be triggered with the given parameters.
class TriggerPipelineReference {
  /// Pipeline parameters.
  final Map<String, dynamic>? parameters;
  /// Pipeline reference.
  final PipelineReference? pipelineReference;

  /// Creates a new [TriggerPipelineReference].
  /// [parameters] Pipeline parameters.
  /// [pipelineReference] Pipeline reference.
  TriggerPipelineReference({
    this.parameters,
    this.pipelineReference,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameters': ?parameters,
      'pipelineReference': ?pipelineReference == null ? null : pipelineReference!.toMap(),
    };
  }

  factory TriggerPipelineReference.fromMap(Map<String, dynamic> map) {
    return TriggerPipelineReference(
      parameters: map['parameters'] == null ? null : (map['parameters'] as Map).cast<String, dynamic>(),
      pipelineReference: map['pipelineReference'] == null ? null : PipelineReference.fromMap((map['pipelineReference'] as Map).cast<String, dynamic>()),
    );
  }
}

