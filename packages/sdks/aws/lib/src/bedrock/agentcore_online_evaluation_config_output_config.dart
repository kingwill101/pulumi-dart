// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_online_evaluation_config_output_config_cloudwatch_config.dart';

class AgentcoreOnlineEvaluationConfigOutputConfig {
  /// CloudWatch configuration for evaluation results. See `cloudwatchConfig` Block below.
  final pulumi.Input<List<AgentcoreOnlineEvaluationConfigOutputConfigCloudwatchConfig>> cloudwatchConfigs;

  /// Creates a new [AgentcoreOnlineEvaluationConfigOutputConfig].
  /// [cloudwatchConfigs] CloudWatch configuration for evaluation results. See `cloudwatchConfig` Block below.
  const AgentcoreOnlineEvaluationConfigOutputConfig({
    required this.cloudwatchConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudwatchConfigs': pulumi.Input.mapInputValue<List<AgentcoreOnlineEvaluationConfigOutputConfigCloudwatchConfig>, List<Map<String, dynamic>>>(cloudwatchConfigs, (value) => pulumi.Input.encodeList<AgentcoreOnlineEvaluationConfigOutputConfigCloudwatchConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AgentcoreOnlineEvaluationConfigOutputConfig.fromMap(Map<String, dynamic> map) {
    return AgentcoreOnlineEvaluationConfigOutputConfig(
      cloudwatchConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreOnlineEvaluationConfigOutputConfigCloudwatchConfig>(map['cloudwatchConfigs']!, (value) => AgentcoreOnlineEvaluationConfigOutputConfigCloudwatchConfig.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
