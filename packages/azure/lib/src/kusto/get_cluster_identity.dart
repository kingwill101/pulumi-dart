// ignore_for_file: unused_element, unnecessary_cast


class GetClusterIdentity {
  /// A list of User Assigned Managed Identity IDs to be assigned to this Kusto Cluster.
  final List<String> identityIds;
  /// The Principal ID associated with this System Assigned Managed Service Identity.
  final String principalId;
  /// The Tenant ID associated with this System Assigned Managed Service Identity.
  final String tenantId;
  /// The type of Managed Service Identity that is configured on this Kusto Cluster.
  final String type;

  /// Creates a new [GetClusterIdentity].
  /// [identityIds] A list of User Assigned Managed Identity IDs to be assigned to this Kusto Cluster.
  /// [principalId] The Principal ID associated with this System Assigned Managed Service Identity.
  /// [tenantId] The Tenant ID associated with this System Assigned Managed Service Identity.
  /// [type] The type of Managed Service Identity that is configured on this Kusto Cluster.
  GetClusterIdentity({
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

  factory GetClusterIdentity.fromMap(Map<String, dynamic> map) {
    return GetClusterIdentity(
      identityIds: (map['identityIds'] as List).cast<String>(),
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

