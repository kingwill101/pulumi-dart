// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_reference.dart';

/// Pipeline that needs to be triggered with the given parameters.
class TriggerPipelineReference {
  /// Pipeline parameters.
  final pulumi.Input<Map<String, dynamic>>? parameters;
  /// Pipeline reference.
  final pulumi.Input<PipelineReference>? pipelineReference;

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
      'pipelineReference': ?pulumi.Input.mapOptionalInputValue<PipelineReference, Map<String, dynamic>>(pipelineReference, (value) => value.toMap()),
    };
  }

  factory TriggerPipelineReference.fromMap(Map<String, dynamic> map) {
    return TriggerPipelineReference(
      parameters: map['parameters'] == null ? null : ((map['parameters']! as Map).cast<String, dynamic>()).input(),
      pipelineReference: map['pipelineReference'] == null ? null : (PipelineReference.fromMap((map['pipelineReference']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

