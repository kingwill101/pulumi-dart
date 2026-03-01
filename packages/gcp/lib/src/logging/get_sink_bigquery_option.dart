// ignore_for_file: unused_element, unnecessary_cast

class GetSinkBigqueryOption {
  /// Whether [BigQuery's partition tables](https://cloud.google.com/bigquery/docs/partitioned-tables) are used.
  final bool usePartitionedTables;

  /// Creates a new [GetSinkBigqueryOption].
  /// [usePartitionedTables] Whether [BigQuery's partition tables](https://cloud.google.com/bigquery/docs/partitioned-tables) are used.
  GetSinkBigqueryOption({required this.usePartitionedTables});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'usePartitionedTables': usePartitionedTables};
  }

  factory GetSinkBigqueryOption.fromMap(Map<String, dynamic> map) {
    return GetSinkBigqueryOption(
      usePartitionedTables: map['usePartitionedTables'] as bool,
    );
  }
}
