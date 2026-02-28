// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getCustomConstraint.
class GetCustomConstraintResult {
  /// Allow or deny type.
  final String actionType;

  /// Org policy condition/expression. For example: `resource.instanceName.matches("[production|test]_.*_(\d)+")` or, `resource.management.auto_upgrade == true` The max length of the condition is 1000 characters.
  final String condition;

  /// Detailed information about this custom policy constraint. The max length of the description is 2000 characters.
  final String description;

  /// One line display name for the UI. The max length of the display_name is 200 characters.
  final String displayName;

  /// All the operations being applied for this constraint.
  final List<String> methodTypes;

  /// Immutable. Name of the constraint. This is unique within the organization. Format of the name should be * `organizations/{organization_id}/customConstraints/{custom_constraint_id}` Example: `organizations/123/customConstraints/custom.createOnlyE2TypeVms` The max length is 70 characters and the minimum length is 1. Note that the prefix `organizations/{organization_id}/customConstraints/` is not counted.
  final String name;

  /// Immutable. The resource instance type on which this policy applies. Format will be of the form : `/` Example: * `compute.googleapis.com/Instance`.
  final List<String> resourceTypes;

  /// The last time this custom constraint was updated. This represents the last time that the `CreateCustomConstraint` or `UpdateCustomConstraint` RPC was called
  final String updateTime;

  /// Creates a new [GetCustomConstraintResult].
  /// [actionType] Allow or deny type.
  /// [condition] Org policy condition/expression. For example: `resource.instanceName.matches("[production|test]_.*_(\d)+")` or, `resource.management.auto_upgrade == true` The max length of the condition is 1000 characters.
  /// [description] Detailed information about this custom policy constraint. The max length of the description is 2000 characters.
  /// [displayName] One line display name for the UI. The max length of the display_name is 200 characters.
  /// [methodTypes] All the operations being applied for this constraint.
  /// [name] Immutable. Name of the constraint. This is unique within the organization. Format of the name should be * `organizations/{organization_id}/customConstraints/{custom_constraint_id}` Example: `organizations/123/customConstraints/custom.createOnlyE2TypeVms` The max length is 70 characters and the minimum length is 1. Note that the prefix `organizations/{organization_id}/customConstraints/` is not counted.
  /// [resourceTypes] Immutable. The resource instance type on which this policy applies. Format will be of the form : `/` Example: * `compute.googleapis.com/Instance`.
  /// [updateTime] The last time this custom constraint was updated. This represents the last time that the `CreateCustomConstraint` or `UpdateCustomConstraint` RPC was called
  GetCustomConstraintResult({
    required this.actionType,
    required this.condition,
    required this.description,
    required this.displayName,
    required this.methodTypes,
    required this.name,
    required this.resourceTypes,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['actionType'] = actionType;
    map['condition'] = condition;
    map['description'] = description;
    map['displayName'] = displayName;
    map['methodTypes'] = methodTypes;
    map['name'] = name;
    map['resourceTypes'] = resourceTypes;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetCustomConstraintResult.fromMap(Map<String, dynamic> map) {
    return GetCustomConstraintResult(
      actionType: map['actionType'] as String,
      condition: map['condition'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      methodTypes: (map['methodTypes'] as List).cast<String>(),
      name: map['name'] as String,
      resourceTypes: (map['resourceTypes'] as List).cast<String>(),
      updateTime: map['updateTime'] as String,
    );
  }
}
