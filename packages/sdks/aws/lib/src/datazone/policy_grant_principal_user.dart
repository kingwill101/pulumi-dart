// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyGrantPrincipalUser {
  /// Filter to grant access to all users. Empty block.
  final pulumi.Input<Map<String, dynamic>?>? allUsersGrantFilter;
  /// Identifier of the user principal.
  final pulumi.Input<String?>? userIdentifier;

  /// Creates a new [PolicyGrantPrincipalUser].
  /// [allUsersGrantFilter] Filter to grant access to all users. Empty block.
  /// [userIdentifier] Identifier of the user principal.
  const PolicyGrantPrincipalUser({
    this.allUsersGrantFilter,
    this.userIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allUsersGrantFilter': ?allUsersGrantFilter,
      'userIdentifier': ?userIdentifier,
    };
  }

  factory PolicyGrantPrincipalUser.fromMap(Map<String, dynamic> map) {
    return PolicyGrantPrincipalUser(
      allUsersGrantFilter: (() { final guardedValue = map['allUsersGrantFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      userIdentifier: (() { final guardedValue = map['userIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
