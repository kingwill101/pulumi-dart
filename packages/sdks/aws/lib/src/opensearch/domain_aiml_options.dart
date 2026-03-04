// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_aiml_options_natural_language_query_generation_options.dart';
import 'domain_aiml_options_s3_vectors_engine.dart';
import 'domain_aiml_options_serverless_vector_acceleration.dart';

class DomainAimlOptions {
  /// Configuration block for parameters required for natural language query generation on the specified domain.
  final pulumi.Input<DomainAimlOptionsNaturalLanguageQueryGenerationOptions>?
  naturalLanguageQueryGenerationOptions;

  /// Configuration block for parameters required to enable S3 vectors engine features on the specified domain.
  final pulumi.Input<DomainAimlOptionsS3VectorsEngine>? s3VectorsEngine;

  /// Configuration block for parameters required to enable GPU-accelerated vector search on the specified domain.
  final pulumi.Input<DomainAimlOptionsServerlessVectorAcceleration>?
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
    return <String, dynamic>{
      'naturalLanguageQueryGenerationOptions':
          ?pulumi.Input.mapOptionalInputValue<
            DomainAimlOptionsNaturalLanguageQueryGenerationOptions,
            Map<String, dynamic>
          >(naturalLanguageQueryGenerationOptions, (value) => value.toMap()),
      's3VectorsEngine':
          ?pulumi.Input.mapOptionalInputValue<
            DomainAimlOptionsS3VectorsEngine,
            Map<String, dynamic>
          >(s3VectorsEngine, (value) => value.toMap()),
      'serverlessVectorAcceleration':
          ?pulumi.Input.mapOptionalInputValue<
            DomainAimlOptionsServerlessVectorAcceleration,
            Map<String, dynamic>
          >(serverlessVectorAcceleration, (value) => value.toMap()),
    };
  }

  factory DomainAimlOptions.fromMap(Map<String, dynamic> map) {
    return DomainAimlOptions(
      naturalLanguageQueryGenerationOptions: (() {
        final guardedValue = map['naturalLanguageQueryGenerationOptions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainAimlOptionsNaturalLanguageQueryGenerationOptions.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      s3VectorsEngine: (() {
        final guardedValue = map['s3VectorsEngine'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainAimlOptionsS3VectorsEngine.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      serverlessVectorAcceleration: (() {
        final guardedValue = map['serverlessVectorAcceleration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainAimlOptionsServerlessVectorAcceleration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
