// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The User Assigned Identity
class UserAssignedIdentity {
  /// The tenant id of user assigned identity.
  final pulumi.Input<String?>? tenantId;

  /// Creates a new [UserAssignedIdentity].
  /// [tenantId] The tenant id of user assigned identity.
  const UserAssignedIdentity({
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tenantId': ?tenantId,
    };
  }

  factory UserAssignedIdentity.fromMap(Map<String, dynamic> map) {
    return UserAssignedIdentity(
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
