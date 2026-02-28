// ignore_for_file: unused_element, unnecessary_cast

class DatascanDataQualitySpecPostScanActionsNotificationReportScoreThresholdTrigger {
  /// The score range is in [0,100].
  final double? scoreThreshold;

  /// Creates a new [DatascanDataQualitySpecPostScanActionsNotificationReportScoreThresholdTrigger].
  /// [scoreThreshold] The score range is in [0,100].
  DatascanDataQualitySpecPostScanActionsNotificationReportScoreThresholdTrigger({
    this.scoreThreshold,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final scoreThresholdValue = scoreThreshold;
    if (scoreThresholdValue != null) {
      map['scoreThreshold'] = scoreThresholdValue;
    }
    return map;
  }

  factory DatascanDataQualitySpecPostScanActionsNotificationReportScoreThresholdTrigger.fromMap(
      Map<String, dynamic> map) {
    return DatascanDataQualitySpecPostScanActionsNotificationReportScoreThresholdTrigger(
      scoreThreshold: map['scoreThreshold'] == null
          ? null
          : map['scoreThreshold'] as double,
    );
  }
}
