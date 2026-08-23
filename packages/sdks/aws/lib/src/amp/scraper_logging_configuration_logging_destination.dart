// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scraper_logging_configuration_logging_destination_cloudwatch_logs.dart';

class ScraperLoggingConfigurationLoggingDestination {
  /// Configuration block for CloudWatch Logs destination. See `cloudwatchLogs` Block below.
  final pulumi.Input<ScraperLoggingConfigurationLoggingDestinationCloudwatchLogs> cloudwatchLogs;

  /// Creates a new [ScraperLoggingConfigurationLoggingDestination].
  /// [cloudwatchLogs] Configuration block for CloudWatch Logs destination. See `cloudwatchLogs` Block below.
  const ScraperLoggingConfigurationLoggingDestination({
    required this.cloudwatchLogs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudwatchLogs': pulumi.Input.mapInputValue<ScraperLoggingConfigurationLoggingDestinationCloudwatchLogs, Map<String, dynamic>>(cloudwatchLogs, (value) => value.toMap()),
    };
  }

  factory ScraperLoggingConfigurationLoggingDestination.fromMap(Map<String, dynamic> map) {
    return ScraperLoggingConfigurationLoggingDestination(
      cloudwatchLogs: pulumi.Input.fromValue(ScraperLoggingConfigurationLoggingDestinationCloudwatchLogs.fromMap((map['cloudwatchLogs']! as Map).cast<String, dynamic>())),
    );
  }
}
