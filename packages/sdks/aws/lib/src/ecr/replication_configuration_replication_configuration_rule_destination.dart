// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReplicationConfigurationReplicationConfigurationRuleDestination {
  /// A Region to replicate to.
  final pulumi.Input<String> region;
  /// The account ID of the destination registry to replicate to.
  final pulumi.Input<String> registryId;

  /// Creates a new [ReplicationConfigurationReplicationConfigurationRuleDestination].
  /// [region] A Region to replicate to.
  /// [registryId] The account ID of the destination registry to replicate to.
  const ReplicationConfigurationReplicationConfigurationRuleDestination({
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
      region: pulumi.Input.fromValue(map['region'] as String),
      registryId: pulumi.Input.fromValue(map['registryId'] as String),
    );
  }
}

