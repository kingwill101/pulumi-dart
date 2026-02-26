// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../membership_rbac_role_binding_role/membership_rbac_role_binding_role.dart';

/// The set of arguments for MembershipRbacRoleBinding.
class MembershipRbacRoleBindingArgs {
  /// Location of the Membership
  final Input<String> location;

  /// Id of the membership
  final Input<String> membershipId;

  /// The client-provided identifier of the RBAC Role Binding.
  final Input<String> membershipRbacRoleBindingId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Role to bind to the principal.
  /// Structure is documented below.
  final Input<MembershipRbacRoleBindingRole> role;

  /// Principal that is be authorized in the cluster (at least of one the oneof
  /// is required). Updating one will unset the other automatically.
  /// user is the name of the user as seen by the kubernetes cluster, example
  /// "alice" or "alice@domain.tld"
  final Input<String> user;

  MembershipRbacRoleBindingArgs({
    required this.location,
    required this.membershipId,
    required this.membershipRbacRoleBindingId,
    this.project,
    required this.role,
    required this.user,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['membershipId'] = membershipId;
    map['membershipRbacRoleBindingId'] = membershipRbacRoleBindingId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['role'] = Input.mapInputValue<MembershipRbacRoleBindingRole,
        Map<String, dynamic>>(role, (value) => value.toMap());
    map['user'] = user;
    return map;
  }

  factory MembershipRbacRoleBindingArgs.fromMap(Map<String, dynamic> map) {
    return MembershipRbacRoleBindingArgs(
      location: Input.asInput<String>(map['location']),
      membershipId: Input.asInput<String>(map['membershipId']),
      membershipRbacRoleBindingId:
          Input.asInput<String>(map['membershipRbacRoleBindingId']),
      project: Input.asOptionalInput<String>(map['project']),
      role: Input.asInput<MembershipRbacRoleBindingRole>(map['role']),
      user: Input.asInput<String>(map['user']),
    );
  }
}
