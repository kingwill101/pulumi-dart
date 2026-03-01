// ignore_for_file: unused_element, unnecessary_cast

import 'query_logging_configuration_destination_cloudwatch_logs.dart';
import 'query_logging_configuration_destination_filters.dart';

class QueryLoggingConfigurationDestination {
  /// Configuration block for CloudWatch Logs destination. See `cloudwatch_logs`.
  final QueryLoggingConfigurationDestinationCloudwatchLogs cloudwatchLogs;
  /// A list of filter configurations that specify which logs should be sent to the destination. See `filters`.
  final QueryLoggingConfigurationDestinationFilters filters;

  /// Creates a new [QueryLoggingConfigurationDestination].
  /// [cloudwatchLogs] Configuration block for CloudWatch Logs destination. See `cloudwatch_logs`.
  /// [filters] A list of filter configurations that specify which logs should be sent to the destination. See `filters`.
  QueryLoggingConfigurationDestination({
    required this.cloudwatchLogs,
    required this.filters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudwatchLogs': cloudwatchLogs.toMap(),
      'filters': filters.toMap(),
    };
  }

  factory QueryLoggingConfigurationDestination.fromMap(Map<String, dynamic> map) {
    return QueryLoggingConfigurationDestination(
      cloudwatchLogs: QueryLoggingConfigurationDestinationCloudwatchLogs.fromMap((map['cloudwatchLogs'] as Map).cast<String, dynamic>()),
      filters: QueryLoggingConfigurationDestinationFilters.fromMap((map['filters'] as Map).cast<String, dynamic>()),
    );
  }
}

