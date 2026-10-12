// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TableCapacitySpecification {
  /// Throughput capacity specified for read operations defined in read capacity units (RCUs).
  final pulumi.Input<int?>? readCapacityUnits;
  /// Read/write throughput capacity mode for a table. Valid values: `PAY_PER_REQUEST`, `PROVISIONED`. The default value is `PAY_PER_REQUEST`.
  final pulumi.Input<String?>? throughputMode;
  /// Throughput capacity specified for write operations defined in write capacity units (WCUs).
  final pulumi.Input<int?>? writeCapacityUnits;

  /// Creates a new [TableCapacitySpecification].
  /// [readCapacityUnits] Throughput capacity specified for read operations defined in read capacity units (RCUs).
  /// [throughputMode] Read/write throughput capacity mode for a table. Valid values: `PAY_PER_REQUEST`, `PROVISIONED`. The default value is `PAY_PER_REQUEST`.
  /// [writeCapacityUnits] Throughput capacity specified for write operations defined in write capacity units (WCUs).
  const TableCapacitySpecification({
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
      readCapacityUnits: (() { final guardedValue = map['readCapacityUnits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      throughputMode: (() { final guardedValue = map['throughputMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      writeCapacityUnits: (() { final guardedValue = map['writeCapacityUnits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
