// ignore_for_file: unused_element, unnecessary_cast

class ReplicationConfigurationReplicationConfigurationRuleRepositoryFilter {
  /// The repository filter details.
  final String filter;

  /// The repository filter type. The only supported value is `PREFIX_MATCH`, which is a repository name prefix specified with the filter parameter.
  final String filterType;

  /// Creates a new [ReplicationConfigurationReplicationConfigurationRuleRepositoryFilter].
  /// [filter] The repository filter details.
  /// [filterType] The repository filter type. The only supported value is `PREFIX_MATCH`, which is a repository name prefix specified with the filter parameter.
  ReplicationConfigurationReplicationConfigurationRuleRepositoryFilter({
    required this.filter,
    required this.filterType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['filter'] = filter;
    map['filterType'] = filterType;
    return map;
  }

  factory ReplicationConfigurationReplicationConfigurationRuleRepositoryFilter.fromMap(
      Map<String, dynamic> map) {
    return ReplicationConfigurationReplicationConfigurationRuleRepositoryFilter(
      filter: map['filter'] as String,
      filterType: map['filterType'] as String,
    );
  }
}
