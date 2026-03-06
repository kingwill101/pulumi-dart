// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replication_configuration_replication_configuration_rule_destination.dart';
import 'replication_configuration_replication_configuration_rule_repository_filter.dart';

class ReplicationConfigurationReplicationConfigurationRule {
  /// the details of a replication destination. A maximum of 25 are allowed per `rule`. See Destination.
  final pulumi.Input<List<ReplicationConfigurationReplicationConfigurationRuleDestination>> destinations;
  /// filters for a replication rule. See Repository Filter.
  final pulumi.Input<List<ReplicationConfigurationReplicationConfigurationRuleRepositoryFilter>>? repositoryFilters;

  /// Creates a new [ReplicationConfigurationReplicationConfigurationRule].
  /// [destinations] the details of a replication destination. A maximum of 25 are allowed per `rule`. See Destination.
  /// [repositoryFilters] filters for a replication rule. See Repository Filter.
  const ReplicationConfigurationReplicationConfigurationRule({
    required this.destinations,
    this.repositoryFilters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinations': pulumi.Input.mapInputValue<List<ReplicationConfigurationReplicationConfigurationRuleDestination>, List<Map<String, dynamic>>>(destinations, (value) => pulumi.Input.encodeList<ReplicationConfigurationReplicationConfigurationRuleDestination, Map<String, dynamic>>(value, (value) => value.toMap())),
      'repositoryFilters': ?pulumi.Input.mapOptionalInputValue<List<ReplicationConfigurationReplicationConfigurationRuleRepositoryFilter>, List<Map<String, dynamic>>>(repositoryFilters, (value) => pulumi.Input.encodeList<ReplicationConfigurationReplicationConfigurationRuleRepositoryFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ReplicationConfigurationReplicationConfigurationRule.fromMap(Map<String, dynamic> map) {
    return ReplicationConfigurationReplicationConfigurationRule(
      destinations: pulumi.Input.fromValue(pulumi.Input.decodeList<ReplicationConfigurationReplicationConfigurationRuleDestination>(map['destinations']!, (value) => ReplicationConfigurationReplicationConfigurationRuleDestination.fromMap((value as Map).cast<String, dynamic>()))),
      repositoryFilters: (() { final guardedValue = map['repositoryFilters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReplicationConfigurationReplicationConfigurationRuleRepositoryFilter>(guardedValue, (value) => ReplicationConfigurationReplicationConfigurationRuleRepositoryFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

