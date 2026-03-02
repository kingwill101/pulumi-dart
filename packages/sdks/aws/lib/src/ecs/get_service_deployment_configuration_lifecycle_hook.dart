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
  GetServiceDeploymentConfigurationLifecycleHook({
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
      hookDetails: (map['hookDetails'] as String).input(),
      hookTargetArn: (map['hookTargetArn'] as String).input(),
      lifecycleStages: ((map['lifecycleStages'] as List).cast<String>()).input(),
      roleArn: (map['roleArn'] as String).input(),
    );
  }
}

