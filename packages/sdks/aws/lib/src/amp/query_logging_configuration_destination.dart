// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'query_logging_configuration_destination_cloudwatch_logs.dart';
import 'query_logging_configuration_destination_filters.dart';

class QueryLoggingConfigurationDestination {
  /// Configuration block for CloudWatch Logs destination. See `cloudwatch_logs`.
  final pulumi.Input<QueryLoggingConfigurationDestinationCloudwatchLogs> cloudwatchLogs;
  /// A list of filter configurations that specify which logs should be sent to the destination. See `filters`.
  final pulumi.Input<QueryLoggingConfigurationDestinationFilters> filters;

  /// Creates a new [QueryLoggingConfigurationDestination].
  /// [cloudwatchLogs] Configuration block for CloudWatch Logs destination. See `cloudwatch_logs`.
  /// [filters] A list of filter configurations that specify which logs should be sent to the destination. See `filters`.
  const QueryLoggingConfigurationDestination({
    required this.cloudwatchLogs,
    required this.filters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudwatchLogs': pulumi.Input.mapInputValue<QueryLoggingConfigurationDestinationCloudwatchLogs, Map<String, dynamic>>(cloudwatchLogs, (value) => value.toMap()),
      'filters': pulumi.Input.mapInputValue<QueryLoggingConfigurationDestinationFilters, Map<String, dynamic>>(filters, (value) => value.toMap()),
    };
  }

  factory QueryLoggingConfigurationDestination.fromMap(Map<String, dynamic> map) {
    return QueryLoggingConfigurationDestination(
      cloudwatchLogs: pulumi.Input.fromValue(QueryLoggingConfigurationDestinationCloudwatchLogs.fromMap((map['cloudwatchLogs']! as Map).cast<String, dynamic>())),
      filters: pulumi.Input.fromValue(QueryLoggingConfigurationDestinationFilters.fromMap((map['filters']! as Map).cast<String, dynamic>())),
    );
  }
}

