// ignore_for_file: unused_element, unnecessary_cast

class MaintenanceWindowTaskTaskInvocationParametersRunCommandParametersCloudwatchConfig {
  /// The name of the CloudWatch log group where you want to send command output. If you don't specify a group name, Systems Manager automatically creates a log group for you. The log group uses the following naming format: aws/ssm/SystemsManagerDocumentName.
  final String? cloudwatchLogGroupName;

  /// Enables Systems Manager to send command output to CloudWatch Logs.
  final bool? cloudwatchOutputEnabled;

  MaintenanceWindowTaskTaskInvocationParametersRunCommandParametersCloudwatchConfig({
    this.cloudwatchLogGroupName,
    this.cloudwatchOutputEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cloudwatchLogGroupNameValue = cloudwatchLogGroupName;
    if (cloudwatchLogGroupNameValue != null) {
      map['cloudwatchLogGroupName'] = cloudwatchLogGroupNameValue;
    }
    final cloudwatchOutputEnabledValue = cloudwatchOutputEnabled;
    if (cloudwatchOutputEnabledValue != null) {
      map['cloudwatchOutputEnabled'] = cloudwatchOutputEnabledValue;
    }
    return map;
  }

  factory MaintenanceWindowTaskTaskInvocationParametersRunCommandParametersCloudwatchConfig.fromMap(
      Map<String, dynamic> map) {
    return MaintenanceWindowTaskTaskInvocationParametersRunCommandParametersCloudwatchConfig(
      cloudwatchLogGroupName: map['cloudwatchLogGroupName'] == null
          ? null
          : map['cloudwatchLogGroupName'] as String,
      cloudwatchOutputEnabled: map['cloudwatchOutputEnabled'] == null
          ? null
          : map['cloudwatchOutputEnabled'] as bool,
    );
  }
}
