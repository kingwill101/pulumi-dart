// ignore_for_file: unused_element, unnecessary_cast

class GlobalSecondaryIndexProvisionedThroughput {
  /// Number of read capacity units for this index.
  final int? readCapacityUnits;

  /// Number of write capacity units for this index.
  final int? writeCapacityUnits;

  GlobalSecondaryIndexProvisionedThroughput({
    this.readCapacityUnits,
    this.writeCapacityUnits,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final readCapacityUnitsValue = readCapacityUnits;
    if (readCapacityUnitsValue != null) {
      map['readCapacityUnits'] = readCapacityUnitsValue;
    }
    final writeCapacityUnitsValue = writeCapacityUnits;
    if (writeCapacityUnitsValue != null) {
      map['writeCapacityUnits'] = writeCapacityUnitsValue;
    }
    return map;
  }

  factory GlobalSecondaryIndexProvisionedThroughput.fromMap(
      Map<String, dynamic> map) {
    return GlobalSecondaryIndexProvisionedThroughput(
      readCapacityUnits: map['readCapacityUnits'] == null
          ? null
          : map['readCapacityUnits'] as int,
      writeCapacityUnits: map['writeCapacityUnits'] == null
          ? null
          : map['writeCapacityUnits'] as int,
    );
  }
}
