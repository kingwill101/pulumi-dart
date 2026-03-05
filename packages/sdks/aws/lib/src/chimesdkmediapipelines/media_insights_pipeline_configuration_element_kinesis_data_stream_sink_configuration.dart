// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MediaInsightsPipelineConfigurationElementKinesisDataStreamSinkConfiguration {
  /// Kinesis Data Stream to deliver results.
  final pulumi.Input<String> insightsTarget;

  /// Creates a new [MediaInsightsPipelineConfigurationElementKinesisDataStreamSinkConfiguration].
  /// [insightsTarget] Kinesis Data Stream to deliver results.
  MediaInsightsPipelineConfigurationElementKinesisDataStreamSinkConfiguration({
    required this.insightsTarget,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'insightsTarget': insightsTarget,
    };
  }

  factory MediaInsightsPipelineConfigurationElementKinesisDataStreamSinkConfiguration.fromMap(Map<String, dynamic> map) {
    return MediaInsightsPipelineConfigurationElementKinesisDataStreamSinkConfiguration(
      insightsTarget: pulumi.Input.fromValue(map['insightsTarget'] as String),
    );
  }
}

