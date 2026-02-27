// ignore_for_file: unused_element, unnecessary_cast

import 'rbacrole_binding_lifecycle_state_response_gkehub_v1alpha.dart';
import 'role_response_gkehub_v1alpha.dart';

/// Result data returned by getMembershipRbacRoleBinding.
class GetMembershipRbacRoleBindingResult {
  /// When the rbacrolebinding was created.
  final String createTime;

  /// When the rbacrolebinding was deleted.
  final String deleteTime;

  /// group is the group, as seen by the kubernetes cluster.
  final String group;

  /// Optional. Labels for this RBACRolebinding.
  final Map<String, String> labels;

  /// The resource name for the rbacrolebinding `projects/{project}/locations/{location}/scopes/{scope}/rbacrolebindings/{rbacrolebinding}` or `projects/{project}/locations/{location}/memberships/{membership}/rbacrolebindings/{rbacrolebinding}`
  final String name;

  /// Role to bind to the principal
  final RoleResponseGkehubV1alpha role;

  /// State of the rbacrolebinding resource.
  final RBACRoleBindingLifecycleStateResponseGkehubV1alpha state;

  /// Google-generated UUID for this resource. This is unique across all rbacrolebinding resources. If a rbacrolebinding resource is deleted and another resource with the same name is created, it gets a different uid.
  final String uid;

  /// When the rbacrolebinding was last updated.
  final String updateTime;

  /// user is the name of the user as seen by the kubernetes cluster, example "alice" or "alice@domain.tld"
  final String user;

  GetMembershipRbacRoleBindingResult({
    required this.createTime,
    required this.deleteTime,
    required this.group,
    required this.labels,
    required this.name,
    required this.role,
    required this.state,
    required this.uid,
    required this.updateTime,
    required this.user,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['deleteTime'] = deleteTime;
    map['group'] = group;
    map['labels'] = labels;
    map['name'] = name;
    map['role'] = role.toMap();
    map['state'] = state.toMap();
    map['uid'] = uid;
    map['updateTime'] = updateTime;
    map['user'] = user;
    return map;
  }

  factory GetMembershipRbacRoleBindingResult.fromMap(Map<String, dynamic> map) {
    return GetMembershipRbacRoleBindingResult(
      createTime: map['createTime'] as String,
      deleteTime: map['deleteTime'] as String,
      group: map['group'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      role: RoleResponseGkehubV1alpha.fromMap(
          (map['role'] as Map).cast<String, dynamic>()),
      state: RBACRoleBindingLifecycleStateResponseGkehubV1alpha.fromMap(
          (map['state'] as Map).cast<String, dynamic>()),
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
      user: map['user'] as String,
    );
  }
}
