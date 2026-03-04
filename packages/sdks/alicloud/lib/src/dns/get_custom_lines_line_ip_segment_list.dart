// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCustomLinesLineIpSegmentList {
  /// The end IP address of the CIDR block.
  final pulumi.Input<String> endIp;

  /// The start IP address of the CIDR block.
  final pulumi.Input<String> startIp;

  /// Creates a new [GetCustomLinesLineIpSegmentList].
  /// [endIp] The end IP address of the CIDR block.
  /// [startIp] The start IP address of the CIDR block.
  GetCustomLinesLineIpSegmentList({required this.endIp, required this.startIp});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'endIp': endIp, 'startIp': startIp};
  }

  factory GetCustomLinesLineIpSegmentList.fromMap(Map<String, dynamic> map) {
    return GetCustomLinesLineIpSegmentList(
      endIp: pulumi.Input.fromValue(map['endIp'] as String),
      startIp: pulumi.Input.fromValue(map['startIp'] as String),
    );
  }
}
