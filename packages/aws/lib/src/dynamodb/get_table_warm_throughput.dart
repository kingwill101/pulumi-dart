// ignore_for_file: unused_element, unnecessary_cast

class GetTableWarmThroughput {
  final int readUnitsPerSecond;
  final int writeUnitsPerSecond;

  /// Creates a new [GetTableWarmThroughput].
  /// [readUnitsPerSecond] Required.
  /// [writeUnitsPerSecond] Required.
  GetTableWarmThroughput({
    required this.readUnitsPerSecond,
    required this.writeUnitsPerSecond,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'readUnitsPerSecond': readUnitsPerSecond,
      'writeUnitsPerSecond': writeUnitsPerSecond,
    };
  }

  factory GetTableWarmThroughput.fromMap(Map<String, dynamic> map) {
    return GetTableWarmThroughput(
      readUnitsPerSecond: map['readUnitsPerSecond'] as int,
      writeUnitsPerSecond: map['writeUnitsPerSecond'] as int,
    );
  }
}
