// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_log_publishing_options_cloudwatch_log_destination.dart';

class PipelineLogPublishingOptions {
  /// The destination for OpenSearch Ingestion logs sent to Amazon CloudWatch Logs. This parameter is required if IsLoggingEnabled is set to true. See `cloudwatchLogDestination` below.
  final pulumi.Input<PipelineLogPublishingOptionsCloudwatchLogDestination?>? cloudwatchLogDestination;
  /// Whether logs should be published.
  final pulumi.Input<bool?>? isLoggingEnabled;

  /// Creates a new [PipelineLogPublishingOptions].
  /// [cloudwatchLogDestination] The destination for OpenSearch Ingestion logs sent to Amazon CloudWatch Logs. This parameter is required if IsLoggingEnabled is set to true. See `cloudwatchLogDestination` below.
  /// [isLoggingEnabled] Whether logs should be published.
  const PipelineLogPublishingOptions({
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
      cloudwatchLogDestination: (() { final guardedValue = map['cloudwatchLogDestination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipelineLogPublishingOptionsCloudwatchLogDestination.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      isLoggingEnabled: (() { final guardedValue = map['isLoggingEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
