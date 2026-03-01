// ignore_for_file: unused_element, unnecessary_cast


class GetHciClusterIdentity {
  /// The Principal ID associated with this Managed Service Identity.
  final String principalId;
  /// The Tenant ID associated with this Managed Service Identity.
  final String tenantId;
  /// (Required) The type of Managed Service Identity configured on the Azure Stack HCI Cluster.
  final String type;

  /// Creates a new [GetHciClusterIdentity].
  /// [principalId] The Principal ID associated with this Managed Service Identity.
  /// [tenantId] The Tenant ID associated with this Managed Service Identity.
  /// [type] (Required) The type of Managed Service Identity configured on the Azure Stack HCI Cluster.
  GetHciClusterIdentity({
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

  factory GetHciClusterIdentity.fromMap(Map<String, dynamic> map) {
    return GetHciClusterIdentity(
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

