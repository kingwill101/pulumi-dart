// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_deployment_configuration_lifecycle_hook_timeout_configuration.dart';

class GetServiceDeploymentConfigurationLifecycleHook {
  /// Additional details for the hook
  final pulumi.Input<String> hookDetails;
  /// ARN of the Lambda function to invoke (empty for `PAUSE` hooks)
  final pulumi.Input<String> hookTargetArn;
  /// Deployment stages when hook is invoked
  final pulumi.Input<List<String>> lifecycleStages;
  /// ARN of the IAM role that allows ECS to manage the target groups.
  final pulumi.Input<String> roleArn;
  /// Type of hook target (`AWS_LAMBDA` or `PAUSE`)
  final pulumi.Input<String> targetType;
  /// Timeout configuration for `PAUSE` hooks. See `timeoutConfiguration` Block for details.
  final pulumi.Input<List<GetServiceDeploymentConfigurationLifecycleHookTimeoutConfiguration>> timeoutConfigurations;

  /// Creates a new [GetServiceDeploymentConfigurationLifecycleHook].
  /// [hookDetails] Additional details for the hook
  /// [hookTargetArn] ARN of the Lambda function to invoke (empty for `PAUSE` hooks)
  /// [lifecycleStages] Deployment stages when hook is invoked
  /// [roleArn] ARN of the IAM role that allows ECS to manage the target groups.
  /// [targetType] Type of hook target (`AWS_LAMBDA` or `PAUSE`)
  /// [timeoutConfigurations] Timeout configuration for `PAUSE` hooks. See `timeoutConfiguration` Block for details.
  const GetServiceDeploymentConfigurationLifecycleHook({
    required this.hookDetails,
    required this.hookTargetArn,
    required this.lifecycleStages,
    required this.roleArn,
    required this.targetType,
    required this.timeoutConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hookDetails': hookDetails,
      'hookTargetArn': hookTargetArn,
      'lifecycleStages': lifecycleStages,
      'roleArn': roleArn,
      'targetType': targetType,
      'timeoutConfigurations': pulumi.Input.mapInputValue<List<GetServiceDeploymentConfigurationLifecycleHookTimeoutConfiguration>, List<Map<String, dynamic>>>(timeoutConfigurations, (value) => pulumi.Input.encodeList<GetServiceDeploymentConfigurationLifecycleHookTimeoutConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetServiceDeploymentConfigurationLifecycleHook.fromMap(Map<String, dynamic> map) {
    return GetServiceDeploymentConfigurationLifecycleHook(
      hookDetails: pulumi.Input.fromValue(map['hookDetails'] as String),
      hookTargetArn: pulumi.Input.fromValue(map['hookTargetArn'] as String),
      lifecycleStages: pulumi.Input.fromValue((map['lifecycleStages'] as List).cast<String>()),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
      targetType: pulumi.Input.fromValue(map['targetType'] as String),
      timeoutConfigurations: pulumi.Input.fromValue(pulumi.Input.decodeList<GetServiceDeploymentConfigurationLifecycleHookTimeoutConfiguration>(map['timeoutConfigurations']!, (value) => GetServiceDeploymentConfigurationLifecycleHookTimeoutConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
