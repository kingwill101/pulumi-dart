// ignore_for_file: unused_element, unnecessary_cast

class MediaInsightsPipelineConfigurationElementLambdaFunctionSinkConfiguration {
  /// Lambda Function to deliver results.
  final String insightsTarget;

  /// Creates a new [MediaInsightsPipelineConfigurationElementLambdaFunctionSinkConfiguration].
  /// [insightsTarget] Lambda Function to deliver results.
  MediaInsightsPipelineConfigurationElementLambdaFunctionSinkConfiguration({
    required this.insightsTarget,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['insightsTarget'] = insightsTarget;
    return map;
  }

  factory MediaInsightsPipelineConfigurationElementLambdaFunctionSinkConfiguration.fromMap(
      Map<String, dynamic> map) {
    return MediaInsightsPipelineConfigurationElementLambdaFunctionSinkConfiguration(
      insightsTarget: map['insightsTarget'] as String,
    );
  }
}
