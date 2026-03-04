// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TrafficMirrorFilterRuleSourcePortRange {
  /// Starting port of the range
  final pulumi.Input<int>? fromPort;

  /// Ending port of the range
  final pulumi.Input<int>? toPort;

  /// Creates a new [TrafficMirrorFilterRuleSourcePortRange].
  /// [fromPort] Starting port of the range
  /// [toPort] Ending port of the range
  TrafficMirrorFilterRuleSourcePortRange({this.fromPort, this.toPort});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'fromPort': ?fromPort, 'toPort': ?toPort};
  }

  factory TrafficMirrorFilterRuleSourcePortRange.fromMap(
    Map<String, dynamic> map,
  ) {
    return TrafficMirrorFilterRuleSourcePortRange(
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
