// ignore_for_file: unused_element, unnecessary_cast

class TableCapacitySpecification {
  /// The throughput capacity specified for read operations defined in read capacity units (RCUs).
  final int? readCapacityUnits;

  /// The read/write throughput capacity mode for a table. Valid values: `PAY_PER_REQUEST`, `PROVISIONED`. The default value is `PAY_PER_REQUEST`.
  final String? throughputMode;

  /// The throughput capacity specified for write operations defined in write capacity units (WCUs).
  final int? writeCapacityUnits;

  /// Creates a new [TableCapacitySpecification].
  /// [readCapacityUnits] The throughput capacity specified for read operations defined in read capacity units (RCUs).
  /// [throughputMode] The read/write throughput capacity mode for a table. Valid values: `PAY_PER_REQUEST`, `PROVISIONED`. The default value is `PAY_PER_REQUEST`.
  /// [writeCapacityUnits] The throughput capacity specified for write operations defined in write capacity units (WCUs).
  TableCapacitySpecification({
    this.readCapacityUnits,
    this.throughputMode,
    this.writeCapacityUnits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'readCapacityUnits': ?readCapacityUnits,
      'throughputMode': ?throughputMode,
      'writeCapacityUnits': ?writeCapacityUnits,
    };
  }

  factory TableCapacitySpecification.fromMap(Map<String, dynamic> map) {
    return TableCapacitySpecification(
      readCapacityUnits: map['readCapacityUnits'] == null
          ? null
          : map['readCapacityUnits'] as int,
      throughputMode: map['throughputMode'] == null
          ? null
          : map['throughputMode'] as String,
      writeCapacityUnits: map['writeCapacityUnits'] == null
          ? null
          : map['writeCapacityUnits'] as int,
    );
  }
}
