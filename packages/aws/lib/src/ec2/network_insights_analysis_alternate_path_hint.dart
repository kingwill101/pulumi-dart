// ignore_for_file: unused_element, unnecessary_cast

class NetworkInsightsAnalysisAlternatePathHint {
  /// The Amazon Resource Name (ARN) of the component.
  final String? componentArn;

  /// The ID of the component.
  final String? componentId;

  /// Creates a new [NetworkInsightsAnalysisAlternatePathHint].
  /// [componentArn] The Amazon Resource Name (ARN) of the component.
  /// [componentId] The ID of the component.
  NetworkInsightsAnalysisAlternatePathHint({
    this.componentArn,
    this.componentId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final componentArnValue = componentArn;
    if (componentArnValue != null) {
      map['componentArn'] = componentArnValue;
    }
    final componentIdValue = componentId;
    if (componentIdValue != null) {
      map['componentId'] = componentIdValue;
    }
    return map;
  }

  factory NetworkInsightsAnalysisAlternatePathHint.fromMap(
      Map<String, dynamic> map) {
    return NetworkInsightsAnalysisAlternatePathHint(
      componentArn:
          map['componentArn'] == null ? null : map['componentArn'] as String,
      componentId:
          map['componentId'] == null ? null : map['componentId'] as String,
    );
  }
}
