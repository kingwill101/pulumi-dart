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
    return <String, dynamic>{
      'componentArn': ?componentArn,
      'componentId': ?componentId,
    };
  }

  factory NetworkInsightsAnalysisAlternatePathHint.fromMap(
    Map<String, dynamic> map,
  ) {
    return NetworkInsightsAnalysisAlternatePathHint(
      componentArn: map['componentArn'] == null
          ? null
          : map['componentArn'] as String,
      componentId: map['componentId'] == null
          ? null
          : map['componentId'] as String,
    );
  }
}
