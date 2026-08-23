// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EvaluationJobInferenceConfigRagConfigPrecomputedRagSourceConfigRetrieveSourceConfig {
  /// Label that identifies the precomputed RAG source.
  final pulumi.Input<String> ragSourceIdentifier;

  /// Creates a new [EvaluationJobInferenceConfigRagConfigPrecomputedRagSourceConfigRetrieveSourceConfig].
  /// [ragSourceIdentifier] Label that identifies the precomputed RAG source.
  const EvaluationJobInferenceConfigRagConfigPrecomputedRagSourceConfigRetrieveSourceConfig({
    required this.ragSourceIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ragSourceIdentifier': ragSourceIdentifier,
    };
  }

  factory EvaluationJobInferenceConfigRagConfigPrecomputedRagSourceConfigRetrieveSourceConfig.fromMap(Map<String, dynamic> map) {
    return EvaluationJobInferenceConfigRagConfigPrecomputedRagSourceConfigRetrieveSourceConfig(
      ragSourceIdentifier: pulumi.Input.fromValue(map['ragSourceIdentifier'] as String),
    );
  }
}
