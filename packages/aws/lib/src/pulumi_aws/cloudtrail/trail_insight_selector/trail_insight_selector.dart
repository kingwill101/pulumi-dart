// ignore_for_file: unused_element, unnecessary_cast

class TrailInsightSelector {
  /// Type of insights to log on a trail. Valid values are: `ApiCallRateInsight` and `ApiErrorRateInsight`.
  final String insightType;

  TrailInsightSelector({
    required this.insightType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['insightType'] = insightType;
    return map;
  }

  factory TrailInsightSelector.fromMap(Map<String, dynamic> map) {
    return TrailInsightSelector(
      insightType: map['insightType'] as String,
    );
  }
}
