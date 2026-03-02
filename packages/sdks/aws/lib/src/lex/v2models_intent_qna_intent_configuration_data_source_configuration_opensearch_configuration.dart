// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_qna_intent_configuration_data_source_configuration_opensearch_configuration_exact_response_fields.dart';

class V2modelsIntentQnaIntentConfigurationDataSourceConfigurationOpensearchConfiguration {
  /// Endpoint of the OpenSearch domain.
  final pulumi.Input<String> domainEndpoint;
  /// Whether to return exact responses from OpenSearch. Defaults to `false`.
  final pulumi.Input<bool>? exactResponse;
  /// Configuration block for exact response fields. See `exact_response_fields`.
  final pulumi.Input<V2modelsIntentQnaIntentConfigurationDataSourceConfigurationOpensearchConfigurationExactResponseFields>? exactResponseFields;
  /// List of fields to include in the response.
  final pulumi.Input<List<String>>? includeFields;
  /// Name of the OpenSearch index.
  final pulumi.Input<String> indexName;

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
    return <String, dynamic>{
      'domainEndpoint': domainEndpoint,
      'exactResponse': ?exactResponse,
      'exactResponseFields': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentQnaIntentConfigurationDataSourceConfigurationOpensearchConfigurationExactResponseFields, Map<String, dynamic>>(exactResponseFields, (value) => value.toMap()),
      'includeFields': ?includeFields,
      'indexName': indexName,
    };
  }

  factory V2modelsIntentQnaIntentConfigurationDataSourceConfigurationOpensearchConfiguration.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentQnaIntentConfigurationDataSourceConfigurationOpensearchConfiguration(
      domainEndpoint: (map['domainEndpoint'] as String).input(),
      exactResponse: map['exactResponse'] == null ? null : (map['exactResponse'] as bool).input(),
      exactResponseFields: map['exactResponseFields'] == null ? null : (V2modelsIntentQnaIntentConfigurationDataSourceConfigurationOpensearchConfigurationExactResponseFields.fromMap((map['exactResponseFields'] as Map).cast<String, dynamic>())).input(),
      includeFields: map['includeFields'] == null ? null : ((map['includeFields'] as List).cast<String>()).input(),
      indexName: (map['indexName'] as String).input(),
    );
  }
}

