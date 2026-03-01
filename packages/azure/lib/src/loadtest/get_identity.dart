// ignore_for_file: unused_element, unnecessary_cast


class GetIdentity {
  /// The list of the User Assigned Identity IDs that is assigned to this Load Test Service.
  final List<String> identityIds;
  /// The Principal ID for the System-Assigned Managed Identity assigned to this Load Test Service.
  final String principalId;
  /// The Tenant ID for the System-Assigned Managed Identity assigned to this Load Test Service.
  final String tenantId;
  /// Type of Managed Service Identity that is assigned to this Load Test Encryption.
  final String type;

  /// Creates a new [GetIdentity].
  /// [identityIds] The list of the User Assigned Identity IDs that is assigned to this Load Test Service.
  /// [principalId] The Principal ID for the System-Assigned Managed Identity assigned to this Load Test Service.
  /// [tenantId] The Tenant ID for the System-Assigned Managed Identity assigned to this Load Test Service.
  /// [type] Type of Managed Service Identity that is assigned to this Load Test Encryption.
  GetIdentity({
    required this.identityIds,
    required this.principalId,
    required this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityIds': identityIds,
      'principalId': principalId,
      'tenantId': tenantId,
      'type': type,
    };
  }

  factory GetIdentity.fromMap(Map<String, dynamic> map) {
    return GetIdentity(
      identityIds: (map['identityIds'] as List).cast<String>(),
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

