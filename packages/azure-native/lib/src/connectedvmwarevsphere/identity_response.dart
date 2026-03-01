// ignore_for_file: unused_element, unnecessary_cast


/// Managed service identity.
class IdentityResponse {
  /// The principal id of managed service identity.
  final String principalId;
  /// The tenant of managed service identity.
  final String tenantId;
  /// The type of managed service identity.
  final String type;

  /// Creates a new [IdentityResponse].
  /// [principalId] The principal id of managed service identity.
  /// [tenantId] The tenant of managed service identity.
  /// [type] The type of managed service identity.
  IdentityResponse({
    required this.principalId,
    required this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': principalId,
      'tenantId': tenantId,
      'type': type,
    };
  }

  factory IdentityResponse.fromMap(Map<String, dynamic> map) {
    return IdentityResponse(
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

