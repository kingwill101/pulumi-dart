// ignore_for_file: unused_element, unnecessary_cast

class TrafficMirrorFilterRuleSourcePortRange {
  /// Starting port of the range
  final int? fromPort;

  /// Ending port of the range
  final int? toPort;

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
      fromPort: map['fromPort'] == null ? null : map['fromPort'] as int,
      toPort: map['toPort'] == null ? null : map['toPort'] as int,
    );
  }
}
