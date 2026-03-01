// ignore_for_file: unused_element, unnecessary_cast


class GetNetworkInsightsPathFilterAtSourceDestinationPortRange {
  final int fromPort;
  final int toPort;

  /// Creates a new [GetNetworkInsightsPathFilterAtSourceDestinationPortRange].
  /// [fromPort] Required.
  /// [toPort] Required.
  GetNetworkInsightsPathFilterAtSourceDestinationPortRange({
    required this.fromPort,
    required this.toPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fromPort': fromPort,
      'toPort': toPort,
    };
  }

  factory GetNetworkInsightsPathFilterAtSourceDestinationPortRange.fromMap(Map<String, dynamic> map) {
    return GetNetworkInsightsPathFilterAtSourceDestinationPortRange(
      fromPort: map['fromPort'] as int,
      toPort: map['toPort'] as int,
    );
  }
}

