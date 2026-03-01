// ignore_for_file: unused_element, unnecessary_cast


/// Specifies the identity properties.
class IdentityDetailsResponse {
  /// Specifies the principal id for the identity for the job.
  final String principalId;
  /// Specifies the tenant id for the identity for the job.
  final String tenantId;
  /// The type of identity
  final String? type;

  /// Creates a new [IdentityDetailsResponse].
  /// [principalId] Specifies the principal id for the identity for the job.
  /// [tenantId] Specifies the tenant id for the identity for the job.
  /// [type] The type of identity
  IdentityDetailsResponse({
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

  factory IdentityDetailsResponse.fromMap(Map<String, dynamic> map) {
    return IdentityDetailsResponse(
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

