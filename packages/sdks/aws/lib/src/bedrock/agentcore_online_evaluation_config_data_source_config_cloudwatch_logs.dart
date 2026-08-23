// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreOnlineEvaluationConfigDataSourceConfigCloudwatchLogs {
  /// List of CloudWatch log group names to monitor for agent traces. Maximum 5.
  final pulumi.Input<List<String>> logGroupNames;
  /// List of service names to filter traces within the specified log groups.
  final pulumi.Input<List<String>> serviceNames;

  /// Creates a new [AgentcoreOnlineEvaluationConfigDataSourceConfigCloudwatchLogs].
  /// [logGroupNames] List of CloudWatch log group names to monitor for agent traces. Maximum 5.
  /// [serviceNames] List of service names to filter traces within the specified log groups.
  const AgentcoreOnlineEvaluationConfigDataSourceConfigCloudwatchLogs({
    required this.logGroupNames,
    required this.serviceNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logGroupNames': logGroupNames,
      'serviceNames': serviceNames,
    };
  }

  factory AgentcoreOnlineEvaluationConfigDataSourceConfigCloudwatchLogs.fromMap(Map<String, dynamic> map) {
    return AgentcoreOnlineEvaluationConfigDataSourceConfigCloudwatchLogs(
      logGroupNames: pulumi.Input.fromValue((map['logGroupNames'] as List).cast<String>()),
      serviceNames: pulumi.Input.fromValue((map['serviceNames'] as List).cast<String>()),
    );
  }
}
