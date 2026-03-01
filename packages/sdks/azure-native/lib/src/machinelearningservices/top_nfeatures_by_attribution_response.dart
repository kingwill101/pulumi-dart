// ignore_for_file: unused_element, unnecessary_cast


class TopNFeaturesByAttributionResponse {
  /// Expected value is 'TopNByAttribution'.
  final String filterType;
  /// The number of top features to include.
  final int? top;

  /// Creates a new [TopNFeaturesByAttributionResponse].
  /// [filterType] Expected value is 'TopNByAttribution'.
  /// [top] The number of top features to include.
  TopNFeaturesByAttributionResponse({
    required this.filterType,
    this.top,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filterType': filterType,
      'top': ?top,
    };
  }

  factory TopNFeaturesByAttributionResponse.fromMap(Map<String, dynamic> map) {
    return TopNFeaturesByAttributionResponse(
      filterType: map['filterType'] as String,
      top: map['top'] == null ? null : map['top'] as int,
    );
  }
}

