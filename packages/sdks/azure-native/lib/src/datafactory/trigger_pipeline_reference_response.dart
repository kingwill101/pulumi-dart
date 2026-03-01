// ignore_for_file: unused_element, unnecessary_cast

import 'pipeline_reference_response.dart';

/// Pipeline that needs to be triggered with the given parameters.
class TriggerPipelineReferenceResponse {
  /// Pipeline parameters.
  final Map<String, dynamic>? parameters;
  /// Pipeline reference.
  final PipelineReferenceResponse? pipelineReference;

  /// Creates a new [TriggerPipelineReferenceResponse].
  /// [parameters] Pipeline parameters.
  /// [pipelineReference] Pipeline reference.
  TriggerPipelineReferenceResponse({
    this.parameters,
    this.pipelineReference,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameters': ?parameters,
      'pipelineReference': ?pipelineReference == null ? null : pipelineReference!.toMap(),
    };
  }

  factory TriggerPipelineReferenceResponse.fromMap(Map<String, dynamic> map) {
    return TriggerPipelineReferenceResponse(
      parameters: map['parameters'] == null ? null : (map['parameters'] as Map).cast<String, dynamic>(),
      pipelineReference: map['pipelineReference'] == null ? null : PipelineReferenceResponse.fromMap((map['pipelineReference'] as Map).cast<String, dynamic>()),
    );
  }
}

