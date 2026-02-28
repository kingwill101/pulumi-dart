// ignore_for_file: unused_element, unnecessary_cast


class GlobalSecondaryIndexOnDemandThroughput {
  /// Maximum number of read request units for this index.
  final int? maxReadRequestUnits;
  /// Maximum number of write request units for this index.
  final int? maxWriteRequestUnits;

  /// Creates a new [GlobalSecondaryIndexOnDemandThroughput].
  /// [maxReadRequestUnits] Maximum number of read request units for this index.
  /// [maxWriteRequestUnits] Maximum number of write request units for this index.
  GlobalSecondaryIndexOnDemandThroughput({
    this.maxReadRequestUnits,
    this.maxWriteRequestUnits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxReadRequestUnits': ?maxReadRequestUnits,
      'maxWriteRequestUnits': ?maxWriteRequestUnits,
    };
  }

  factory GlobalSecondaryIndexOnDemandThroughput.fromMap(Map<String, dynamic> map) {
    return GlobalSecondaryIndexOnDemandThroughput(
      maxReadRequestUnits: map['maxReadRequestUnits'] == null ? null : map['maxReadRequestUnits'] as int,
      maxWriteRequestUnits: map['maxWriteRequestUnits'] == null ? null : map['maxWriteRequestUnits'] as int,
    );
  }
}

