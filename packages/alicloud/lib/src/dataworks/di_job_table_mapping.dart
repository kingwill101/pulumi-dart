// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'di_job_table_mapping_source_object_selection_rule.dart';
import 'di_job_table_mapping_transformation_rule.dart';

class DiJobTableMapping {
  /// Each rule can select different types of source objects to be synchronized, such as source database and source data table. See `source_object_selection_rules` below.
  final List<DiJobTableMappingSourceObjectSelectionRule>? sourceObjectSelectionRules;
  /// A list of conversion rule definitions for a synchronization object. Each element in the list defines a conversion rule. See `transformation_rules` below.
  final List<DiJobTableMappingTransformationRule>? transformationRules;

  /// Creates a new [DiJobTableMapping].
  /// [sourceObjectSelectionRules] Each rule can select different types of source objects to be synchronized, such as source database and source data table. See `source_object_selection_rules` below.
  /// [transformationRules] A list of conversion rule definitions for a synchronization object. Each element in the list defines a conversion rule. See `transformation_rules` below.
  DiJobTableMapping({
    this.sourceObjectSelectionRules,
    this.transformationRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceObjectSelectionRules': ?sourceObjectSelectionRules == null ? null : pulumi.Input.encodeList<DiJobTableMappingSourceObjectSelectionRule, Map<String, dynamic>>(sourceObjectSelectionRules!, (value) => value.toMap()),
      'transformationRules': ?transformationRules == null ? null : pulumi.Input.encodeList<DiJobTableMappingTransformationRule, Map<String, dynamic>>(transformationRules!, (value) => value.toMap()),
    };
  }

  factory DiJobTableMapping.fromMap(Map<String, dynamic> map) {
    return DiJobTableMapping(
      sourceObjectSelectionRules: map['sourceObjectSelectionRules'] == null ? null : pulumi.Input.decodeList<DiJobTableMappingSourceObjectSelectionRule>(map['sourceObjectSelectionRules'], (value) => DiJobTableMappingSourceObjectSelectionRule.fromMap((value as Map).cast<String, dynamic>())),
      transformationRules: map['transformationRules'] == null ? null : pulumi.Input.decodeList<DiJobTableMappingTransformationRule>(map['transformationRules'], (value) => DiJobTableMappingTransformationRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

