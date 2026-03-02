// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceDeploymentConfigurationLifecycleHook {
  /// Custom parameters that Amazon ECS will pass to the hook target invocations (such as a Lambda function).
  final pulumi.Input<String>? hookDetails;
  /// ARN of the Lambda function to invoke for the lifecycle hook.
  final pulumi.Input<String> hookTargetArn;
  /// Stages during the deployment when the hook should be invoked. Valid values: `RECONCILE_SERVICE`, `PRE_SCALE_UP`, `POST_SCALE_UP`, `TEST_TRAFFIC_SHIFT`, `POST_TEST_TRAFFIC_SHIFT`, `PRODUCTION_TRAFFIC_SHIFT`, `POST_PRODUCTION_TRAFFIC_SHIFT`.
  final pulumi.Input<List<String>> lifecycleStages;
  /// ARN of the IAM role that grants the service permission to invoke the Lambda function.
  final pulumi.Input<String> roleArn;

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
    return <String, dynamic>{
      'hookDetails': ?hookDetails,
      'hookTargetArn': hookTargetArn,
      'lifecycleStages': lifecycleStages,
      'roleArn': roleArn,
    };
  }

  factory ServiceDeploymentConfigurationLifecycleHook.fromMap(Map<String, dynamic> map) {
    return ServiceDeploymentConfigurationLifecycleHook(
      hookDetails: map['hookDetails'] == null ? null : (map['hookDetails'] as String).input(),
      hookTargetArn: (map['hookTargetArn'] as String).input(),
      lifecycleStages: ((map['lifecycleStages'] as List).cast<String>()).input(),
      roleArn: (map['roleArn'] as String).input(),
    );
  }
}

