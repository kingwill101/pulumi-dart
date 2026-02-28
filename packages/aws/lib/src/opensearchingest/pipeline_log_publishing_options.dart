// ignore_for_file: unused_element, unnecessary_cast

import 'pipeline_log_publishing_options_cloudwatch_log_destination.dart';

class PipelineLogPublishingOptions {
  /// The destination for OpenSearch Ingestion logs sent to Amazon CloudWatch Logs. This parameter is required if IsLoggingEnabled is set to true. See `cloudwatch_log_destination` below.
  final PipelineLogPublishingOptionsCloudwatchLogDestination?
      cloudwatchLogDestination;

  /// Whether logs should be published.
  final bool? isLoggingEnabled;

  /// Creates a new [PipelineLogPublishingOptions].
  /// [cloudwatchLogDestination] The destination for OpenSearch Ingestion logs sent to Amazon CloudWatch Logs. This parameter is required if IsLoggingEnabled is set to true. See `cloudwatch_log_destination` below.
  /// [isLoggingEnabled] Whether logs should be published.
  PipelineLogPublishingOptions({
    this.cloudwatchLogDestination,
    this.isLoggingEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cloudwatchLogDestinationValue = cloudwatchLogDestination;
    if (cloudwatchLogDestinationValue != null) {
      map['cloudwatchLogDestination'] = cloudwatchLogDestinationValue.toMap();
    }
    final isLoggingEnabledValue = isLoggingEnabled;
    if (isLoggingEnabledValue != null) {
      map['isLoggingEnabled'] = isLoggingEnabledValue;
    }
    return map;
  }

  factory PipelineLogPublishingOptions.fromMap(Map<String, dynamic> map) {
    return PipelineLogPublishingOptions(
      cloudwatchLogDestination: map['cloudwatchLogDestination'] == null
          ? null
          : PipelineLogPublishingOptionsCloudwatchLogDestination.fromMap(
              (map['cloudwatchLogDestination'] as Map).cast<String, dynamic>()),
      isLoggingEnabled: map['isLoggingEnabled'] == null
          ? null
          : map['isLoggingEnabled'] as bool,
    );
  }
}
