// ignore_for_file: unused_element, unnecessary_cast

class TrafficMirrorFilterRuleDestinationPortRange {
  /// Starting port of the range
  final int? fromPort;

  /// Ending port of the range
  final int? toPort;

  TrafficMirrorFilterRuleDestinationPortRange({
    this.fromPort,
    this.toPort,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fromPortValue = fromPort;
    if (fromPortValue != null) {
      map['fromPort'] = fromPortValue;
    }
    final toPortValue = toPort;
    if (toPortValue != null) {
      map['toPort'] = toPortValue;
    }
    return map;
  }

  factory TrafficMirrorFilterRuleDestinationPortRange.fromMap(
      Map<String, dynamic> map) {
    return TrafficMirrorFilterRuleDestinationPortRange(
      fromPort: map['fromPort'] == null ? null : map['fromPort'] as int,
      toPort: map['toPort'] == null ? null : map['toPort'] as int,
    );
  }
}
