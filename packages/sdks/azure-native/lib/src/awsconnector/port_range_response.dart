// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of PortRange
class PortRangeResponse {
  /// Property fromPort
  final pulumi.Input<int>? fromPort;

  /// Property toPort
  final pulumi.Input<int>? toPort;

  /// Creates a new [PortRangeResponse].
  /// [fromPort] Property fromPort
  /// [toPort] Property toPort
  PortRangeResponse({this.fromPort, this.toPort});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'fromPort': ?fromPort, 'toPort': ?toPort};
  }

  factory PortRangeResponse.fromMap(Map<String, dynamic> map) {
    return PortRangeResponse(
      fromPort: (() {
        final guardedValue = map['fromPort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      toPort: (() {
        final guardedValue = map['toPort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
