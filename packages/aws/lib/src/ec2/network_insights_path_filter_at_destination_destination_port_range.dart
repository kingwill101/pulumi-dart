// ignore_for_file: unused_element, unnecessary_cast

class NetworkInsightsPathFilterAtDestinationDestinationPortRange {
  /// The first port in the range.
  final int? fromPort;

  /// The last port in the range.
  final int? toPort;

  /// Creates a new [NetworkInsightsPathFilterAtDestinationDestinationPortRange].
  /// [fromPort] The first port in the range.
  /// [toPort] The last port in the range.
  NetworkInsightsPathFilterAtDestinationDestinationPortRange({
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

  factory NetworkInsightsPathFilterAtDestinationDestinationPortRange.fromMap(
      Map<String, dynamic> map) {
    return NetworkInsightsPathFilterAtDestinationDestinationPortRange(
      fromPort: map['fromPort'] == null ? null : map['fromPort'] as int,
      toPort: map['toPort'] == null ? null : map['toPort'] as int,
    );
  }
}
