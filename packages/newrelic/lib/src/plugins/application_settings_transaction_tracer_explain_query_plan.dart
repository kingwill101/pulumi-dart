// ignore_for_file: unused_element, unnecessary_cast


class ApplicationSettingsTransactionTracerExplainQueryPlan {
  /// The type of threshold for query plans. Valid values are `VALUE`,`APDEX_F`(4 times your apdex target)
  final String? queryPlanThresholdType;
  /// The response time threshold for capturing query plans(in seconds).
  final double? queryPlanThresholdValue;

  /// Creates a new [ApplicationSettingsTransactionTracerExplainQueryPlan].
  /// [queryPlanThresholdType] The type of threshold for query plans. Valid values are `VALUE`,`APDEX_F`(4 times your apdex target)
  /// [queryPlanThresholdValue] The response time threshold for capturing query plans(in seconds).
  ApplicationSettingsTransactionTracerExplainQueryPlan({
    this.queryPlanThresholdType,
    this.queryPlanThresholdValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'queryPlanThresholdType': ?queryPlanThresholdType,
      'queryPlanThresholdValue': ?queryPlanThresholdValue,
    };
  }

  factory ApplicationSettingsTransactionTracerExplainQueryPlan.fromMap(Map<String, dynamic> map) {
    return ApplicationSettingsTransactionTracerExplainQueryPlan(
      queryPlanThresholdType: map['queryPlanThresholdType'] == null ? null : map['queryPlanThresholdType'] as String,
      queryPlanThresholdValue: map['queryPlanThresholdValue'] == null ? null : map['queryPlanThresholdValue'] as double,
    );
  }
}

