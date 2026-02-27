// ignore_for_file: unused_element, unnecessary_cast

import '../query_logging_configuration_destination_cloudwatch_logs/query_logging_configuration_destination_cloudwatch_logs.dart';
import '../query_logging_configuration_destination_filters/query_logging_configuration_destination_filters.dart';

class QueryLoggingConfigurationDestination {
  /// Configuration block for CloudWatch Logs destination. See `cloudwatch_logs`.
  final QueryLoggingConfigurationDestinationCloudwatchLogs cloudwatchLogs;

  /// A list of filter configurations that specify which logs should be sent to the destination. See `filters`.
  final QueryLoggingConfigurationDestinationFilters filters;

  QueryLoggingConfigurationDestination({
    required this.cloudwatchLogs,
    required this.filters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloudwatchLogs'] = cloudwatchLogs.toMap();
    map['filters'] = filters.toMap();
    return map;
  }

  factory QueryLoggingConfigurationDestination.fromMap(
      Map<String, dynamic> map) {
    return QueryLoggingConfigurationDestination(
      cloudwatchLogs:
          QueryLoggingConfigurationDestinationCloudwatchLogs.fromMap(
              (map['cloudwatchLogs'] as Map).cast<String, dynamic>()),
      filters: QueryLoggingConfigurationDestinationFilters.fromMap(
          (map['filters'] as Map).cast<String, dynamic>()),
    );
  }
}
