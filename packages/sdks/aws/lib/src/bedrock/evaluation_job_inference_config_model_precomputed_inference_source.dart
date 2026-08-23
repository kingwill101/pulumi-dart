// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EvaluationJobInferenceConfigModelPrecomputedInferenceSource {
  /// Label that identifies the precomputed inference source.
  final pulumi.Input<String> inferenceSourceIdentifier;

  /// Creates a new [EvaluationJobInferenceConfigModelPrecomputedInferenceSource].
  /// [inferenceSourceIdentifier] Label that identifies the precomputed inference source.
  const EvaluationJobInferenceConfigModelPrecomputedInferenceSource({
    required this.inferenceSourceIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inferenceSourceIdentifier': inferenceSourceIdentifier,
    };
  }

  factory EvaluationJobInferenceConfigModelPrecomputedInferenceSource.fromMap(Map<String, dynamic> map) {
    return EvaluationJobInferenceConfigModelPrecomputedInferenceSource(
      inferenceSourceIdentifier: pulumi.Input.fromValue(map['inferenceSourceIdentifier'] as String),
    );
  }
}
