// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getMembershipRbacRoleBinding.
class GetMembershipRbacRoleBindingGkehubV1betaArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> membershipId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> rbacrolebindingId;

  GetMembershipRbacRoleBindingGkehubV1betaArgs({
    required this.location,
    required this.membershipId,
    this.project,
    required this.rbacrolebindingId,
  });

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
      location: pulumi.Input.asInput<String>(map['location']),
      membershipId: pulumi.Input.asInput<String>(map['membershipId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      rbacrolebindingId: pulumi.Input.asInput<String>(map['rbacrolebindingId']),
    );
  }
}
