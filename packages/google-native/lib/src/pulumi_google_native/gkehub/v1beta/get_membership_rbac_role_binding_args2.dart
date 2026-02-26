// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getMembershipRbacRoleBinding.
class GetMembershipRbacRoleBindingArgs2 {
  final Input<String> location;
  final Input<String> membershipId;
  final Input<String>? project;
  final Input<String> rbacrolebindingId;

  GetMembershipRbacRoleBindingArgs2({
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

  factory GetMembershipRbacRoleBindingArgs2.fromMap(Map<String, dynamic> map) {
    return GetMembershipRbacRoleBindingArgs2(
      location: Input.asInput<String>(map['location']),
      membershipId: Input.asInput<String>(map['membershipId']),
      project: Input.asOptionalInput<String>(map['project']),
      rbacrolebindingId: Input.asInput<String>(map['rbacrolebindingId']),
    );
  }
}
