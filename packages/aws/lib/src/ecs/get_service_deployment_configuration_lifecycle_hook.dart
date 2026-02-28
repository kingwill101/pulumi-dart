// ignore_for_file: unused_element, unnecessary_cast

class GetServiceDeploymentConfigurationLifecycleHook {
  /// Additional details for the hook
  final String hookDetails;

  /// ARN of the Lambda function to invoke
  final String hookTargetArn;

  /// Deployment stages when hook is invoked
  final List<String> lifecycleStages;

  /// ARN of the IAM role that allows ECS to manage the target groups.
  final String roleArn;

  /// Creates a new [GetServiceDeploymentConfigurationLifecycleHook].
  /// [hookDetails] Additional details for the hook
  /// [hookTargetArn] ARN of the Lambda function to invoke
  /// [lifecycleStages] Deployment stages when hook is invoked
  /// [roleArn] ARN of the IAM role that allows ECS to manage the target groups.
  GetServiceDeploymentConfigurationLifecycleHook({
    required this.hookDetails,
    required this.hookTargetArn,
    required this.lifecycleStages,
    required this.roleArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hookDetails'] = hookDetails;
    map['hookTargetArn'] = hookTargetArn;
    map['lifecycleStages'] = lifecycleStages;
    map['roleArn'] = roleArn;
    return map;
  }

  factory GetServiceDeploymentConfigurationLifecycleHook.fromMap(
      Map<String, dynamic> map) {
    return GetServiceDeploymentConfigurationLifecycleHook(
      hookDetails: map['hookDetails'] as String,
      hookTargetArn: map['hookTargetArn'] as String,
      lifecycleStages: (map['lifecycleStages'] as List).cast<String>(),
      roleArn: map['roleArn'] as String,
    );
  }
}
