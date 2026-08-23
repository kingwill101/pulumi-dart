// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MaintenanceWindowTaskTaskInvocationParametersRunCommandParametersCloudwatchConfig {
  /// The name of the CloudWatch log group where you want to send command output. If you don't specify a group name, Systems Manager automatically creates a log group for you. The log group uses the following naming format: aws/ssm/SystemsManagerDocumentName.
  final pulumi.Input<String>? cloudwatchLogGroupName;
  /// Enables Systems Manager to send command output to CloudWatch Logs.
  final pulumi.Input<bool>? cloudwatchOutputEnabled;

  /// Creates a new [MaintenanceWindowTaskTaskInvocationParametersRunCommandParametersCloudwatchConfig].
  /// [cloudwatchLogGroupName] The name of the CloudWatch log group where you want to send command output. If you don't specify a group name, Systems Manager automatically creates a log group for you. The log group uses the following naming format: aws/ssm/SystemsManagerDocumentName.
  /// [cloudwatchOutputEnabled] Enables Systems Manager to send command output to CloudWatch Logs.
  const MaintenanceWindowTaskTaskInvocationParametersRunCommandParametersCloudwatchConfig({
    this.cloudwatchLogGroupName,
    this.cloudwatchOutputEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudwatchLogGroupName': ?cloudwatchLogGroupName,
      'cloudwatchOutputEnabled': ?cloudwatchOutputEnabled,
    };
  }

  factory MaintenanceWindowTaskTaskInvocationParametersRunCommandParametersCloudwatchConfig.fromMap(Map<String, dynamic> map) {
    return MaintenanceWindowTaskTaskInvocationParametersRunCommandParametersCloudwatchConfig(
      cloudwatchLogGroupName: (() { final guardedValue = map['cloudwatchLogGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cloudwatchOutputEnabled: (() { final guardedValue = map['cloudwatchOutputEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
