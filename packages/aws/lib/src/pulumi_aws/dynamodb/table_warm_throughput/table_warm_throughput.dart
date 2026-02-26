// ignore_for_file: unused_element, unnecessary_cast

class TableWarmThroughput {
  /// Number of read operations a table or index can instantaneously support. For the base table, decreasing this value will force a new resource. For a global secondary index, this value can be increased or decreased without recreation. Minimum value of <span pulumi-lang-nodejs="`12000`" pulumi-lang-dotnet="`12000`" pulumi-lang-go="`12000`" pulumi-lang-python="`12000`" pulumi-lang-yaml="`12000`" pulumi-lang-java="`12000`">`12000`</span> (default).
  final int? readUnitsPerSecond;

  /// Number of write operations a table or index can instantaneously support. For the base table, decreasing this value will force a new resource. For a global secondary index, this value can be increased or decreased without recreation. Minimum value of <span pulumi-lang-nodejs="`4000`" pulumi-lang-dotnet="`4000`" pulumi-lang-go="`4000`" pulumi-lang-python="`4000`" pulumi-lang-yaml="`4000`" pulumi-lang-java="`4000`">`4000`</span> (default).
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
