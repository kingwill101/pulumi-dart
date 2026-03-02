// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ExperimentTemplateLogConfigurationCloudwatchLogsConfiguration {
  /// The Amazon Resource Name (ARN) of the destination Amazon CloudWatch Logs log group. The ARN must end with `:*`
  final pulumi.Input<String> logGroupArn;

  /// Creates a new [ExperimentTemplateLogConfigurationCloudwatchLogsConfiguration].
  /// [logGroupArn] The Amazon Resource Name (ARN) of the destination Amazon CloudWatch Logs log group. The ARN must end with `:*`
  ExperimentTemplateLogConfigurationCloudwatchLogsConfiguration({
    required this.logGroupArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logGroupArn': logGroupArn,
    };
  }

  factory ExperimentTemplateLogConfigurationCloudwatchLogsConfiguration.fromMap(Map<String, dynamic> map) {
    return ExperimentTemplateLogConfigurationCloudwatchLogsConfiguration(
      logGroupArn: (map['logGroupArn'] as String).input(),
    );
  }
}

