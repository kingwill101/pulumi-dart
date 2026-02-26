// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for CustomConstraint.
class CustomConstraintArgs {
  /// The action to take if the condition is met.
  /// Possible values are: `ALLOW`, `DENY`.
  final Input<String> actionType;

  /// A CEL condition that refers to a supported service resource, for example `resource.management.autoUpgrade == false`. For details about CEL usage, see [Common Expression Language](https://docs.cloud.google.com/resource-manager/docs/organization-policy/creating-managing-custom-constraints#common_expression_language).
  final Input<String> condition;

  /// A human-friendly description of the constraint to display as an error message when the policy is violated.
  final Input<String>? description;

  /// A human-friendly name for the constraint.
  final Input<String>? displayName;

  /// A list of RESTful methods for which to enforce the constraint. Can be `CREATE`, `UPDATE`, or both. Not all Google Cloud services support both methods. To see supported methods for each service, find the service in [Supported services](https://docs.cloud.google.com/resource-manager/docs/organization-policy/custom-constraint-supported-services).
  final Input<List<String>> methodTypes;

  /// Immutable. The name of the custom constraint. This is unique within the organization.
  final Input<String>? name;

  /// The parent of the resource, an organization. Format should be `organizations/{organization_id}`.
  final Input<String> parent;

  /// Immutable. The fully qualified name of the Google Cloud REST resource containing the object and field you want to restrict. For example, `container.googleapis.com/NodePool`.
  final Input<List<String>> resourceTypes;

  CustomConstraintArgs({
    required this.actionType,
    required this.condition,
    this.description,
    this.displayName,
    required this.methodTypes,
    this.name,
    required this.parent,
    required this.resourceTypes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['actionType'] = actionType;
    map['condition'] = condition;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    map['methodTypes'] = methodTypes;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['parent'] = parent;
    map['resourceTypes'] = resourceTypes;
    return map;
  }

  factory CustomConstraintArgs.fromMap(Map<String, dynamic> map) {
    return CustomConstraintArgs(
      actionType: Input.asInput<String>(map['actionType']),
      condition: Input.asInput<String>(map['condition']),
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      methodTypes: Input.asInput<List<String>>(map['methodTypes']),
      name: Input.asOptionalInput<String>(map['name']),
      parent: Input.asInput<String>(map['parent']),
      resourceTypes: Input.asInput<List<String>>(map['resourceTypes']),
    );
  }
}
