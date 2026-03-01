// ignore_for_file: unused_element, unnecessary_cast


class CassandraClusterIdentity {
  final String? principalId;
  final String? tenantId;
  /// Specifies the type of Managed Service Identity that should be configured on this Cassandra Cluster. The only possible value is `SystemAssigned`.
  final String type;

  /// Creates a new [CassandraClusterIdentity].
  /// [principalId] Optional.
  /// [tenantId] Optional.
  /// [type] Specifies the type of Managed Service Identity that should be configured on this Cassandra Cluster. The only possible value is `SystemAssigned`.
  CassandraClusterIdentity({
    this.principalId,
    this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': ?principalId,
      'tenantId': ?tenantId,
      'type': type,
    };
  }

  factory CassandraClusterIdentity.fromMap(Map<String, dynamic> map) {
    return CassandraClusterIdentity(
      principalId: map['principalId'] == null ? null : map['principalId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

