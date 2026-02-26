// ignore_for_file: unused_element, unnecessary_cast

class GetNetworkInsightsAnalysisReturnPathComponentInboundHeaderSourcePortRange {
  final int from;
  final int to;

  GetNetworkInsightsAnalysisReturnPathComponentInboundHeaderSourcePortRange({
    required this.from,
    required this.to,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['from'] = from;
    map['to'] = to;
    return map;
  }

  factory GetNetworkInsightsAnalysisReturnPathComponentInboundHeaderSourcePortRange.fromMap(
      Map<String, dynamic> map) {
    return GetNetworkInsightsAnalysisReturnPathComponentInboundHeaderSourcePortRange(
      from: map['from'] as int,
      to: map['to'] as int,
    );
  }
}
