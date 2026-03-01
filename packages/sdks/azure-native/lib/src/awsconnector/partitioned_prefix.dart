// ignore_for_file: unused_element, unnecessary_cast


/// Definition of PartitionedPrefix
class PartitionedPrefix {
  /// Specifies the partition date source for the partitioned prefix. PartitionDateSource can be EventTime or DeliveryTime.
  final String? partitionDateSource;

  /// Creates a new [PartitionedPrefix].
  /// [partitionDateSource] Specifies the partition date source for the partitioned prefix. PartitionDateSource can be EventTime or DeliveryTime.
  PartitionedPrefix({
    this.partitionDateSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'partitionDateSource': ?partitionDateSource,
    };
  }

  factory PartitionedPrefix.fromMap(Map<String, dynamic> map) {
    return PartitionedPrefix(
      partitionDateSource: map['partitionDateSource'] == null ? null : map['partitionDateSource'] as String,
    );
  }
}

