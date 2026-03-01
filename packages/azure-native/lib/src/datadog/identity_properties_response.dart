// ignore_for_file: unused_element, unnecessary_cast


class IdentityPropertiesResponse {
  /// The identity ID.
  final String principalId;
  /// The tenant ID of resource.
  final String tenantId;
  /// Specifies the identity type of the Datadog Monitor. At this time the only allowed value is 'SystemAssigned'.
  final String? type;

  /// Creates a new [IdentityPropertiesResponse].
  /// [principalId] The identity ID.
  /// [tenantId] The tenant ID of resource.
  /// [type] Specifies the identity type of the Datadog Monitor. At this time the only allowed value is 'SystemAssigned'.
  IdentityPropertiesResponse({
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

  factory IdentityPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return IdentityPropertiesResponse(
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

