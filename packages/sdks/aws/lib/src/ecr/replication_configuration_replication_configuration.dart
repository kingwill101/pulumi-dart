// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replication_configuration_replication_configuration_rule.dart';

class ReplicationConfigurationReplicationConfiguration {
  /// The replication rules for a replication configuration. A maximum of 10 are allowed per `replicationConfiguration`. See Rule
  final pulumi.Input<List<ReplicationConfigurationReplicationConfigurationRule>> rules;

  /// Creates a new [ReplicationConfigurationReplicationConfiguration].
  /// [rules] The replication rules for a replication configuration. A maximum of 10 are allowed per `replicationConfiguration`. See Rule
  const ReplicationConfigurationReplicationConfiguration({
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': pulumi.Input.mapInputValue<List<ReplicationConfigurationReplicationConfigurationRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<ReplicationConfigurationReplicationConfigurationRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ReplicationConfigurationReplicationConfiguration.fromMap(Map<String, dynamic> map) {
    return ReplicationConfigurationReplicationConfiguration(
      rules: pulumi.Input.fromValue(pulumi.Input.decodeList<ReplicationConfigurationReplicationConfigurationRule>(map['rules']!, (value) => ReplicationConfigurationReplicationConfigurationRule.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
