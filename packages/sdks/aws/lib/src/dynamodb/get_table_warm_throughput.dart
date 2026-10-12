// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTableWarmThroughput {
  final pulumi.Input<int> readUnitsPerSecond;
  final pulumi.Input<int> writeUnitsPerSecond;

  /// Creates a new [GetTableWarmThroughput].
  /// [readUnitsPerSecond] Required.
  /// [writeUnitsPerSecond] Required.
  const GetTableWarmThroughput({
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
      readUnitsPerSecond: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['readUnitsPerSecond'])),
      writeUnitsPerSecond: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['writeUnitsPerSecond'])),
    );
  }
}
