// ignore_for_file: unused_element, unnecessary_cast


class GlobalSecondaryIndexProvisionedThroughput {
  /// Number of read capacity units for this index.
  final int? readCapacityUnits;
  /// Number of write capacity units for this index.
  final int? writeCapacityUnits;

  /// Creates a new [GlobalSecondaryIndexProvisionedThroughput].
  /// [readCapacityUnits] Number of read capacity units for this index.
  /// [writeCapacityUnits] Number of write capacity units for this index.
  GlobalSecondaryIndexProvisionedThroughput({
    this.readCapacityUnits,
    this.writeCapacityUnits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'readCapacityUnits': ?readCapacityUnits,
      'writeCapacityUnits': ?writeCapacityUnits,
    };
  }

  factory GlobalSecondaryIndexProvisionedThroughput.fromMap(Map<String, dynamic> map) {
    return GlobalSecondaryIndexProvisionedThroughput(
      readCapacityUnits: map['readCapacityUnits'] == null ? null : map['readCapacityUnits'] as int,
      writeCapacityUnits: map['writeCapacityUnits'] == null ? null : map['writeCapacityUnits'] as int,
    );
  }
}

