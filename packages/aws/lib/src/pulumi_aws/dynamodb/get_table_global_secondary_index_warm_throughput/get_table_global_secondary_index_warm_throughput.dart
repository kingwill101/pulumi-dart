// ignore_for_file: unused_element, unnecessary_cast

class GetTableGlobalSecondaryIndexWarmThroughput {
  final int readUnitsPerSecond;
  final int writeUnitsPerSecond;

  GetTableGlobalSecondaryIndexWarmThroughput({
    required this.readUnitsPerSecond,
    required this.writeUnitsPerSecond,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['readUnitsPerSecond'] = readUnitsPerSecond;
    map['writeUnitsPerSecond'] = writeUnitsPerSecond;
    return map;
  }

  factory GetTableGlobalSecondaryIndexWarmThroughput.fromMap(
      Map<String, dynamic> map) {
    return GetTableGlobalSecondaryIndexWarmThroughput(
      readUnitsPerSecond: map['readUnitsPerSecond'] as int,
      writeUnitsPerSecond: map['writeUnitsPerSecond'] as int,
    );
  }
}
