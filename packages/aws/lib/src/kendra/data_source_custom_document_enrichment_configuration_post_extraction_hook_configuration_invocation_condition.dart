// ignore_for_file: unused_element, unnecessary_cast

import 'data_source_custom_document_enrichment_configuration_post_extraction_hook_configuration_invocation_condition_condition_on_value.dart';

class DataSourceCustomDocumentEnrichmentConfigurationPostExtractionHookConfigurationInvocationCondition {
  /// The identifier of the document attribute used for the condition. For example, `_source_uri` could be an identifier for the attribute or metadata field that contains source URIs associated with the documents. Amazon Kendra currently does not support `_document_body` as an attribute key used for the condition.
  final String conditionDocumentAttributeKey;

  /// The value used by the operator. For example, you can specify the value 'financial' for strings in the `_source_uri` field that partially match or contain this value. See condition_on_value.
  final DataSourceCustomDocumentEnrichmentConfigurationPostExtractionHookConfigurationInvocationConditionConditionOnValue?
      conditionOnValue;

  /// The condition operator. For example, you can use `Contains` to partially match a string. Valid Values: `GreaterThan` | `GreaterThanOrEquals` | `LessThan` | `LessThanOrEquals` | `Equals` | `NotEquals` | `Contains` | `NotContains` | `Exists` | `NotExists` | `BeginsWith`.
  final String operator;

  /// Creates a new [DataSourceCustomDocumentEnrichmentConfigurationPostExtractionHookConfigurationInvocationCondition].
  /// [conditionDocumentAttributeKey] The identifier of the document attribute used for the condition. For example, `_source_uri` could be an identifier for the attribute or metadata field that contains source URIs associated with the documents. Amazon Kendra currently does not support `_document_body` as an attribute key used for the condition.
  /// [conditionOnValue] The value used by the operator. For example, you can specify the value 'financial' for strings in the `_source_uri` field that partially match or contain this value. See condition_on_value.
  /// [operator] The condition operator. For example, you can use `Contains` to partially match a string. Valid Values: `GreaterThan` | `GreaterThanOrEquals` | `LessThan` | `LessThanOrEquals` | `Equals` | `NotEquals` | `Contains` | `NotContains` | `Exists` | `NotExists` | `BeginsWith`.
  DataSourceCustomDocumentEnrichmentConfigurationPostExtractionHookConfigurationInvocationCondition({
    required this.conditionDocumentAttributeKey,
    this.conditionOnValue,
    required this.operator,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['conditionDocumentAttributeKey'] = conditionDocumentAttributeKey;
    final conditionOnValueValue = conditionOnValue;
    if (conditionOnValueValue != null) {
      map['conditionOnValue'] = conditionOnValueValue.toMap();
    }
    map['operator'] = operator;
    return map;
  }

  factory DataSourceCustomDocumentEnrichmentConfigurationPostExtractionHookConfigurationInvocationCondition.fromMap(
      Map<String, dynamic> map) {
    return DataSourceCustomDocumentEnrichmentConfigurationPostExtractionHookConfigurationInvocationCondition(
      conditionDocumentAttributeKey:
          map['conditionDocumentAttributeKey'] as String,
      conditionOnValue: map['conditionOnValue'] == null
          ? null
          : DataSourceCustomDocumentEnrichmentConfigurationPostExtractionHookConfigurationInvocationConditionConditionOnValue
              .fromMap(
                  (map['conditionOnValue'] as Map).cast<String, dynamic>()),
      operator: map['operator'] as String,
    );
  }
}
