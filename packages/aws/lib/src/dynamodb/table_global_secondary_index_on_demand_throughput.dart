// ignore_for_file: unused_element, unnecessary_cast

class TableGlobalSecondaryIndexOnDemandThroughput {
  /// Maximum number of read request units for the specified table. To specify set the value greater than or equal to 1. To remove set the value to -1.
  final int? maxReadRequestUnits;

  /// Maximum number of write request units for the specified table. To specify set the value greater than or equal to 1. To remove set the value to -1.
  final int? maxWriteRequestUnits;

  /// Creates a new [TableGlobalSecondaryIndexOnDemandThroughput].
  /// [maxReadRequestUnits] Maximum number of read request units for the specified table. To specify set the value greater than or equal to 1. To remove set the value to -1.
  /// [maxWriteRequestUnits] Maximum number of write request units for the specified table. To specify set the value greater than or equal to 1. To remove set the value to -1.
  TableGlobalSecondaryIndexOnDemandThroughput({
    this.maxReadRequestUnits,
    this.maxWriteRequestUnits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxReadRequestUnits': ?maxReadRequestUnits,
      'maxWriteRequestUnits': ?maxWriteRequestUnits,
    };
  }

  factory TableGlobalSecondaryIndexOnDemandThroughput.fromMap(
    Map<String, dynamic> map,
  ) {
    return TableGlobalSecondaryIndexOnDemandThroughput(
      maxReadRequestUnits: map['maxReadRequestUnits'] == null
          ? null
          : map['maxReadRequestUnits'] as int,
      maxWriteRequestUnits: map['maxWriteRequestUnits'] == null
          ? null
          : map['maxWriteRequestUnits'] as int,
    );
  }
}
