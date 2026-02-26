// ignore_for_file: unused_element, unnecessary_cast

class GetTableExternalDataConfigurationHivePartitioningOption {
  /// When set, what mode of hive partitioning to use when reading data.
  final String mode;

  /// If set to true, queries over this table require a partition filter that can be used for partition elimination to be specified.
  final bool requirePartitionFilter;

  /// When hive partition detection is requested, a common for all source uris must be required. The prefix must end immediately before the partition key encoding begins.
  final String sourceUriPrefix;

  GetTableExternalDataConfigurationHivePartitioningOption({
    required this.mode,
    required this.requirePartitionFilter,
    required this.sourceUriPrefix,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['mode'] = mode;
    map['requirePartitionFilter'] = requirePartitionFilter;
    map['sourceUriPrefix'] = sourceUriPrefix;
    return map;
  }

  factory GetTableExternalDataConfigurationHivePartitioningOption.fromMap(
      Map<String, dynamic> map) {
    return GetTableExternalDataConfigurationHivePartitioningOption(
      mode: map['mode'] as String,
      requirePartitionFilter: map['requirePartitionFilter'] as bool,
      sourceUriPrefix: map['sourceUriPrefix'] as String,
    );
  }
}
