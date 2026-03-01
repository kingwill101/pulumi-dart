// ignore_for_file: unused_element, unnecessary_cast


class ReplicationConfigurationReplicationConfigurationRuleDestination {
  /// A Region to replicate to.
  final String region;
  /// The account ID of the destination registry to replicate to.
  final String registryId;

  /// Creates a new [ReplicationConfigurationReplicationConfigurationRuleDestination].
  /// [region] A Region to replicate to.
  /// [registryId] The account ID of the destination registry to replicate to.
  ReplicationConfigurationReplicationConfigurationRuleDestination({
    required this.region,
    required this.registryId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': region,
      'registryId': registryId,
    };
  }

  factory ReplicationConfigurationReplicationConfigurationRuleDestination.fromMap(Map<String, dynamic> map) {
    return ReplicationConfigurationReplicationConfigurationRuleDestination(
      region: map['region'] as String,
      registryId: map['registryId'] as String,
    );
  }
}

