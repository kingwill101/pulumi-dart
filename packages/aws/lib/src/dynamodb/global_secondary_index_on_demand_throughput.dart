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
    final map = <String, dynamic>{};
    final maxReadRequestUnitsValue = maxReadRequestUnits;
    if (maxReadRequestUnitsValue != null) {
      map['maxReadRequestUnits'] = maxReadRequestUnitsValue;
    }
    final maxWriteRequestUnitsValue = maxWriteRequestUnits;
    if (maxWriteRequestUnitsValue != null) {
      map['maxWriteRequestUnits'] = maxWriteRequestUnitsValue;
    }
    return map;
  }

  factory GlobalSecondaryIndexOnDemandThroughput.fromMap(
      Map<String, dynamic> map) {
    return GlobalSecondaryIndexOnDemandThroughput(
      maxReadRequestUnits: map['maxReadRequestUnits'] == null
          ? null
          : map['maxReadRequestUnits'] as int,
      maxWriteRequestUnits: map['maxWriteRequestUnits'] == null
          ? null
          : map['maxWriteRequestUnits'] as int,
    );
  }
}
