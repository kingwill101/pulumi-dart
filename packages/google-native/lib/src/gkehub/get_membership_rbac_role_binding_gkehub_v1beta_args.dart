// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkehub_v1beta_get_membership_rbac_role_binding_gkehub_v1beta_args_doc}
/// Arguments for getMembershipRbacRoleBinding.
/// {@endtemplate}
/// {@macro pulumi_gkehub_v1beta_get_membership_rbac_role_binding_gkehub_v1beta_args_doc}
class GetMembershipRbacRoleBindingGkehubV1betaArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> membershipId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> rbacrolebindingId;

  /// Creates a new [GetMembershipRbacRoleBindingGkehubV1betaArgs].
  /// [location] Required.
  /// [membershipId] Required.
  /// [project] Optional.
  /// [rbacrolebindingId] Required.
  GetMembershipRbacRoleBindingGkehubV1betaArgs({
    required String location,
    required String membershipId,
    String? project,
    required String rbacrolebindingId,
  })  : location = pulumi.Input.asInput<String>(location),
        membershipId = pulumi.Input.asInput<String>(membershipId),
        project = pulumi.Input.asOptionalInput<String>(project),
        rbacrolebindingId = pulumi.Input.asInput<String>(rbacrolebindingId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['membershipId'] = membershipId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['rbacrolebindingId'] = rbacrolebindingId;
    return map;
  }

  factory GetMembershipRbacRoleBindingGkehubV1betaArgs.fromMap(
      Map<String, dynamic> map) {
    return GetMembershipRbacRoleBindingGkehubV1betaArgs(
      location: map['location'] as String,
      membershipId: map['membershipId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      rbacrolebindingId: map['rbacrolebindingId'] as String,
    );
  }
}
