// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_source_custom_document_enrichment_configuration_inline_configuration_condition.dart';
import 'data_source_custom_document_enrichment_configuration_inline_configuration_target.dart';

class DataSourceCustomDocumentEnrichmentConfigurationInlineConfiguration {
  /// Configuration of the condition used for the target document attribute or metadata field when ingesting documents into Amazon Kendra. See condition.
  final pulumi.Input<DataSourceCustomDocumentEnrichmentConfigurationInlineConfigurationCondition>? condition;
  /// `TRUE` to delete content if the condition used for the target attribute is met.
  final pulumi.Input<bool>? documentContentDeletion;
  /// Configuration of the target document attribute or metadata field when ingesting documents into Amazon Kendra. You can also include a value. Detailed below.
  final pulumi.Input<DataSourceCustomDocumentEnrichmentConfigurationInlineConfigurationTarget>? target;

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
      'condition': ?pulumi.Input.mapOptionalInputValue<DataSourceCustomDocumentEnrichmentConfigurationInlineConfigurationCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'documentContentDeletion': ?documentContentDeletion,
      'target': ?pulumi.Input.mapOptionalInputValue<DataSourceCustomDocumentEnrichmentConfigurationInlineConfigurationTarget, Map<String, dynamic>>(target, (value) => value.toMap()),
    };
  }

  factory DataSourceCustomDocumentEnrichmentConfigurationInlineConfiguration.fromMap(Map<String, dynamic> map) {
    return DataSourceCustomDocumentEnrichmentConfigurationInlineConfiguration(
      condition: map['condition'] == null ? null : (DataSourceCustomDocumentEnrichmentConfigurationInlineConfigurationCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())).input(),
      documentContentDeletion: map['documentContentDeletion'] == null ? null : (map['documentContentDeletion'] as bool).input(),
      target: map['target'] == null ? null : (DataSourceCustomDocumentEnrichmentConfigurationInlineConfigurationTarget.fromMap((map['target'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

