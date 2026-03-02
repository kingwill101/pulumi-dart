// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_log_publishing_options_cloudwatch_log_destination.dart';

class PipelineLogPublishingOptions {
  /// The destination for OpenSearch Ingestion logs sent to Amazon CloudWatch Logs. This parameter is required if IsLoggingEnabled is set to true. See `cloudwatch_log_destination` below.
  final pulumi.Input<PipelineLogPublishingOptionsCloudwatchLogDestination>? cloudwatchLogDestination;
  /// Whether logs should be published.
  final pulumi.Input<bool>? isLoggingEnabled;

  /// Creates a new [PipelineLogPublishingOptions].
  /// [cloudwatchLogDestination] The destination for OpenSearch Ingestion logs sent to Amazon CloudWatch Logs. This parameter is required if IsLoggingEnabled is set to true. See `cloudwatch_log_destination` below.
  /// [isLoggingEnabled] Whether logs should be published.
  PipelineLogPublishingOptions({
    this.cloudwatchLogDestination,
    this.isLoggingEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudwatchLogDestination': ?pulumi.Input.mapOptionalInputValue<PipelineLogPublishingOptionsCloudwatchLogDestination, Map<String, dynamic>>(cloudwatchLogDestination, (value) => value.toMap()),
      'isLoggingEnabled': ?isLoggingEnabled,
    };
  }

  factory PipelineLogPublishingOptions.fromMap(Map<String, dynamic> map) {
    return PipelineLogPublishingOptions(
      cloudwatchLogDestination: map['cloudwatchLogDestination'] == null ? null : (PipelineLogPublishingOptionsCloudwatchLogDestination.fromMap((map['cloudwatchLogDestination'] as Map).cast<String, dynamic>())).input(),
      isLoggingEnabled: map['isLoggingEnabled'] == null ? null : (map['isLoggingEnabled'] as bool).input(),
    );
  }
}

