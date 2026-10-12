// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceTypeInstanceDisk {
  final pulumi.Input<int> count;
  final pulumi.Input<int> size;
  final pulumi.Input<String> type;

  /// Creates a new [GetInstanceTypeInstanceDisk].
  /// [count] Required.
  /// [size] Required.
  /// [type] Required.
  const GetInstanceTypeInstanceDisk({
    required this.count,
    required this.size,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'size': size,
      'type': type,
    };
  }

  factory GetInstanceTypeInstanceDisk.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypeInstanceDisk(
      count: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['count'])),
      size: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['size'])),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
