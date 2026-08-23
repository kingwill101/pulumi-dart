// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TableGlobalSecondaryIndexWarmThroughput {
  /// Number of read operations a table or index can instantaneously support. For the base table, this value cannot be decreased. For a global secondary index, this value can be increased or decreased. Minimum value of `12000` (default).
  final pulumi.Input<int>? readUnitsPerSecond;
  /// Number of write operations a table or index can instantaneously support. For the base table, this value cannot be decreased. For a global secondary index, this value can be increased or decreased. Minimum value of `4000` (default).
  final pulumi.Input<int>? writeUnitsPerSecond;

  /// Creates a new [TableGlobalSecondaryIndexWarmThroughput].
  /// [readUnitsPerSecond] Number of read operations a table or index can instantaneously support. For the base table, this value cannot be decreased. For a global secondary index, this value can be increased or decreased. Minimum value of `12000` (default).
  /// [writeUnitsPerSecond] Number of write operations a table or index can instantaneously support. For the base table, this value cannot be decreased. For a global secondary index, this value can be increased or decreased. Minimum value of `4000` (default).
  const TableGlobalSecondaryIndexWarmThroughput({
    this.readUnitsPerSecond,
    this.writeUnitsPerSecond,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'readUnitsPerSecond': ?readUnitsPerSecond,
      'writeUnitsPerSecond': ?writeUnitsPerSecond,
    };
  }

  factory TableGlobalSecondaryIndexWarmThroughput.fromMap(Map<String, dynamic> map) {
    return TableGlobalSecondaryIndexWarmThroughput(
      readUnitsPerSecond: (() { final guardedValue = map['readUnitsPerSecond']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      writeUnitsPerSecond: (() { final guardedValue = map['writeUnitsPerSecond']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
