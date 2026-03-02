// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_reference_response.dart';

/// Pipeline that needs to be triggered with the given parameters.
class TriggerPipelineReferenceResponse {
  /// Pipeline parameters.
  final pulumi.Input<Map<String, dynamic>>? parameters;
  /// Pipeline reference.
  final pulumi.Input<PipelineReferenceResponse>? pipelineReference;

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
      'pipelineReference': ?pulumi.Input.mapOptionalInputValue<PipelineReferenceResponse, Map<String, dynamic>>(pipelineReference, (value) => value.toMap()),
    };
  }

  factory TriggerPipelineReferenceResponse.fromMap(Map<String, dynamic> map) {
    return TriggerPipelineReferenceResponse(
      parameters: map['parameters'] == null ? null : ((map['parameters']! as Map).cast<String, dynamic>()).input(),
      pipelineReference: map['pipelineReference'] == null ? null : (PipelineReferenceResponse.fromMap((map['pipelineReference']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

