// ignore_for_file: unused_element, unnecessary_cast

import 'domain_aiml_options_natural_language_query_generation_options.dart';
import 'domain_aiml_options_s3_vectors_engine.dart';
import 'domain_aiml_options_serverless_vector_acceleration.dart';

class DomainAimlOptions {
  /// Configuration block for parameters required for natural language query generation on the specified domain.
  final DomainAimlOptionsNaturalLanguageQueryGenerationOptions?
      naturalLanguageQueryGenerationOptions;

  /// Configuration block for parameters required to enable S3 vectors engine features on the specified domain.
  final DomainAimlOptionsS3VectorsEngine? s3VectorsEngine;

  /// Configuration block for parameters required to enable GPU-accelerated vector search on the specified domain.
  final DomainAimlOptionsServerlessVectorAcceleration?
      serverlessVectorAcceleration;

  /// Creates a new [DomainAimlOptions].
  /// [naturalLanguageQueryGenerationOptions] Configuration block for parameters required for natural language query generation on the specified domain.
  /// [s3VectorsEngine] Configuration block for parameters required to enable S3 vectors engine features on the specified domain.
  /// [serverlessVectorAcceleration] Configuration block for parameters required to enable GPU-accelerated vector search on the specified domain.
  DomainAimlOptions({
    this.naturalLanguageQueryGenerationOptions,
    this.s3VectorsEngine,
    this.serverlessVectorAcceleration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final naturalLanguageQueryGenerationOptionsValue =
        naturalLanguageQueryGenerationOptions;
    if (naturalLanguageQueryGenerationOptionsValue != null) {
      map['naturalLanguageQueryGenerationOptions'] =
          naturalLanguageQueryGenerationOptionsValue.toMap();
    }
    final s3VectorsEngineValue = s3VectorsEngine;
    if (s3VectorsEngineValue != null) {
      map['s3VectorsEngine'] = s3VectorsEngineValue.toMap();
    }
    final serverlessVectorAccelerationValue = serverlessVectorAcceleration;
    if (serverlessVectorAccelerationValue != null) {
      map['serverlessVectorAcceleration'] =
          serverlessVectorAccelerationValue.toMap();
    }
    return map;
  }

  factory DomainAimlOptions.fromMap(Map<String, dynamic> map) {
    return DomainAimlOptions(
      naturalLanguageQueryGenerationOptions:
          map['naturalLanguageQueryGenerationOptions'] == null
              ? null
              : DomainAimlOptionsNaturalLanguageQueryGenerationOptions.fromMap(
                  (map['naturalLanguageQueryGenerationOptions'] as Map)
                      .cast<String, dynamic>()),
      s3VectorsEngine: map['s3VectorsEngine'] == null
          ? null
          : DomainAimlOptionsS3VectorsEngine.fromMap(
              (map['s3VectorsEngine'] as Map).cast<String, dynamic>()),
      serverlessVectorAcceleration: map['serverlessVectorAcceleration'] == null
          ? null
          : DomainAimlOptionsServerlessVectorAcceleration.fromMap(
              (map['serverlessVectorAcceleration'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
