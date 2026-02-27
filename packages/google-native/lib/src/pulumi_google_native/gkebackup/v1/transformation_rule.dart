// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_filter.dart';
import 'transformation_rule_action.dart';

/// A transformation rule to be applied against Kubernetes resources as they are selected for restoration from a Backup. A rule contains both filtering logic (which resources are subject to transform) and transformation logic.
class TransformationRule {
  /// Optional. The description is a user specified string description of the transformation rule.
  final String? description;

  /// A list of transformation rule actions to take against candidate resources. Actions are executed in order defined - this order matters, as they could potentially interfere with each other and the first operation could affect the outcome of the second operation.
  final List<TransformationRuleAction> fieldActions;

  /// Optional. This field is used to specify a set of fields that should be used to determine which resources in backup should be acted upon by the supplied transformation rule actions, and this will ensure that only specific resources are affected by transformation rule actions.
  final ResourceFilter? resourceFilter;

  TransformationRule({
    this.description,
    required this.fieldActions,
    this.resourceFilter,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['fieldActions'] =
        pulumi.Input.encodeList<TransformationRuleAction, Map<String, dynamic>>(
            fieldActions, (value) => value.toMap());
    final resourceFilterValue = resourceFilter;
    if (resourceFilterValue != null) {
      map['resourceFilter'] = resourceFilterValue.toMap();
    }
    return map;
  }

  factory TransformationRule.fromMap(Map<String, dynamic> map) {
    return TransformationRule(
      description:
          map['description'] == null ? null : map['description'] as String,
      fieldActions: pulumi.Input.decodeList<TransformationRuleAction>(
          map['fieldActions'],
          (value) => TransformationRuleAction.fromMap(
              (value as Map).cast<String, dynamic>())),
      resourceFilter: map['resourceFilter'] == null
          ? null
          : ResourceFilter.fromMap(
              (map['resourceFilter'] as Map).cast<String, dynamic>()),
    );
  }
}
