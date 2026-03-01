// ignore_for_file: unused_element, unnecessary_cast


/// Defines the MSI properties of the Move Collection.
class IdentityResponse {
  /// Gets or sets the principal id.
  final String? principalId;
  /// Gets or sets the tenant id.
  final String? tenantId;
  /// The type of identity used for the resource mover service.
  final String? type;

  /// Creates a new [IdentityResponse].
  /// [principalId] Gets or sets the principal id.
  /// [tenantId] Gets or sets the tenant id.
  /// [type] The type of identity used for the resource mover service.
  IdentityResponse({
    this.principalId,
    this.tenantId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': ?principalId,
      'tenantId': ?tenantId,
      'type': ?type,
    };
  }

  factory IdentityResponse.fromMap(Map<String, dynamic> map) {
    return IdentityResponse(
      principalId: map['principalId'] == null ? null : map['principalId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

