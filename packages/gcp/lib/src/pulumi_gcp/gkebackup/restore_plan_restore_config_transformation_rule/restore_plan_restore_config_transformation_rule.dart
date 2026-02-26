// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../restore_plan_restore_config_transformation_rule_field_action/restore_plan_restore_config_transformation_rule_field_action.dart';
import '../restore_plan_restore_config_transformation_rule_resource_filter/restore_plan_restore_config_transformation_rule_resource_filter.dart';

class RestorePlanRestoreConfigTransformationRule {
  /// The description is a user specified string description
  /// of the transformation rule.
  final String? description;

  /// A list of transformation rule actions to take against candidate
  /// resources. Actions are executed in order defined - this order
  /// matters, as they could potentially interfere with each other and
  /// the first operation could affect the outcome of the second operation.
  /// Structure is documented below.
  final List<RestorePlanRestoreConfigTransformationRuleFieldAction>
      fieldActions;

  /// This field is used to specify a set of fields that should be used to
  /// determine which resources in backup should be acted upon by the
  /// supplied transformation rule actions, and this will ensure that only
  /// specific resources are affected by transformation rule actions.
  /// Structure is documented below.
  final RestorePlanRestoreConfigTransformationRuleResourceFilter?
      resourceFilter;

  RestorePlanRestoreConfigTransformationRule({
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
    map['fieldActions'] = Input.encodeList<
        RestorePlanRestoreConfigTransformationRuleFieldAction,
        Map<String, dynamic>>(fieldActions, (value) => value.toMap());
    final resourceFilterValue = resourceFilter;
    if (resourceFilterValue != null) {
      map['resourceFilter'] = resourceFilterValue.toMap();
    }
    return map;
  }

  factory RestorePlanRestoreConfigTransformationRule.fromMap(
      Map<String, dynamic> map) {
    return RestorePlanRestoreConfigTransformationRule(
      description:
          map['description'] == null ? null : map['description'] as String,
      fieldActions: Input.decodeList<
              RestorePlanRestoreConfigTransformationRuleFieldAction>(
          map['fieldActions'],
          (value) =>
              RestorePlanRestoreConfigTransformationRuleFieldAction.fromMap(
                  (value as Map).cast<String, dynamic>())),
      resourceFilter: map['resourceFilter'] == null
          ? null
          : RestorePlanRestoreConfigTransformationRuleResourceFilter.fromMap(
              (map['resourceFilter'] as Map).cast<String, dynamic>()),
    );
  }
}
