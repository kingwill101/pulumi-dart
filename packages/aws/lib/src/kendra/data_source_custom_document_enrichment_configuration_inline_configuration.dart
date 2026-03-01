// ignore_for_file: unused_element, unnecessary_cast

import 'data_source_custom_document_enrichment_configuration_inline_configuration_condition.dart';
import 'data_source_custom_document_enrichment_configuration_inline_configuration_target.dart';

class DataSourceCustomDocumentEnrichmentConfigurationInlineConfiguration {
  /// Configuration of the condition used for the target document attribute or metadata field when ingesting documents into Amazon Kendra. See condition.
  final DataSourceCustomDocumentEnrichmentConfigurationInlineConfigurationCondition?
  condition;

  /// `TRUE` to delete content if the condition used for the target attribute is met.
  final bool? documentContentDeletion;

  /// Configuration of the target document attribute or metadata field when ingesting documents into Amazon Kendra. You can also include a value. Detailed below.
  final DataSourceCustomDocumentEnrichmentConfigurationInlineConfigurationTarget?
  target;

  /// Creates a new [DataSourceCustomDocumentEnrichmentConfigurationInlineConfiguration].
  /// [condition] Configuration of the condition used for the target document attribute or metadata field when ingesting documents into Amazon Kendra. See condition.
  /// [documentContentDeletion] `TRUE` to delete content if the condition used for the target attribute is met.
  /// [target] Configuration of the target document attribute or metadata field when ingesting documents into Amazon Kendra. You can also include a value. Detailed below.
  DataSourceCustomDocumentEnrichmentConfigurationInlineConfiguration({
    this.condition,
    this.documentContentDeletion,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?condition == null ? null : condition!.toMap(),
      'documentContentDeletion': ?documentContentDeletion,
      'target': ?target == null ? null : target!.toMap(),
    };
  }

  factory DataSourceCustomDocumentEnrichmentConfigurationInlineConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return DataSourceCustomDocumentEnrichmentConfigurationInlineConfiguration(
      condition: map['condition'] == null
          ? null
          : DataSourceCustomDocumentEnrichmentConfigurationInlineConfigurationCondition.fromMap(
              (map['condition'] as Map).cast<String, dynamic>(),
            ),
      documentContentDeletion: map['documentContentDeletion'] == null
          ? null
          : map['documentContentDeletion'] as bool,
      target: map['target'] == null
          ? null
          : DataSourceCustomDocumentEnrichmentConfigurationInlineConfigurationTarget.fromMap(
              (map['target'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
