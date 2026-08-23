// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreOnlineEvaluationConfigOutputConfigCloudwatchConfig {
  /// Name of the CloudWatch log group where evaluation results are written.
  final pulumi.Input<String> logGroupName;

  /// Creates a new [AgentcoreOnlineEvaluationConfigOutputConfigCloudwatchConfig].
  /// [logGroupName] Name of the CloudWatch log group where evaluation results are written.
  const AgentcoreOnlineEvaluationConfigOutputConfigCloudwatchConfig({
    required this.logGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logGroupName': logGroupName,
    };
  }

  factory AgentcoreOnlineEvaluationConfigOutputConfigCloudwatchConfig.fromMap(Map<String, dynamic> map) {
    return AgentcoreOnlineEvaluationConfigOutputConfigCloudwatchConfig(
      logGroupName: pulumi.Input.fromValue(map['logGroupName'] as String),
    );
  }
}
