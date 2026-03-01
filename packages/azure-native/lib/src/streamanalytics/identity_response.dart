// ignore_for_file: unused_element, unnecessary_cast


/// Describes how identity is verified
class IdentityResponse {
  /// The identity principal ID
  final String principalId;
  /// The identity tenantId
  final String tenantId;
  /// The identity type
  final String? type;

  /// Creates a new [IdentityResponse].
  /// [principalId] The identity principal ID
  /// [tenantId] The identity tenantId
  /// [type] The identity type
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

