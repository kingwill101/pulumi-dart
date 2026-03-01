// ignore_for_file: unused_element, unnecessary_cast

class GlobalSecondaryIndexWarmThroughput {
  /// Number of read operations this index can instantaneously support.
  final int readUnitsPerSecond;

  /// Number of write operations this index can instantaneously support.
  final int writeUnitsPerSecond;

  /// Creates a new [GlobalSecondaryIndexWarmThroughput].
  /// [readUnitsPerSecond] Number of read operations this index can instantaneously support.
  /// [writeUnitsPerSecond] Number of write operations this index can instantaneously support.
  GlobalSecondaryIndexWarmThroughput({
    required this.readUnitsPerSecond,
    required this.writeUnitsPerSecond,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'readUnitsPerSecond': readUnitsPerSecond,
      'writeUnitsPerSecond': writeUnitsPerSecond,
    };
  }

  factory GlobalSecondaryIndexWarmThroughput.fromMap(Map<String, dynamic> map) {
    return GlobalSecondaryIndexWarmThroughput(
      readUnitsPerSecond: map['readUnitsPerSecond'] as int,
      writeUnitsPerSecond: map['writeUnitsPerSecond'] as int,
    );
  }
}
