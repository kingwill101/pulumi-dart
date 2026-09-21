// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTableGlobalSecondaryIndexWarmThroughput {
  final pulumi.Input<int> readUnitsPerSecond;
  final pulumi.Input<int> writeUnitsPerSecond;

  /// Creates a new [GetTableGlobalSecondaryIndexWarmThroughput].
  /// [readUnitsPerSecond] Required.
  /// [writeUnitsPerSecond] Required.
  const GetTableGlobalSecondaryIndexWarmThroughput({
    required this.readUnitsPerSecond,
    required this.writeUnitsPerSecond,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'readUnitsPerSecond': readUnitsPerSecond,
      'writeUnitsPerSecond': writeUnitsPerSecond,
    };
  }

  factory GetTableGlobalSecondaryIndexWarmThroughput.fromMap(Map<String, dynamic> map) {
    return GetTableGlobalSecondaryIndexWarmThroughput(
      readUnitsPerSecond: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['readUnitsPerSecond'])),
      writeUnitsPerSecond: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['writeUnitsPerSecond'])),
    );
  }
}
