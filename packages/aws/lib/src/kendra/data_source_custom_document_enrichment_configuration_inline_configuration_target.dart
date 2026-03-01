// ignore_for_file: unused_element, unnecessary_cast

import 'data_source_custom_document_enrichment_configuration_inline_configuration_target_target_document_attribute_value.dart';

class DataSourceCustomDocumentEnrichmentConfigurationInlineConfigurationTarget {
  /// The identifier of the target document attribute or metadata field. For example, 'Department' could be an identifier for the target attribute or metadata field that includes the department names associated with the documents.
  final String? targetDocumentAttributeKey;

  /// The target value you want to create for the target attribute. For example, 'Finance' could be the target value for the target attribute key 'Department'. See target_document_attribute_value.
  final DataSourceCustomDocumentEnrichmentConfigurationInlineConfigurationTargetTargetDocumentAttributeValue?
  targetDocumentAttributeValue;

  /// `TRUE` to delete the existing target value for your specified target attribute key. You cannot create a target value and set this to `TRUE`. To create a target value (`TargetDocumentAttributeValue`), set this to `FALSE`.
  final bool? targetDocumentAttributeValueDeletion;

  /// Creates a new [DataSourceCustomDocumentEnrichmentConfigurationInlineConfigurationTarget].
  /// [targetDocumentAttributeKey] The identifier of the target document attribute or metadata field. For example, 'Department' could be an identifier for the target attribute or metadata field that includes the department names associated with the documents.
  /// [targetDocumentAttributeValue] The target value you want to create for the target attribute. For example, 'Finance' could be the target value for the target attribute key 'Department'. See target_document_attribute_value.
  /// [targetDocumentAttributeValueDeletion] `TRUE` to delete the existing target value for your specified target attribute key. You cannot create a target value and set this to `TRUE`. To create a target value (`TargetDocumentAttributeValue`), set this to `FALSE`.
  DataSourceCustomDocumentEnrichmentConfigurationInlineConfigurationTarget({
    this.targetDocumentAttributeKey,
    this.targetDocumentAttributeValue,
    this.targetDocumentAttributeValueDeletion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetDocumentAttributeKey': ?targetDocumentAttributeKey,
      'targetDocumentAttributeValue': ?targetDocumentAttributeValue == null
          ? null
          : targetDocumentAttributeValue!.toMap(),
      'targetDocumentAttributeValueDeletion':
          ?targetDocumentAttributeValueDeletion,
    };
  }

  factory DataSourceCustomDocumentEnrichmentConfigurationInlineConfigurationTarget.fromMap(
    Map<String, dynamic> map,
  ) {
    return DataSourceCustomDocumentEnrichmentConfigurationInlineConfigurationTarget(
      targetDocumentAttributeKey: map['targetDocumentAttributeKey'] == null
          ? null
          : map['targetDocumentAttributeKey'] as String,
      targetDocumentAttributeValue: map['targetDocumentAttributeValue'] == null
          ? null
          : DataSourceCustomDocumentEnrichmentConfigurationInlineConfigurationTargetTargetDocumentAttributeValue.fromMap(
              (map['targetDocumentAttributeValue'] as Map)
                  .cast<String, dynamic>(),
            ),
      targetDocumentAttributeValueDeletion:
          map['targetDocumentAttributeValueDeletion'] == null
          ? null
          : map['targetDocumentAttributeValueDeletion'] as bool,
    );
  }
}
