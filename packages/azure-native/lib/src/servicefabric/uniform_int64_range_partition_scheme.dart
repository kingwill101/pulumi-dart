// ignore_for_file: unused_element, unnecessary_cast


/// Describes a partitioning scheme where an integer range is allocated evenly across a number of partitions.
class UniformInt64RangePartitionScheme {
  /// The number of partitions.
  final int count;
  /// The upper bound of the partition key range that
  /// should be split between the partition ‘Count’
  final double highKey;
  /// The lower bound of the partition key range that
  /// should be split between the partition ‘Count’
  final double lowKey;
  /// Enumerates the ways that a service can be partitioned.
  /// Expected value is 'UniformInt64Range'.
  final String partitionScheme;

  /// Creates a new [UniformInt64RangePartitionScheme].
  /// [count] The number of partitions.
  /// [highKey] The upper bound of the partition key range that
  /// [lowKey] The lower bound of the partition key range that
  /// [partitionScheme] Enumerates the ways that a service can be partitioned.
  UniformInt64RangePartitionScheme({
    required this.count,
    required this.highKey,
    required this.lowKey,
    required this.partitionScheme,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'highKey': highKey,
      'lowKey': lowKey,
      'partitionScheme': partitionScheme,
    };
  }

  factory UniformInt64RangePartitionScheme.fromMap(Map<String, dynamic> map) {
    return UniformInt64RangePartitionScheme(
      count: map['count'] as int,
      highKey: map['highKey'] as double,
      lowKey: map['lowKey'] as double,
      partitionScheme: map['partitionScheme'] as String,
    );
  }
}

