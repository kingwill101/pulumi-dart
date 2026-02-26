// ignore_for_file: unused_element, unnecessary_cast

class GetNetworkInsightsAnalysisForwardPathComponentOutboundHeaderSourcePortRange {
  final int from;
  final int to;

  GetNetworkInsightsAnalysisForwardPathComponentOutboundHeaderSourcePortRange({
    required this.from,
    required this.to,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['from'] = from;
    map['to'] = to;
    return map;
  }

  factory GetNetworkInsightsAnalysisForwardPathComponentOutboundHeaderSourcePortRange.fromMap(
      Map<String, dynamic> map) {
    return GetNetworkInsightsAnalysisForwardPathComponentOutboundHeaderSourcePortRange(
      from: map['from'] as int,
      to: map['to'] as int,
    );
  }
}
