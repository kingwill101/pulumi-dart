// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkInsightsPathFilterAtDestinationDestinationPortRange {
  /// The first port in the range.
  final pulumi.Input<int?>? fromPort;
  /// The last port in the range.
  final pulumi.Input<int?>? toPort;

  /// Creates a new [NetworkInsightsPathFilterAtDestinationDestinationPortRange].
  /// [fromPort] The first port in the range.
  /// [toPort] The last port in the range.
  const NetworkInsightsPathFilterAtDestinationDestinationPortRange({
    this.fromPort,
    this.toPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fromPort': ?fromPort,
      'toPort': ?toPort,
    };
  }

  factory NetworkInsightsPathFilterAtDestinationDestinationPortRange.fromMap(Map<String, dynamic> map) {
    return NetworkInsightsPathFilterAtDestinationDestinationPortRange(
      fromPort: (() { final guardedValue = map['fromPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      toPort: (() { final guardedValue = map['toPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
