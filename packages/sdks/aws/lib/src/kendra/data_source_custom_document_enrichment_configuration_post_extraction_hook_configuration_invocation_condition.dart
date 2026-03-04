// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_source_custom_document_enrichment_configuration_post_extraction_hook_configuration_invocation_condition_condition_on_value.dart';

class DataSourceCustomDocumentEnrichmentConfigurationPostExtractionHookConfigurationInvocationCondition {
  /// The identifier of the document attribute used for the condition. For example, `_source_uri` could be an identifier for the attribute or metadata field that contains source URIs associated with the documents. Amazon Kendra currently does not support `_document_body` as an attribute key used for the condition.
  final pulumi.Input<String> conditionDocumentAttributeKey;

  /// The value used by the operator. For example, you can specify the value 'financial' for strings in the `_source_uri` field that partially match or contain this value. See condition_on_value.
  final pulumi.Input<
    DataSourceCustomDocumentEnrichmentConfigurationPostExtractionHookConfigurationInvocationConditionConditionOnValue
  >?
  conditionOnValue;

  /// The condition operator. For example, you can use `Contains` to partially match a string. Valid Values: `GreaterThan` | `GreaterThanOrEquals` | `LessThan` | `LessThanOrEquals` | `Equals` | `NotEquals` | `Contains` | `NotContains` | `Exists` | `NotExists` | `BeginsWith`.
  final pulumi.Input<String> operator;

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
    return <String, dynamic>{
      'conditionDocumentAttributeKey': conditionDocumentAttributeKey,
      'conditionOnValue':
          ?pulumi.Input.mapOptionalInputValue<
            DataSourceCustomDocumentEnrichmentConfigurationPostExtractionHookConfigurationInvocationConditionConditionOnValue,
            Map<String, dynamic>
          >(conditionOnValue, (value) => value.toMap()),
      'operator': operator,
    };
  }

  factory DataSourceCustomDocumentEnrichmentConfigurationPostExtractionHookConfigurationInvocationCondition.fromMap(
    Map<String, dynamic> map,
  ) {
    return DataSourceCustomDocumentEnrichmentConfigurationPostExtractionHookConfigurationInvocationCondition(
      conditionDocumentAttributeKey: pulumi.Input.fromValue(
        map['conditionDocumentAttributeKey'] as String,
      ),
      conditionOnValue: (() {
        final guardedValue = map['conditionOnValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DataSourceCustomDocumentEnrichmentConfigurationPostExtractionHookConfigurationInvocationConditionConditionOnValue.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      operator: pulumi.Input.fromValue(map['operator'] as String),
    );
  }
}
