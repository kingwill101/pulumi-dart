// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MediaInsightsPipelineConfigurationElementSnsTopicSinkConfiguration {
  /// SNS topic to deliver results.
  final pulumi.Input<String> insightsTarget;

  /// Creates a new [MediaInsightsPipelineConfigurationElementSnsTopicSinkConfiguration].
  /// [insightsTarget] SNS topic to deliver results.
  MediaInsightsPipelineConfigurationElementSnsTopicSinkConfiguration({
    required this.insightsTarget,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'insightsTarget': insightsTarget};
  }

  factory MediaInsightsPipelineConfigurationElementSnsTopicSinkConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return MediaInsightsPipelineConfigurationElementSnsTopicSinkConfiguration(
      insightsTarget: pulumi.Input.fromValue(map['insightsTarget'] as String),
    );
  }
}
