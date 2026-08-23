// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EvaluationJobInferenceConfigRagConfigPrecomputedRagSourceConfigRetrieveAndGenerateSourceConfig {
  /// Label that identifies the precomputed RAG source.
  final pulumi.Input<String> ragSourceIdentifier;

  /// Creates a new [EvaluationJobInferenceConfigRagConfigPrecomputedRagSourceConfigRetrieveAndGenerateSourceConfig].
  /// [ragSourceIdentifier] Label that identifies the precomputed RAG source.
  const EvaluationJobInferenceConfigRagConfigPrecomputedRagSourceConfigRetrieveAndGenerateSourceConfig({
    required this.ragSourceIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ragSourceIdentifier': ragSourceIdentifier,
    };
  }

  factory EvaluationJobInferenceConfigRagConfigPrecomputedRagSourceConfigRetrieveAndGenerateSourceConfig.fromMap(Map<String, dynamic> map) {
    return EvaluationJobInferenceConfigRagConfigPrecomputedRagSourceConfigRetrieveAndGenerateSourceConfig(
      ragSourceIdentifier: pulumi.Input.fromValue(map['ragSourceIdentifier'] as String),
    );
  }
}
