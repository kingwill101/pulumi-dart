// ignore_for_file: unused_element, unnecessary_cast

class GetTableGlobalSecondaryIndexWarmThroughput {
  final int readUnitsPerSecond;
  final int writeUnitsPerSecond;

  /// Creates a new [GetTableGlobalSecondaryIndexWarmThroughput].
  /// [readUnitsPerSecond] Required.
  /// [writeUnitsPerSecond] Required.
  GetTableGlobalSecondaryIndexWarmThroughput({
    required this.readUnitsPerSecond,
    required this.writeUnitsPerSecond,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'readUnitsPerSecond': readUnitsPerSecond,
      'writeUnitsPerSecond': writeUnitsPerSecond,
    };
  }

  factory GetTableGlobalSecondaryIndexWarmThroughput.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetTableGlobalSecondaryIndexWarmThroughput(
      readUnitsPerSecond: map['readUnitsPerSecond'] as int,
      writeUnitsPerSecond: map['writeUnitsPerSecond'] as int,
    );
  }
}
