// ignore_for_file: unused_element, unnecessary_cast

class GetNetworkInsightsPathFilterAtSourceSourcePortRange {
  final int fromPort;
  final int toPort;

  GetNetworkInsightsPathFilterAtSourceSourcePortRange({
    required this.fromPort,
    required this.toPort,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fromPort'] = fromPort;
    map['toPort'] = toPort;
    return map;
  }

  factory GetNetworkInsightsPathFilterAtSourceSourcePortRange.fromMap(
      Map<String, dynamic> map) {
    return GetNetworkInsightsPathFilterAtSourceSourcePortRange(
      fromPort: map['fromPort'] as int,
      toPort: map['toPort'] as int,
    );
  }
}
