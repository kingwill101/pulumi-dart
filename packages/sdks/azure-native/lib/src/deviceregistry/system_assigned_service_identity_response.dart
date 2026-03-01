// ignore_for_file: unused_element, unnecessary_cast


/// Managed service identity (either system assigned, or none)
class SystemAssignedServiceIdentityResponse {
  /// The service principal ID of the system assigned identity. This property will only be provided for a system assigned identity.
  final String principalId;
  /// The tenant ID of the system assigned identity. This property will only be provided for a system assigned identity.
  final String tenantId;
  /// Type of managed service identity (either system assigned, or none).
  final String type;

  /// Creates a new [SystemAssignedServiceIdentityResponse].
  /// [principalId] The service principal ID of the system assigned identity. This property will only be provided for a system assigned identity.
  /// [tenantId] The tenant ID of the system assigned identity. This property will only be provided for a system assigned identity.
  /// [type] Type of managed service identity (either system assigned, or none).
  SystemAssignedServiceIdentityResponse({
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

  factory SystemAssignedServiceIdentityResponse.fromMap(Map<String, dynamic> map) {
    return SystemAssignedServiceIdentityResponse(
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

