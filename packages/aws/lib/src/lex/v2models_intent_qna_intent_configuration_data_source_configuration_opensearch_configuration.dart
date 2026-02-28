// ignore_for_file: unused_element, unnecessary_cast

import 'v2models_intent_qna_intent_configuration_data_source_configuration_opensearch_configuration_exact_response_fields.dart';

class V2modelsIntentQnaIntentConfigurationDataSourceConfigurationOpensearchConfiguration {
  /// Endpoint of the OpenSearch domain.
  final String domainEndpoint;

  /// Whether to return exact responses from OpenSearch. Defaults to `false`.
  final bool? exactResponse;

  /// Configuration block for exact response fields. See `exact_response_fields`.
  final V2modelsIntentQnaIntentConfigurationDataSourceConfigurationOpensearchConfigurationExactResponseFields?
      exactResponseFields;

  /// List of fields to include in the response.
  final List<String>? includeFields;

  /// Name of the OpenSearch index.
  final String indexName;

  /// Creates a new [V2modelsIntentQnaIntentConfigurationDataSourceConfigurationOpensearchConfiguration].
  /// [domainEndpoint] Endpoint of the OpenSearch domain.
  /// [exactResponse] Whether to return exact responses from OpenSearch. Defaults to `false`.
  /// [exactResponseFields] Configuration block for exact response fields. See `exact_response_fields`.
  /// [includeFields] List of fields to include in the response.
  /// [indexName] Name of the OpenSearch index.
  V2modelsIntentQnaIntentConfigurationDataSourceConfigurationOpensearchConfiguration({
    required this.domainEndpoint,
    this.exactResponse,
    this.exactResponseFields,
    this.includeFields,
    required this.indexName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['domainEndpoint'] = domainEndpoint;
    final exactResponseValue = exactResponse;
    if (exactResponseValue != null) {
      map['exactResponse'] = exactResponseValue;
    }
    final exactResponseFieldsValue = exactResponseFields;
    if (exactResponseFieldsValue != null) {
      map['exactResponseFields'] = exactResponseFieldsValue.toMap();
    }
    final includeFieldsValue = includeFields;
    if (includeFieldsValue != null) {
      map['includeFields'] = includeFieldsValue;
    }
    map['indexName'] = indexName;
    return map;
  }

  factory V2modelsIntentQnaIntentConfigurationDataSourceConfigurationOpensearchConfiguration.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentQnaIntentConfigurationDataSourceConfigurationOpensearchConfiguration(
      domainEndpoint: map['domainEndpoint'] as String,
      exactResponse:
          map['exactResponse'] == null ? null : map['exactResponse'] as bool,
      exactResponseFields: map['exactResponseFields'] == null
          ? null
          : V2modelsIntentQnaIntentConfigurationDataSourceConfigurationOpensearchConfigurationExactResponseFields
              .fromMap(
                  (map['exactResponseFields'] as Map).cast<String, dynamic>()),
      includeFields: map['includeFields'] == null
          ? null
          : (map['includeFields'] as List).cast<String>(),
      indexName: map['indexName'] as String,
    );
  }
}
