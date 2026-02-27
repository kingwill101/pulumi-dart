// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'role.dart';

/// The set of arguments for Rbacrolebinding.
class RbacrolebindingArgs {
  /// group is the group, as seen by the kubernetes cluster.
  final pulumi.Input<String>? group;

  /// Optional. Labels for this RBACRolebinding.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// The resource name for the rbacrolebinding `projects/{project}/locations/{location}/scopes/{scope}/rbacrolebindings/{rbacrolebinding}` or `projects/{project}/locations/{location}/memberships/{membership}/rbacrolebindings/{rbacrolebinding}`
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Required. Client chosen ID for the RBACRoleBinding. `rbacrolebinding_id` must be a valid RFC 1123 compliant DNS label: 1. At most 63 characters in length 2. It must consist of lower case alphanumeric characters or `-` 3. It must start and end with an alphanumeric character Which can be expressed as the regex: `[a-z0-9]([-a-z0-9]*[a-z0-9])?`, with a maximum length of 63 characters.
  final pulumi.Input<String> rbacrolebindingId;

  /// Role to bind to the principal
  final pulumi.Input<Role> role;
  final pulumi.Input<String> scopeId;

  /// user is the name of the user as seen by the kubernetes cluster, example "alice" or "alice@domain.tld"
  final pulumi.Input<String>? user;

  RbacrolebindingArgs({
    this.group,
    this.labels,
    this.location,
    this.name,
    this.project,
    required this.rbacrolebindingId,
    required this.role,
    required this.scopeId,
    this.user,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final groupValue = group;
    if (groupValue != null) {
      map['group'] = groupValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['rbacrolebindingId'] = rbacrolebindingId;
    map['role'] = pulumi.Input.mapInputValue<Role, Map<String, dynamic>>(
        role, (value) => value.toMap());
    map['scopeId'] = scopeId;
    final userValue = user;
    if (userValue != null) {
      map['user'] = userValue;
    }
    return map;
  }

  factory RbacrolebindingArgs.fromMap(Map<String, dynamic> map) {
    return RbacrolebindingArgs(
      group: pulumi.Input.asOptionalInput<String>(map['group']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      rbacrolebindingId: pulumi.Input.asInput<String>(map['rbacrolebindingId']),
      role: pulumi.Input.asInput<Role>(map['role']),
      scopeId: pulumi.Input.asInput<String>(map['scopeId']),
      user: pulumi.Input.asOptionalInput<String>(map['user']),
    );
  }
}
