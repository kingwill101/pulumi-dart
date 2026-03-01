// ignore_for_file: unused_element, unnecessary_cast


/// Managed identity properties retrieved from ARM request headers.
class ManagedIdentityProperties {
  /// Principal Id of system-assigned managed identity.
  final String? principalId;
  /// Tenant Id of system-assigned managed identity.
  final String? tenantId;
  /// Type of the managed identity
  final String? type;
  /// Properties of user-assigned managed identities
  final List<String>? userAssignedIdentities;

  /// Creates a new [ManagedIdentityProperties].
  /// [principalId] Principal Id of system-assigned managed identity.
  /// [tenantId] Tenant Id of system-assigned managed identity.
  /// [type] Type of the managed identity
  /// [userAssignedIdentities] Properties of user-assigned managed identities
  ManagedIdentityProperties({
    this.principalId,
    this.tenantId,
    this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': ?principalId,
      'tenantId': ?tenantId,
      'type': ?type,
      'userAssignedIdentities': ?userAssignedIdentities,
    };
  }

  factory ManagedIdentityProperties.fromMap(Map<String, dynamic> map) {
    return ManagedIdentityProperties(
      principalId: map['principalId'] == null ? null : map['principalId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      type: map['type'] == null ? null : map['type'] as String,
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : (map['userAssignedIdentities'] as List).cast<String>(),
    );
  }
}

