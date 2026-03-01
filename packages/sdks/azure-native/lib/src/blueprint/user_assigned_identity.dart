// ignore_for_file: unused_element, unnecessary_cast


/// User-assigned managed identity.
class UserAssignedIdentity {
  /// Client App Id associated with this identity.
  final String? clientId;
  /// Azure Active Directory principal ID associated with this Identity.
  final String? principalId;

  /// Creates a new [UserAssignedIdentity].
  /// [clientId] Client App Id associated with this identity.
  /// [principalId] Azure Active Directory principal ID associated with this Identity.
  UserAssignedIdentity({
    this.clientId,
    this.principalId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'principalId': ?principalId,
    };
  }

  factory UserAssignedIdentity.fromMap(Map<String, dynamic> map) {
    return UserAssignedIdentity(
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      principalId: map['principalId'] == null ? null : map['principalId'] as String,
    );
  }
}

