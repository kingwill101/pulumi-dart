// ignore_for_file: unused_element, unnecessary_cast

class TableWarmThroughput {
  /// Number of read operations a table or index can instantaneously support. For the base table, decreasing this value will force a new resource. For a global secondary index, this value can be increased or decreased without recreation. Minimum value of `12000` (default).
  final int? readUnitsPerSecond;

  /// Number of write operations a table or index can instantaneously support. For the base table, decreasing this value will force a new resource. For a global secondary index, this value can be increased or decreased without recreation. Minimum value of `4000` (default).
  final int? writeUnitsPerSecond;

  TableWarmThroughput({
    this.readUnitsPerSecond,
    this.writeUnitsPerSecond,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final readUnitsPerSecondValue = readUnitsPerSecond;
    if (readUnitsPerSecondValue != null) {
      map['readUnitsPerSecond'] = readUnitsPerSecondValue;
    }
    final writeUnitsPerSecondValue = writeUnitsPerSecond;
    if (writeUnitsPerSecondValue != null) {
      map['writeUnitsPerSecond'] = writeUnitsPerSecondValue;
    }
    return map;
  }

  factory TableWarmThroughput.fromMap(Map<String, dynamic> map) {
    return TableWarmThroughput(
      readUnitsPerSecond: map['readUnitsPerSecond'] == null
          ? null
          : map['readUnitsPerSecond'] as int,
      writeUnitsPerSecond: map['writeUnitsPerSecond'] == null
          ? null
          : map['writeUnitsPerSecond'] as int,
    );
  }
}
