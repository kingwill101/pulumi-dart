// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'role_gkehub_v1beta.dart';

/// {@template pulumi_gkehub_v1beta_scope_rbac_role_binding_gkehub_v1beta_args_doc}
/// The set of arguments for ScopeRbacRoleBinding.
/// {@endtemplate}
/// {@macro pulumi_gkehub_v1beta_scope_rbac_role_binding_gkehub_v1beta_args_doc}
class ScopeRbacRoleBindingGkehubV1betaArgs {
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
  final pulumi.Input<RoleGkehubV1beta> role;
  final pulumi.Input<String> scopeId;
  /// user is the name of the user as seen by the kubernetes cluster, example "alice" or "alice@domain.tld"
  final pulumi.Input<String>? user;

  /// Creates a new [ScopeRbacRoleBindingGkehubV1betaArgs].
  /// [group] group is the group, as seen by the kubernetes cluster.
  /// [labels] Optional. Labels for this RBACRolebinding.
  /// [location] Optional.
  /// [name] The resource name for the rbacrolebinding `projects/{project}/locations/{location}/scopes/{scope}/rbacrolebindings/{rbacrolebinding}` or `projects/{project}/locations/{location}/memberships/{membership}/rbacrolebindings/{rbacrolebinding}`
  /// [project] Optional.
  /// [rbacrolebindingId] Required. Client chosen ID for the RBACRoleBinding. `rbacrolebinding_id` must be a valid RFC 1123 compliant DNS label: 1. At most 63 characters in length 2. It must consist of lower case alphanumeric characters or `-` 3. It must start and end with an alphanumeric character Which can be expressed as the regex: `[a-z0-9]([-a-z0-9]*[a-z0-9])?`, with a maximum length of 63 characters.
  /// [role] Role to bind to the principal
  /// [scopeId] Required.
  /// [user] user is the name of the user as seen by the kubernetes cluster, example "alice" or "alice@domain.tld"
  ScopeRbacRoleBindingGkehubV1betaArgs({
    String? group,
    Map<String, String>? labels,
    String? location,
    String? name,
    String? project,
    required String rbacrolebindingId,
    required RoleGkehubV1beta role,
    required String scopeId,
    String? user,
  }) :
      group = pulumi.Input.asOptionalInput<String>(group),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      rbacrolebindingId = pulumi.Input.asInput<String>(rbacrolebindingId),
      role = pulumi.Input.asInput<RoleGkehubV1beta>(role),
      scopeId = pulumi.Input.asInput<String>(scopeId),
      user = pulumi.Input.asOptionalInput<String>(user);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'group': ?group,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'rbacrolebindingId': rbacrolebindingId,
      'role': pulumi.Input.mapInputValue<RoleGkehubV1beta, Map<String, dynamic>>(role, (value) => value.toMap()),
      'scopeId': scopeId,
      'user': ?user,
    };
  }

  factory ScopeRbacRoleBindingGkehubV1betaArgs.fromMap(Map<String, dynamic> map) {
    return ScopeRbacRoleBindingGkehubV1betaArgs(
      group: map['group'] == null ? null : map['group'] as String,
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      rbacrolebindingId: map['rbacrolebindingId'] as String,
      role: RoleGkehubV1beta.fromMap((map['role'] as Map).cast<String, dynamic>()),
      scopeId: map['scopeId'] as String,
      user: map['user'] == null ? null : map['user'] as String,
    );
  }
}

