// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReplicationConfigurationReplicationConfigurationRuleRepositoryFilter {
  /// The repository filter details.
  final pulumi.Input<String> filter;
  /// The repository filter type. The only supported value is `PREFIX_MATCH`, which is a repository name prefix specified with the filter parameter.
  final pulumi.Input<String> filterType;

  /// Creates a new [ReplicationConfigurationReplicationConfigurationRuleRepositoryFilter].
  /// [filter] The repository filter details.
  /// [filterType] The repository filter type. The only supported value is `PREFIX_MATCH`, which is a repository name prefix specified with the filter parameter.
  ReplicationConfigurationReplicationConfigurationRuleRepositoryFilter({
    required this.filter,
    required this.filterType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': filter,
      'filterType': filterType,
    };
  }

  factory ReplicationConfigurationReplicationConfigurationRuleRepositoryFilter.fromMap(Map<String, dynamic> map) {
    return ReplicationConfigurationReplicationConfigurationRuleRepositoryFilter(
      filter: (map['filter'] as String).input(),
      filterType: (map['filterType'] as String).input(),
    );
  }
}

