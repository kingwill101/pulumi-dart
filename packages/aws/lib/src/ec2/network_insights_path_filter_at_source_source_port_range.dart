// ignore_for_file: unused_element, unnecessary_cast


class NetworkInsightsPathFilterAtSourceSourcePortRange {
  /// The first port in the range.
  final int? fromPort;
  /// The last port in the range.
  final int? toPort;

  /// Creates a new [NetworkInsightsPathFilterAtSourceSourcePortRange].
  /// [fromPort] The first port in the range.
  /// [toPort] The last port in the range.
  NetworkInsightsPathFilterAtSourceSourcePortRange({
    this.fromPort,
    this.toPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fromPort': ?fromPort,
      'toPort': ?toPort,
    };
  }

  factory NetworkInsightsPathFilterAtSourceSourcePortRange.fromMap(Map<String, dynamic> map) {
    return NetworkInsightsPathFilterAtSourceSourcePortRange(
      fromPort: map['fromPort'] == null ? null : map['fromPort'] as int,
      toPort: map['toPort'] == null ? null : map['toPort'] as int,
    );
  }
}

