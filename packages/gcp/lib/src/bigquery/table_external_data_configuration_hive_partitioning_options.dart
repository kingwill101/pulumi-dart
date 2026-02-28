// ignore_for_file: unused_element, unnecessary_cast

class TableExternalDataConfigurationHivePartitioningOptions {
  /// When set, what mode of hive partitioning to use when
  /// reading data. The following modes are supported.
  /// * AUTO: automatically infer partition key name(s) and type(s).
  /// * STRINGS: automatically infer partition key name(s). All types are
  /// Not all storage formats support hive partitioning. Requesting hive
  /// partitioning on an unsupported format will lead to an error.
  /// Currently supported formats are: JSON, CSV, ORC, Avro and Parquet.
  /// * CUSTOM: when set to `CUSTOM`, you must encode the partition key schema within the `source_uri_prefix` by setting `source_uri_prefix` to `gs://bucket/path_to_table/{key1:TYPE1}/{key2:TYPE2}/{key3:TYPE3}`.
  final String? mode;

  /// If set to true, queries over this table
  /// require a partition filter that can be used for partition elimination to be
  /// specified.
  final bool? requirePartitionFilter;

  /// When hive partition detection is requested,
  /// a common for all source uris must be required. The prefix must end immediately
  /// before the partition key encoding begins. For example, consider files following
  /// this data layout. `gs://bucket/path_to_table/dt=2019-06-01/country=USA/id=7/file.avro`
  /// `gs://bucket/path_to_table/dt=2019-05-31/country=CA/id=3/file.avro` When hive
  /// partitioning is requested with either AUTO or STRINGS detection, the common prefix
  /// can be either of `gs://bucket/path_to_table` or `gs://bucket/path_to_table/`.
  /// Note that when `mode` is set to `CUSTOM`, you must encode the partition key schema within the `source_uri_prefix` by setting `source_uri_prefix` to `gs://bucket/path_to_table/{key1:TYPE1}/{key2:TYPE2}/{key3:TYPE3}`.
  final String? sourceUriPrefix;

  /// Creates a new [TableExternalDataConfigurationHivePartitioningOptions].
  /// [mode] When set, what mode of hive partitioning to use when
  /// [requirePartitionFilter] If set to true, queries over this table
  /// [sourceUriPrefix] When hive partition detection is requested,
  TableExternalDataConfigurationHivePartitioningOptions({
    this.mode,
    this.requirePartitionFilter,
    this.sourceUriPrefix,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final modeValue = mode;
    if (modeValue != null) {
      map['mode'] = modeValue;
    }
    final requirePartitionFilterValue = requirePartitionFilter;
    if (requirePartitionFilterValue != null) {
      map['requirePartitionFilter'] = requirePartitionFilterValue;
    }
    final sourceUriPrefixValue = sourceUriPrefix;
    if (sourceUriPrefixValue != null) {
      map['sourceUriPrefix'] = sourceUriPrefixValue;
    }
    return map;
  }

  factory TableExternalDataConfigurationHivePartitioningOptions.fromMap(
      Map<String, dynamic> map) {
    return TableExternalDataConfigurationHivePartitioningOptions(
      mode: map['mode'] == null ? null : map['mode'] as String,
      requirePartitionFilter: map['requirePartitionFilter'] == null
          ? null
          : map['requirePartitionFilter'] as bool,
      sourceUriPrefix: map['sourceUriPrefix'] == null
          ? null
          : map['sourceUriPrefix'] as String,
    );
  }
}
