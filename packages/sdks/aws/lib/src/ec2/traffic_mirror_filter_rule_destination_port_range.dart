// ignore_for_file: unused_element, unnecessary_cast


class TrafficMirrorFilterRuleDestinationPortRange {
  /// Starting port of the range
  final int? fromPort;
  /// Ending port of the range
  final int? toPort;

  /// Creates a new [TrafficMirrorFilterRuleDestinationPortRange].
  /// [fromPort] Starting port of the range
  /// [toPort] Ending port of the range
  TrafficMirrorFilterRuleDestinationPortRange({
    this.fromPort,
    this.toPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fromPort': ?fromPort,
      'toPort': ?toPort,
    };
  }

  factory TrafficMirrorFilterRuleDestinationPortRange.fromMap(Map<String, dynamic> map) {
    return TrafficMirrorFilterRuleDestinationPortRange(
      fromPort: map['fromPort'] == null ? null : map['fromPort'] as int,
      toPort: map['toPort'] == null ? null : map['toPort'] as int,
    );
  }
}

