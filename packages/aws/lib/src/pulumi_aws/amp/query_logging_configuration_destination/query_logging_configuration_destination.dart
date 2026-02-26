// ignore_for_file: unused_element, unnecessary_cast

import '../query_logging_configuration_destination_cloudwatch_logs/query_logging_configuration_destination_cloudwatch_logs.dart';
import '../query_logging_configuration_destination_filters/query_logging_configuration_destination_filters.dart';

class QueryLoggingConfigurationDestination {
  /// Configuration block for CloudWatch Logs destination. See <span pulumi-lang-nodejs="`cloudwatchLogs`" pulumi-lang-dotnet="`CloudwatchLogs`" pulumi-lang-go="`cloudwatchLogs`" pulumi-lang-python="`cloudwatch_logs`" pulumi-lang-yaml="`cloudwatchLogs`" pulumi-lang-java="`cloudwatchLogs`">`cloudwatch_logs`</span>.
  final QueryLoggingConfigurationDestinationCloudwatchLogs cloudwatchLogs;

  /// A list of filter configurations that specify which logs should be sent to the destination. See <span pulumi-lang-nodejs="`filters`" pulumi-lang-dotnet="`Filters`" pulumi-lang-go="`filters`" pulumi-lang-python="`filters`" pulumi-lang-yaml="`filters`" pulumi-lang-java="`filters`">`filters`</span>.
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
