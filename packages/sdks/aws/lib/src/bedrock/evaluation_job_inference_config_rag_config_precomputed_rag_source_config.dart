// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'evaluation_job_inference_config_rag_config_precomputed_rag_source_config_retrieve_and_generate_source_config.dart';
import 'evaluation_job_inference_config_rag_config_precomputed_rag_source_config_retrieve_source_config.dart';

class EvaluationJobInferenceConfigRagConfigPrecomputedRagSourceConfig {
  /// Configuration for retrieval with response generation. See `retrieveAndGenerateSourceConfig` Block below.
  final pulumi.Input<EvaluationJobInferenceConfigRagConfigPrecomputedRagSourceConfigRetrieveAndGenerateSourceConfig?>? retrieveAndGenerateSourceConfig;
  /// Configuration for retrieval only. See `retrieveSourceConfig` Block below.
  final pulumi.Input<EvaluationJobInferenceConfigRagConfigPrecomputedRagSourceConfigRetrieveSourceConfig?>? retrieveSourceConfig;

  /// Creates a new [EvaluationJobInferenceConfigRagConfigPrecomputedRagSourceConfig].
  /// [retrieveAndGenerateSourceConfig] Configuration for retrieval with response generation. See `retrieveAndGenerateSourceConfig` Block below.
  /// [retrieveSourceConfig] Configuration for retrieval only. See `retrieveSourceConfig` Block below.
  const EvaluationJobInferenceConfigRagConfigPrecomputedRagSourceConfig({
    this.retrieveAndGenerateSourceConfig,
    this.retrieveSourceConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retrieveAndGenerateSourceConfig': ?pulumi.Input.mapOptionalInputValue<EvaluationJobInferenceConfigRagConfigPrecomputedRagSourceConfigRetrieveAndGenerateSourceConfig, Map<String, dynamic>>(retrieveAndGenerateSourceConfig, (value) => value.toMap()),
      'retrieveSourceConfig': ?pulumi.Input.mapOptionalInputValue<EvaluationJobInferenceConfigRagConfigPrecomputedRagSourceConfigRetrieveSourceConfig, Map<String, dynamic>>(retrieveSourceConfig, (value) => value.toMap()),
    };
  }

  factory EvaluationJobInferenceConfigRagConfigPrecomputedRagSourceConfig.fromMap(Map<String, dynamic> map) {
    return EvaluationJobInferenceConfigRagConfigPrecomputedRagSourceConfig(
      retrieveAndGenerateSourceConfig: (() { final guardedValue = map['retrieveAndGenerateSourceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EvaluationJobInferenceConfigRagConfigPrecomputedRagSourceConfigRetrieveAndGenerateSourceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      retrieveSourceConfig: (() { final guardedValue = map['retrieveSourceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EvaluationJobInferenceConfigRagConfigPrecomputedRagSourceConfigRetrieveSourceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
