// ignore_for_file: unused_element, unnecessary_cast

class GetNetworkInsightsAnalysisAlternatePathHint {
  final String componentArn;
  final String componentId;

  /// Creates a new [GetNetworkInsightsAnalysisAlternatePathHint].
  /// [componentArn] Required.
  /// [componentId] Required.
  GetNetworkInsightsAnalysisAlternatePathHint({
    required this.componentArn,
    required this.componentId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['componentArn'] = componentArn;
    map['componentId'] = componentId;
    return map;
  }

  factory GetNetworkInsightsAnalysisAlternatePathHint.fromMap(
      Map<String, dynamic> map) {
    return GetNetworkInsightsAnalysisAlternatePathHint(
      componentArn: map['componentArn'] as String,
      componentId: map['componentId'] as String,
    );
  }
}
