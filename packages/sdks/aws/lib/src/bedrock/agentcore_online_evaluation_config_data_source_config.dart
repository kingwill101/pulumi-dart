// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_online_evaluation_config_data_source_config_cloudwatch_logs.dart';

class AgentcoreOnlineEvaluationConfigDataSourceConfig {
  /// CloudWatch logs configuration for reading agent traces. See `cloudwatchLogs` Block below.
  final pulumi.Input<AgentcoreOnlineEvaluationConfigDataSourceConfigCloudwatchLogs>? cloudwatchLogs;

  /// Creates a new [AgentcoreOnlineEvaluationConfigDataSourceConfig].
  /// [cloudwatchLogs] CloudWatch logs configuration for reading agent traces. See `cloudwatchLogs` Block below.
  const AgentcoreOnlineEvaluationConfigDataSourceConfig({
    this.cloudwatchLogs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudwatchLogs': ?pulumi.Input.mapOptionalInputValue<AgentcoreOnlineEvaluationConfigDataSourceConfigCloudwatchLogs, Map<String, dynamic>>(cloudwatchLogs, (value) => value.toMap()),
    };
  }

  factory AgentcoreOnlineEvaluationConfigDataSourceConfig.fromMap(Map<String, dynamic> map) {
    return AgentcoreOnlineEvaluationConfigDataSourceConfig(
      cloudwatchLogs: (() { final guardedValue = map['cloudwatchLogs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreOnlineEvaluationConfigDataSourceConfigCloudwatchLogs.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
