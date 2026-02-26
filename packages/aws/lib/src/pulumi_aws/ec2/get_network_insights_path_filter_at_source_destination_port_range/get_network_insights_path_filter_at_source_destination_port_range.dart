// ignore_for_file: unused_element, unnecessary_cast

class GetNetworkInsightsPathFilterAtSourceDestinationPortRange {
  final int fromPort;
  final int toPort;

  GetNetworkInsightsPathFilterAtSourceDestinationPortRange({
    required this.fromPort,
    required this.toPort,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fromPort'] = fromPort;
    map['toPort'] = toPort;
    return map;
  }

  factory GetNetworkInsightsPathFilterAtSourceDestinationPortRange.fromMap(
      Map<String, dynamic> map) {
    return GetNetworkInsightsPathFilterAtSourceDestinationPortRange(
      fromPort: map['fromPort'] as int,
      toPort: map['toPort'] as int,
    );
  }
}
