// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TableGlobalSecondaryIndexWarmThroughput {
  /// Number of read operations a table or index can instantaneously support. For the base table, decreasing this value will force a new resource. For a global secondary index, this value can be increased or decreased without recreation. Minimum value of `12000` (default).
  final pulumi.Input<int>? readUnitsPerSecond;
  /// Number of write operations a table or index can instantaneously support. For the base table, decreasing this value will force a new resource. For a global secondary index, this value can be increased or decreased without recreation. Minimum value of `4000` (default).
  final pulumi.Input<int>? writeUnitsPerSecond;

  /// Creates a new [TableGlobalSecondaryIndexWarmThroughput].
  /// [readUnitsPerSecond] Number of read operations a table or index can instantaneously support. For the base table, decreasing this value will force a new resource. For a global secondary index, this value can be increased or decreased without recreation. Minimum value of `12000` (default).
  /// [writeUnitsPerSecond] Number of write operations a table or index can instantaneously support. For the base table, decreasing this value will force a new resource. For a global secondary index, this value can be increased or decreased without recreation. Minimum value of `4000` (default).
  TableGlobalSecondaryIndexWarmThroughput({
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
      readUnitsPerSecond: map['readUnitsPerSecond'] == null ? null : (map['readUnitsPerSecond'] as int).input(),
      writeUnitsPerSecond: map['writeUnitsPerSecond'] == null ? null : (map['writeUnitsPerSecond'] as int).input(),
    );
  }
}

