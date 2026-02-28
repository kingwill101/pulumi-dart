// ignore_for_file: unused_element, unnecessary_cast

class ConnectorKafkaClusterApacheKafkaClusterVpc {
  /// The security groups for the connector.
  final List<String> securityGroups;

  /// The subnets for the connector.
  final List<String> subnets;

  /// Creates a new [ConnectorKafkaClusterApacheKafkaClusterVpc].
  /// [securityGroups] The security groups for the connector.
  /// [subnets] The subnets for the connector.
  ConnectorKafkaClusterApacheKafkaClusterVpc({
    required this.securityGroups,
    required this.subnets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['securityGroups'] = securityGroups;
    map['subnets'] = subnets;
    return map;
  }

  factory ConnectorKafkaClusterApacheKafkaClusterVpc.fromMap(
      Map<String, dynamic> map) {
    return ConnectorKafkaClusterApacheKafkaClusterVpc(
      securityGroups: (map['securityGroups'] as List).cast<String>(),
      subnets: (map['subnets'] as List).cast<String>(),
    );
  }
}
