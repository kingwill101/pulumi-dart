// ignore_for_file: unused_element, unnecessary_cast


class TopNFeaturesByAttribution {
  /// Expected value is 'TopNByAttribution'.
  final String filterType;
  /// The number of top features to include.
  final int? top;

  /// Creates a new [TopNFeaturesByAttribution].
  /// [filterType] Expected value is 'TopNByAttribution'.
  /// [top] The number of top features to include.
  TopNFeaturesByAttribution({
    required this.filterType,
    this.top,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filterType': filterType,
      'top': ?top,
    };
  }

  factory TopNFeaturesByAttribution.fromMap(Map<String, dynamic> map) {
    return TopNFeaturesByAttribution(
      filterType: map['filterType'] as String,
      top: map['top'] == null ? null : map['top'] as int,
    );
  }
}

