// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CustomRoutingListenerPortRange {
  /// The first port in the range of ports, inclusive.
  final pulumi.Input<int?>? fromPort;
  /// The last port in the range of ports, inclusive.
  final pulumi.Input<int?>? toPort;

  /// Creates a new [CustomRoutingListenerPortRange].
  /// [fromPort] The first port in the range of ports, inclusive.
  /// [toPort] The last port in the range of ports, inclusive.
  const CustomRoutingListenerPortRange({
    this.fromPort,
    this.toPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fromPort': ?fromPort,
      'toPort': ?toPort,
    };
  }

  factory CustomRoutingListenerPortRange.fromMap(Map<String, dynamic> map) {
    return CustomRoutingListenerPortRange(
      fromPort: (() { final guardedValue = map['fromPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      toPort: (() { final guardedValue = map['toPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
