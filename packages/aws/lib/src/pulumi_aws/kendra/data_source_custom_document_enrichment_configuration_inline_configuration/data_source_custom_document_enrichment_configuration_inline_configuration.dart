// ignore_for_file: unused_element, unnecessary_cast

import '../data_source_custom_document_enrichment_configuration_inline_configuration_condition/data_source_custom_document_enrichment_configuration_inline_configuration_condition.dart';
import '../data_source_custom_document_enrichment_configuration_inline_configuration_target/data_source_custom_document_enrichment_configuration_inline_configuration_target.dart';

class DataSourceCustomDocumentEnrichmentConfigurationInlineConfiguration {
  /// Configuration of the condition used for the target document attribute or metadata field when ingesting documents into Amazon Kendra. See condition.
  final DataSourceCustomDocumentEnrichmentConfigurationInlineConfigurationCondition?
      condition;

  /// `TRUE` to delete content if the condition used for the target attribute is met.
  final bool? documentContentDeletion;

  /// Configuration of the target document attribute or metadata field when ingesting documents into Amazon Kendra. You can also include a value. Detailed below.
  final DataSourceCustomDocumentEnrichmentConfigurationInlineConfigurationTarget?
      target;

  DataSourceCustomDocumentEnrichmentConfigurationInlineConfiguration({
    this.condition,
    this.documentContentDeletion,
    this.target,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = conditionValue.toMap();
    }
    final documentContentDeletionValue = documentContentDeletion;
    if (documentContentDeletionValue != null) {
      map['documentContentDeletion'] = documentContentDeletionValue;
    }
    final targetValue = target;
    if (targetValue != null) {
      map['target'] = targetValue.toMap();
    }
    return map;
  }

  factory DataSourceCustomDocumentEnrichmentConfigurationInlineConfiguration.fromMap(
      Map<String, dynamic> map) {
    return DataSourceCustomDocumentEnrichmentConfigurationInlineConfiguration(
      condition: map['condition'] == null
          ? null
          : DataSourceCustomDocumentEnrichmentConfigurationInlineConfigurationCondition
              .fromMap((map['condition'] as Map).cast<String, dynamic>()),
      documentContentDeletion: map['documentContentDeletion'] == null
          ? null
          : map['documentContentDeletion'] as bool,
      target: map['target'] == null
          ? null
          : DataSourceCustomDocumentEnrichmentConfigurationInlineConfigurationTarget
              .fromMap((map['target'] as Map).cast<String, dynamic>()),
    );
  }
}
