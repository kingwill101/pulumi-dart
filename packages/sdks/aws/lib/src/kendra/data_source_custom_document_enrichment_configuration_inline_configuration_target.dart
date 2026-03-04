// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_source_custom_document_enrichment_configuration_inline_configuration_target_target_document_attribute_value.dart';

class DataSourceCustomDocumentEnrichmentConfigurationInlineConfigurationTarget {
  /// The identifier of the target document attribute or metadata field. For example, 'Department' could be an identifier for the target attribute or metadata field that includes the department names associated with the documents.
  final pulumi.Input<String>? targetDocumentAttributeKey;

  /// The target value you want to create for the target attribute. For example, 'Finance' could be the target value for the target attribute key 'Department'. See target_document_attribute_value.
  final pulumi.Input<
    DataSourceCustomDocumentEnrichmentConfigurationInlineConfigurationTargetTargetDocumentAttributeValue
  >?
  targetDocumentAttributeValue;

  /// `TRUE` to delete the existing target value for your specified target attribute key. You cannot create a target value and set this to `TRUE`. To create a target value (`TargetDocumentAttributeValue`), set this to `FALSE`.
  final pulumi.Input<bool>? targetDocumentAttributeValueDeletion;

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
      'targetDocumentAttributeValue':
          ?pulumi.Input.mapOptionalInputValue<
            DataSourceCustomDocumentEnrichmentConfigurationInlineConfigurationTargetTargetDocumentAttributeValue,
            Map<String, dynamic>
          >(targetDocumentAttributeValue, (value) => value.toMap()),
      'targetDocumentAttributeValueDeletion':
          ?targetDocumentAttributeValueDeletion,
    };
  }

  factory DataSourceCustomDocumentEnrichmentConfigurationInlineConfigurationTarget.fromMap(
    Map<String, dynamic> map,
  ) {
    return DataSourceCustomDocumentEnrichmentConfigurationInlineConfigurationTarget(
      targetDocumentAttributeKey: (() {
        final guardedValue = map['targetDocumentAttributeKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      targetDocumentAttributeValue: (() {
        final guardedValue = map['targetDocumentAttributeValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DataSourceCustomDocumentEnrichmentConfigurationInlineConfigurationTargetTargetDocumentAttributeValue.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      targetDocumentAttributeValueDeletion: (() {
        final guardedValue = map['targetDocumentAttributeValueDeletion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
