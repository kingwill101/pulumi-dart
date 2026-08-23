// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MediaInsightsPipelineConfigurationElementSqsQueueSinkConfiguration {
  /// SQS queue to deliver results.
  final pulumi.Input<String> insightsTarget;

  /// Creates a new [MediaInsightsPipelineConfigurationElementSqsQueueSinkConfiguration].
  /// [insightsTarget] SQS queue to deliver results.
  const MediaInsightsPipelineConfigurationElementSqsQueueSinkConfiguration({
    required this.insightsTarget,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'insightsTarget': insightsTarget,
    };
  }

  factory MediaInsightsPipelineConfigurationElementSqsQueueSinkConfiguration.fromMap(Map<String, dynamic> map) {
    return MediaInsightsPipelineConfigurationElementSqsQueueSinkConfiguration(
      insightsTarget: pulumi.Input.fromValue(map['insightsTarget'] as String),
    );
  }
}
