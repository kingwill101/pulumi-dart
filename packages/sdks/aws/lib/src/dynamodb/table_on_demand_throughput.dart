// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TableOnDemandThroughput {
  /// Maximum number of read request units for the specified table. To specify set the value greater than or equal to 1. To remove set the value to -1.
  final pulumi.Input<int?>? maxReadRequestUnits;
  /// Maximum number of write request units for the specified table. To specify set the value greater than or equal to 1. To remove set the value to -1.
  final pulumi.Input<int?>? maxWriteRequestUnits;

  /// Creates a new [TableOnDemandThroughput].
  /// [maxReadRequestUnits] Maximum number of read request units for the specified table. To specify set the value greater than or equal to 1. To remove set the value to -1.
  /// [maxWriteRequestUnits] Maximum number of write request units for the specified table. To specify set the value greater than or equal to 1. To remove set the value to -1.
  const TableOnDemandThroughput({
    this.maxReadRequestUnits,
    this.maxWriteRequestUnits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxReadRequestUnits': ?maxReadRequestUnits,
      'maxWriteRequestUnits': ?maxWriteRequestUnits,
    };
  }

  factory TableOnDemandThroughput.fromMap(Map<String, dynamic> map) {
    return TableOnDemandThroughput(
      maxReadRequestUnits: (() { final guardedValue = map['maxReadRequestUnits']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      maxWriteRequestUnits: (() { final guardedValue = map['maxWriteRequestUnits']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
