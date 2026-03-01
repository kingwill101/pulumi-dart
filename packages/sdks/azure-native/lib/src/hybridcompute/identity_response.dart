// ignore_for_file: unused_element, unnecessary_cast


/// Identity for the resource.
class IdentityResponse {
  /// The principal ID of resource identity.
  final String principalId;
  /// The tenant ID of resource.
  final String tenantId;
  /// The identity type.
  final String? type;

  /// Creates a new [IdentityResponse].
  /// [principalId] The principal ID of resource identity.
  /// [tenantId] The tenant ID of resource.
  /// [type] The identity type.
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

