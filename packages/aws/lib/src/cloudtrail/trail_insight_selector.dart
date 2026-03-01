// ignore_for_file: unused_element, unnecessary_cast

class TrailInsightSelector {
  /// Type of insights to log on a trail. Valid values are: `ApiCallRateInsight` and `ApiErrorRateInsight`.
  final String insightType;

  /// Creates a new [TrailInsightSelector].
  /// [insightType] Type of insights to log on a trail. Valid values are: `ApiCallRateInsight` and `ApiErrorRateInsight`.
  TrailInsightSelector({required this.insightType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'insightType': insightType};
  }

  factory TrailInsightSelector.fromMap(Map<String, dynamic> map) {
    return TrailInsightSelector(insightType: map['insightType'] as String);
  }
}
