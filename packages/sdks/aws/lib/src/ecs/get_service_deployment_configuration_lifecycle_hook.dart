// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceDeploymentConfigurationLifecycleHook {
  /// Additional details for the hook
  final pulumi.Input<String> hookDetails;
  /// ARN of the Lambda function to invoke
  final pulumi.Input<String> hookTargetArn;
  /// Deployment stages when hook is invoked
  final pulumi.Input<List<String>> lifecycleStages;
  /// ARN of the IAM role that allows ECS to manage the target groups.
  final pulumi.Input<String> roleArn;

  /// Creates a new [GetServiceDeploymentConfigurationLifecycleHook].
  /// [hookDetails] Additional details for the hook
  /// [hookTargetArn] ARN of the Lambda function to invoke
  /// [lifecycleStages] Deployment stages when hook is invoked
  /// [roleArn] ARN of the IAM role that allows ECS to manage the target groups.
  const GetServiceDeploymentConfigurationLifecycleHook({
    required this.hookDetails,
    required this.hookTargetArn,
    required this.lifecycleStages,
    required this.roleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hookDetails': hookDetails,
      'hookTargetArn': hookTargetArn,
      'lifecycleStages': lifecycleStages,
      'roleArn': roleArn,
    };
  }

  factory GetServiceDeploymentConfigurationLifecycleHook.fromMap(Map<String, dynamic> map) {
    return GetServiceDeploymentConfigurationLifecycleHook(
      hookDetails: pulumi.Input.fromValue(map['hookDetails'] as String),
      hookTargetArn: pulumi.Input.fromValue(map['hookTargetArn'] as String),
      lifecycleStages: pulumi.Input.fromValue((map['lifecycleStages'] as List).cast<String>()),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
    );
  }
}

