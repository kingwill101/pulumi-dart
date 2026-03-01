// ignore_for_file: unused_element, unnecessary_cast


class GetNetworkInsightsPathFilterAtDestinationSourcePortRange {
  final int fromPort;
  final int toPort;

  /// Creates a new [GetNetworkInsightsPathFilterAtDestinationSourcePortRange].
  /// [fromPort] Required.
  /// [toPort] Required.
  GetNetworkInsightsPathFilterAtDestinationSourcePortRange({
    required this.fromPort,
    required this.toPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fromPort': fromPort,
      'toPort': toPort,
    };
  }

  factory GetNetworkInsightsPathFilterAtDestinationSourcePortRange.fromMap(Map<String, dynamic> map) {
    return GetNetworkInsightsPathFilterAtDestinationSourcePortRange(
      fromPort: map['fromPort'] as int,
      toPort: map['toPort'] as int,
    );
  }
}

