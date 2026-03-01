// ignore_for_file: unused_element, unnecessary_cast


class WorkgroupConfigParameter {
  /// The key of the parameter. The options are `auto_mv`, `datestyle`, `enable_case_sensitive_identifier`, `enable_user_activity_logging`, `query_group`, `search_path`, `require_ssl`, `use_fips_ssl`, and [query monitoring metrics](https://docs.aws.amazon.com/redshift/latest/dg/cm-c-wlm-query-monitoring-rules.html#cm-c-wlm-query-monitoring-metrics-serverless) that let you define performance boundaries: `max_query_cpu_time`, `max_query_blocks_read`, `max_scan_row_count`, `max_query_execution_time`, `max_query_queue_time`, `max_query_cpu_usage_percent`, `max_query_temp_blocks_to_disk`, `max_join_row_count` and `max_nested_loop_join_row_count`.
  final String parameterKey;
  /// The value of the parameter to set.
  final String parameterValue;

  /// Creates a new [WorkgroupConfigParameter].
  /// [parameterKey] The key of the parameter. The options are `auto_mv`, `datestyle`, `enable_case_sensitive_identifier`, `enable_user_activity_logging`, `query_group`, `search_path`, `require_ssl`, `use_fips_ssl`, and [query monitoring metrics](https://docs.aws.amazon.com/redshift/latest/dg/cm-c-wlm-query-monitoring-rules.html#cm-c-wlm-query-monitoring-metrics-serverless) that let you define performance boundaries: `max_query_cpu_time`, `max_query_blocks_read`, `max_scan_row_count`, `max_query_execution_time`, `max_query_queue_time`, `max_query_cpu_usage_percent`, `max_query_temp_blocks_to_disk`, `max_join_row_count` and `max_nested_loop_join_row_count`.
  /// [parameterValue] The value of the parameter to set.
  WorkgroupConfigParameter({
    required this.parameterKey,
    required this.parameterValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameterKey': parameterKey,
      'parameterValue': parameterValue,
    };
  }

  factory WorkgroupConfigParameter.fromMap(Map<String, dynamic> map) {
    return WorkgroupConfigParameter(
      parameterKey: map['parameterKey'] as String,
      parameterValue: map['parameterValue'] as String,
    );
  }
}

