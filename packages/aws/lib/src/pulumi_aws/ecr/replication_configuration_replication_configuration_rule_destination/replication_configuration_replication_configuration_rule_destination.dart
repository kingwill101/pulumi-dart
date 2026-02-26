// ignore_for_file: unused_element, unnecessary_cast

class ReplicationConfigurationReplicationConfigurationRuleDestination {
  /// A Region to replicate to.
  final String region;

  /// The account ID of the destination registry to replicate to.
  final String registryId;

  ReplicationConfigurationReplicationConfigurationRuleDestination({
    required this.region,
    required this.registryId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['region'] = region;
    map['registryId'] = registryId;
    return map;
  }

  factory ReplicationConfigurationReplicationConfigurationRuleDestination.fromMap(
      Map<String, dynamic> map) {
    return ReplicationConfigurationReplicationConfigurationRuleDestination(
      region: map['region'] as String,
      registryId: map['registryId'] as String,
    );
  }
}
