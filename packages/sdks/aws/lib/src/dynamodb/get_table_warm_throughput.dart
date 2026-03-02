// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTableWarmThroughput {
  final pulumi.Input<int> readUnitsPerSecond;
  final pulumi.Input<int> writeUnitsPerSecond;

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
      readUnitsPerSecond: (map['readUnitsPerSecond'] as int).input(),
      writeUnitsPerSecond: (map['writeUnitsPerSecond'] as int).input(),
    );
  }
}

