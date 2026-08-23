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
  const DataSourceCustomDocumentEnrichmentConfigurationInlineConfiguration({
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
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataSourceCustomDocumentEnrichmentConfigurationInlineConfigurationCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      documentContentDeletion: (() { final guardedValue = map['documentContentDeletion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataSourceCustomDocumentEnrichmentConfigurationInlineConfigurationTarget.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
