// ignore_for_file: unused_element, unnecessary_cast

class GetNetworkInsightsPathFilterAtDestinationDestinationPortRange {
  final int fromPort;
  final int toPort;

  /// Creates a new [GetNetworkInsightsPathFilterAtDestinationDestinationPortRange].
  /// [fromPort] Required.
  /// [toPort] Required.
  GetNetworkInsightsPathFilterAtDestinationDestinationPortRange({
    required this.fromPort,
    required this.toPort,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fromPort'] = fromPort;
    map['toPort'] = toPort;
    return map;
  }

  factory GetNetworkInsightsPathFilterAtDestinationDestinationPortRange.fromMap(
      Map<String, dynamic> map) {
    return GetNetworkInsightsPathFilterAtDestinationDestinationPortRange(
      fromPort: map['fromPort'] as int,
      toPort: map['toPort'] as int,
    );
  }
}
