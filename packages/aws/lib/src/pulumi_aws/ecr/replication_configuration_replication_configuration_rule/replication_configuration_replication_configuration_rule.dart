// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../replication_configuration_replication_configuration_rule_destination/replication_configuration_replication_configuration_rule_destination.dart';
import '../replication_configuration_replication_configuration_rule_repository_filter/replication_configuration_replication_configuration_rule_repository_filter.dart';

class ReplicationConfigurationReplicationConfigurationRule {
  /// the details of a replication destination. A maximum of 25 are allowed per `rule`. See Destination.
  final List<ReplicationConfigurationReplicationConfigurationRuleDestination>
      destinations;

  /// filters for a replication rule. See Repository Filter.
  final List<
          ReplicationConfigurationReplicationConfigurationRuleRepositoryFilter>?
      repositoryFilters;

  ReplicationConfigurationReplicationConfigurationRule({
    required this.destinations,
    this.repositoryFilters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['destinations'] = pulumi.Input.encodeList<
        ReplicationConfigurationReplicationConfigurationRuleDestination,
        Map<String, dynamic>>(destinations, (value) => value.toMap());
    final repositoryFiltersValue = repositoryFilters;
    if (repositoryFiltersValue != null) {
      map['repositoryFilters'] = pulumi.Input.encodeList<
          ReplicationConfigurationReplicationConfigurationRuleRepositoryFilter,
          Map<String,
              dynamic>>(repositoryFiltersValue, (value) => value.toMap());
    }
    return map;
  }

  factory ReplicationConfigurationReplicationConfigurationRule.fromMap(
      Map<String, dynamic> map) {
    return ReplicationConfigurationReplicationConfigurationRule(
      destinations: pulumi.Input.decodeList<
              ReplicationConfigurationReplicationConfigurationRuleDestination>(
          map['destinations'],
          (value) =>
              ReplicationConfigurationReplicationConfigurationRuleDestination
                  .fromMap((value as Map).cast<String, dynamic>())),
      repositoryFilters: map['repositoryFilters'] == null
          ? null
          : pulumi.Input.decodeList<
                  ReplicationConfigurationReplicationConfigurationRuleRepositoryFilter>(
              map['repositoryFilters'],
              (value) =>
                  ReplicationConfigurationReplicationConfigurationRuleRepositoryFilter
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
