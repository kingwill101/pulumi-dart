// ignore_for_file: unused_element, unnecessary_cast

class ServiceDeploymentConfigurationLifecycleHook {
  /// Custom parameters that Amazon ECS will pass to the hook target invocations (such as a Lambda function).
  final String? hookDetails;

  /// ARN of the Lambda function to invoke for the lifecycle hook.
  final String hookTargetArn;

  /// Stages during the deployment when the hook should be invoked. Valid values: `RECONCILE_SERVICE`, `PRE_SCALE_UP`, `POST_SCALE_UP`, `TEST_TRAFFIC_SHIFT`, `POST_TEST_TRAFFIC_SHIFT`, `PRODUCTION_TRAFFIC_SHIFT`, `POST_PRODUCTION_TRAFFIC_SHIFT`.
  final List<String> lifecycleStages;

  /// ARN of the IAM role that grants the service permission to invoke the Lambda function.
  final String roleArn;

  /// Creates a new [ServiceDeploymentConfigurationLifecycleHook].
  /// [hookDetails] Custom parameters that Amazon ECS will pass to the hook target invocations (such as a Lambda function).
  /// [hookTargetArn] ARN of the Lambda function to invoke for the lifecycle hook.
  /// [lifecycleStages] Stages during the deployment when the hook should be invoked. Valid values: `RECONCILE_SERVICE`, `PRE_SCALE_UP`, `POST_SCALE_UP`, `TEST_TRAFFIC_SHIFT`, `POST_TEST_TRAFFIC_SHIFT`, `PRODUCTION_TRAFFIC_SHIFT`, `POST_PRODUCTION_TRAFFIC_SHIFT`.
  /// [roleArn] ARN of the IAM role that grants the service permission to invoke the Lambda function.
  ServiceDeploymentConfigurationLifecycleHook({
    this.hookDetails,
    required this.hookTargetArn,
    required this.lifecycleStages,
    required this.roleArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final hookDetailsValue = hookDetails;
    if (hookDetailsValue != null) {
      map['hookDetails'] = hookDetailsValue;
    }
    map['hookTargetArn'] = hookTargetArn;
    map['lifecycleStages'] = lifecycleStages;
    map['roleArn'] = roleArn;
    return map;
  }

  factory ServiceDeploymentConfigurationLifecycleHook.fromMap(
      Map<String, dynamic> map) {
    return ServiceDeploymentConfigurationLifecycleHook(
      hookDetails:
          map['hookDetails'] == null ? null : map['hookDetails'] as String,
      hookTargetArn: map['hookTargetArn'] as String,
      lifecycleStages: (map['lifecycleStages'] as List).cast<String>(),
      roleArn: map['roleArn'] as String,
    );
  }
}
