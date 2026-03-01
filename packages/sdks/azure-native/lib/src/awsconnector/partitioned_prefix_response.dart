// ignore_for_file: unused_element, unnecessary_cast


/// Definition of PartitionedPrefix
class PartitionedPrefixResponse {
  /// Specifies the partition date source for the partitioned prefix. PartitionDateSource can be EventTime or DeliveryTime.
  final String? partitionDateSource;

  /// Creates a new [PartitionedPrefixResponse].
  /// [partitionDateSource] Specifies the partition date source for the partitioned prefix. PartitionDateSource can be EventTime or DeliveryTime.
  PartitionedPrefixResponse({
    this.partitionDateSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'partitionDateSource': ?partitionDateSource,
    };
  }

  factory PartitionedPrefixResponse.fromMap(Map<String, dynamic> map) {
    return PartitionedPrefixResponse(
      partitionDateSource: map['partitionDateSource'] == null ? null : map['partitionDateSource'] as String,
    );
  }
}

