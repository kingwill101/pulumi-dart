// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MediaInsightsPipelineConfigurationElementLambdaFunctionSinkConfiguration {
  /// Lambda Function to deliver results.
  final pulumi.Input<String> insightsTarget;

  /// Creates a new [MediaInsightsPipelineConfigurationElementLambdaFunctionSinkConfiguration].
  /// [insightsTarget] Lambda Function to deliver results.
  const MediaInsightsPipelineConfigurationElementLambdaFunctionSinkConfiguration({
    required this.insightsTarget,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'insightsTarget': insightsTarget,
    };
  }

  factory MediaInsightsPipelineConfigurationElementLambdaFunctionSinkConfiguration.fromMap(Map<String, dynamic> map) {
    return MediaInsightsPipelineConfigurationElementLambdaFunctionSinkConfiguration(
      insightsTarget: pulumi.Input.fromValue(map['insightsTarget'] as String),
    );
  }
}
