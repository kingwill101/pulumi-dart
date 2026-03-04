// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'di_job_table_mapping_source_object_selection_rule.dart';
import 'di_job_table_mapping_transformation_rule.dart';

class DiJobTableMapping {
  /// Each rule can select different types of source objects to be synchronized, such as source database and source data table. See `source_object_selection_rules` below.
  final pulumi.Input<List<DiJobTableMappingSourceObjectSelectionRule>>?
  sourceObjectSelectionRules;

  /// A list of conversion rule definitions for a synchronization object. Each element in the list defines a conversion rule. See `transformation_rules` below.
  final pulumi.Input<List<DiJobTableMappingTransformationRule>>?
  transformationRules;

  /// Creates a new [DiJobTableMapping].
  /// [sourceObjectSelectionRules] Each rule can select different types of source objects to be synchronized, such as source database and source data table. See `source_object_selection_rules` below.
  /// [transformationRules] A list of conversion rule definitions for a synchronization object. Each element in the list defines a conversion rule. See `transformation_rules` below.
  DiJobTableMapping({
    this.sourceObjectSelectionRules,
    this.transformationRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceObjectSelectionRules':
          ?pulumi.Input.mapOptionalInputValue<
            List<DiJobTableMappingSourceObjectSelectionRule>,
            List<Map<String, dynamic>>
          >(
            sourceObjectSelectionRules,
            (value) =>
                pulumi.Input.encodeList<
                  DiJobTableMappingSourceObjectSelectionRule,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'transformationRules':
          ?pulumi.Input.mapOptionalInputValue<
            List<DiJobTableMappingTransformationRule>,
            List<Map<String, dynamic>>
          >(
            transformationRules,
            (value) =>
                pulumi.Input.encodeList<
                  DiJobTableMappingTransformationRule,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory DiJobTableMapping.fromMap(Map<String, dynamic> map) {
    return DiJobTableMapping(
      sourceObjectSelectionRules: (() {
        final guardedValue = map['sourceObjectSelectionRules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DiJobTableMappingSourceObjectSelectionRule>(
            guardedValue,
            (value) => DiJobTableMappingSourceObjectSelectionRule.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      transformationRules: (() {
        final guardedValue = map['transformationRules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DiJobTableMappingTransformationRule>(
            guardedValue,
            (value) => DiJobTableMappingTransformationRule.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
