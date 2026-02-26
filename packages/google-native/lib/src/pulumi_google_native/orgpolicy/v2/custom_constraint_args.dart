// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'custom_constraint_action_type.dart';
import 'custom_constraint_method_types_item.dart';

/// The set of arguments for CustomConstraint.
class CustomConstraintArgs {
  /// Allow or deny type.
  final Input<CustomConstraintActionType>? actionType;

  /// Org policy condition/expression. For example: `resource.instanceName.matches("[production|test]_.*_(\d)+")` or, `resource.management.auto_upgrade == true` The max length of the condition is 1000 characters.
  final Input<String>? condition;

  /// Detailed information about this custom policy constraint. The max length of the description is 2000 characters.
  final Input<String>? description;

  /// One line display name for the UI. The max length of the display_name is 200 characters.
  final Input<String>? displayName;

  /// All the operations being applied for this constraint.
  final Input<List<CustomConstraintMethodTypesItem>>? methodTypes;

  /// Immutable. Name of the constraint. This is unique within the organization. Format of the name should be * `organizations/{organization_id}/customConstraints/{custom_constraint_id}` Example: `organizations/123/customConstraints/custom.createOnlyE2TypeVms` The max length is 70 characters and the minimum length is 1. Note that the prefix `organizations/{organization_id}/customConstraints/` is not counted.
  final Input<String>? name;
  final Input<String> organizationId;

  /// Immutable. The resource instance type on which this policy applies. Format will be of the form : `/` Example: * `compute.googleapis.com/Instance`.
  final Input<List<String>>? resourceTypes;

  CustomConstraintArgs({
    this.actionType,
    this.condition,
    this.description,
    this.displayName,
    this.methodTypes,
    this.name,
    required this.organizationId,
    this.resourceTypes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final actionTypeValue = actionType;
    if (actionTypeValue != null) {
      map['actionType'] =
          Input.mapOptionalInputValue<CustomConstraintActionType, String>(
              actionTypeValue, (value) => value.value);
    }
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = conditionValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final methodTypesValue = methodTypes;
    if (methodTypesValue != null) {
      map['methodTypes'] = Input.mapOptionalInputValue<
              List<CustomConstraintMethodTypesItem>, List<String>>(
          methodTypesValue,
          (value) => Input.encodeList<CustomConstraintMethodTypesItem, String>(
              value, (value) => value.value));
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['organizationId'] = organizationId;
    final resourceTypesValue = resourceTypes;
    if (resourceTypesValue != null) {
      map['resourceTypes'] = resourceTypesValue;
    }
    return map;
  }

  factory CustomConstraintArgs.fromMap(Map<String, dynamic> map) {
    return CustomConstraintArgs(
      actionType:
          Input.asOptionalInput<CustomConstraintActionType>(map['actionType']),
      condition: Input.asOptionalInput<String>(map['condition']),
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      methodTypes: Input.asOptionalInput<List<CustomConstraintMethodTypesItem>>(
          map['methodTypes']),
      name: Input.asOptionalInput<String>(map['name']),
      organizationId: Input.asInput<String>(map['organizationId']),
      resourceTypes: Input.asOptionalInput<List<String>>(map['resourceTypes']),
    );
  }
}
