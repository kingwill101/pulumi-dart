// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GlobalSecondaryIndexWarmThroughput {
  /// Number of read operations this index can instantaneously support.
  final pulumi.Input<int> readUnitsPerSecond;
  /// Number of write operations this index can instantaneously support.
  final pulumi.Input<int> writeUnitsPerSecond;

  /// Creates a new [GlobalSecondaryIndexWarmThroughput].
  /// [readUnitsPerSecond] Number of read operations this index can instantaneously support.
  /// [writeUnitsPerSecond] Number of write operations this index can instantaneously support.
  const GlobalSecondaryIndexWarmThroughput({
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
      readUnitsPerSecond: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['readUnitsPerSecond'])),
      writeUnitsPerSecond: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['writeUnitsPerSecond'])),
    );
  }
}
