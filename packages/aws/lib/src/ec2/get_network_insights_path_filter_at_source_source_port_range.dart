// ignore_for_file: unused_element, unnecessary_cast


class GetNetworkInsightsPathFilterAtSourceSourcePortRange {
  final int fromPort;
  final int toPort;

  /// Creates a new [GetNetworkInsightsPathFilterAtSourceSourcePortRange].
  /// [fromPort] Required.
  /// [toPort] Required.
  GetNetworkInsightsPathFilterAtSourceSourcePortRange({
    required this.fromPort,
    required this.toPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fromPort': fromPort,
      'toPort': toPort,
    };
  }

  factory GetNetworkInsightsPathFilterAtSourceSourcePortRange.fromMap(Map<String, dynamic> map) {
    return GetNetworkInsightsPathFilterAtSourceSourcePortRange(
      fromPort: map['fromPort'] as int,
      toPort: map['toPort'] as int,
    );
  }
}

