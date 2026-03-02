// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class QueryLoggingConfigurationDestinationCloudwatchLogs {
  /// The ARN of the CloudWatch log group to which query logs will be sent. The ARN must end with `:*`
  final pulumi.Input<String> logGroupArn;

  /// Creates a new [QueryLoggingConfigurationDestinationCloudwatchLogs].
  /// [logGroupArn] The ARN of the CloudWatch log group to which query logs will be sent. The ARN must end with `:*`
  QueryLoggingConfigurationDestinationCloudwatchLogs({
    required this.logGroupArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logGroupArn': logGroupArn,
    };
  }

  factory QueryLoggingConfigurationDestinationCloudwatchLogs.fromMap(Map<String, dynamic> map) {
    return QueryLoggingConfigurationDestinationCloudwatchLogs(
      logGroupArn: (map['logGroupArn'] as String).input(),
    );
  }
}

