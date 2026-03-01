// ignore_for_file: unused_element, unnecessary_cast


/// Identity of resource
class IdentityResponse {
  /// service principal Id
  final String principalId;
  /// Tenant Id
  final String tenantId;
  /// Identity Type
  final String? type;

  /// Creates a new [IdentityResponse].
  /// [principalId] service principal Id
  /// [tenantId] Tenant Id
  /// [type] Identity Type
  IdentityResponse({
    required this.principalId,
    required this.tenantId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': principalId,
      'tenantId': tenantId,
      'type': ?type,
    };
  }

  factory IdentityResponse.fromMap(Map<String, dynamic> map) {
    return IdentityResponse(
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

