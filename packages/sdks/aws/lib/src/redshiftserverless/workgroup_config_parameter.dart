// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkgroupConfigParameter {
  /// The key of the parameter. The options are `autoMv`, `datestyle`, `enableCaseSensitiveIdentifier`, `enableUserActivityLogging`, `queryGroup`, `searchPath`, `requireSsl`, `useFipsSsl`, and [query monitoring metrics](https://docs.aws.amazon.com/redshift/latest/dg/cm-c-wlm-query-monitoring-rules.html#cm-c-wlm-query-monitoring-metrics-serverless) that let you define performance boundaries: `maxQueryCpuTime`, `maxQueryBlocksRead`, `maxScanRowCount`, `maxQueryExecutionTime`, `maxQueryQueueTime`, `maxQueryCpuUsagePercent`, `maxQueryTempBlocksToDisk`, `maxJoinRowCount` and `maxNestedLoopJoinRowCount`.
  final pulumi.Input<String> parameterKey;
  /// The value of the parameter to set.
  final pulumi.Input<String> parameterValue;

  /// Creates a new [WorkgroupConfigParameter].
  /// [parameterKey] The key of the parameter. The options are `autoMv`, `datestyle`, `enableCaseSensitiveIdentifier`, `enableUserActivityLogging`, `queryGroup`, `searchPath`, `requireSsl`, `useFipsSsl`, and [query monitoring metrics](https://docs.aws.amazon.com/redshift/latest/dg/cm-c-wlm-query-monitoring-rules.html#cm-c-wlm-query-monitoring-metrics-serverless) that let you define performance boundaries: `maxQueryCpuTime`, `maxQueryBlocksRead`, `maxScanRowCount`, `maxQueryExecutionTime`, `maxQueryQueueTime`, `maxQueryCpuUsagePercent`, `maxQueryTempBlocksToDisk`, `maxJoinRowCount` and `maxNestedLoopJoinRowCount`.
  /// [parameterValue] The value of the parameter to set.
  const WorkgroupConfigParameter({
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
      parameterKey: pulumi.Input.fromValue(map['parameterKey'] as String),
      parameterValue: pulumi.Input.fromValue(map['parameterValue'] as String),
    );
  }
}
