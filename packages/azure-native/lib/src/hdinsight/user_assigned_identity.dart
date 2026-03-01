// ignore_for_file: unused_element, unnecessary_cast


/// The User Assigned Identity
class UserAssignedIdentity {
  /// The tenant id of user assigned identity.
  final String? tenantId;

  /// Creates a new [UserAssignedIdentity].
  /// [tenantId] The tenant id of user assigned identity.
  UserAssignedIdentity({
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tenantId': ?tenantId,
    };
  }

  factory UserAssignedIdentity.fromMap(Map<String, dynamic> map) {
    return UserAssignedIdentity(
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
    );
  }
}

