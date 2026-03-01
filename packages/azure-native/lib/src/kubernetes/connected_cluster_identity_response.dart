// ignore_for_file: unused_element, unnecessary_cast


/// Identity for the connected cluster.
class ConnectedClusterIdentityResponse {
  /// The principal id of connected cluster identity. This property will only be provided for a system assigned identity.
  final String principalId;
  /// The tenant id associated with the connected cluster. This property will only be provided for a system assigned identity.
  final String tenantId;
  /// The type of identity used for the connected cluster. The type 'SystemAssigned, includes a system created identity. The type 'None' means no identity is assigned to the connected cluster.
  final String type;

  /// Creates a new [ConnectedClusterIdentityResponse].
  /// [principalId] The principal id of connected cluster identity. This property will only be provided for a system assigned identity.
  /// [tenantId] The tenant id associated with the connected cluster. This property will only be provided for a system assigned identity.
  /// [type] The type of identity used for the connected cluster. The type 'SystemAssigned, includes a system created identity. The type 'None' means no identity is assigned to the connected cluster.
  ConnectedClusterIdentityResponse({
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

  factory ConnectedClusterIdentityResponse.fromMap(Map<String, dynamic> map) {
    return ConnectedClusterIdentityResponse(
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

