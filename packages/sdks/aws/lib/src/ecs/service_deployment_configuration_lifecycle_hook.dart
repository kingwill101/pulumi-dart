// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_deployment_configuration_lifecycle_hook_timeout_configuration.dart';

class ServiceDeploymentConfigurationLifecycleHook {
  /// Custom parameters that Amazon ECS will pass to the hook target invocations (such as a Lambda function).
  final pulumi.Input<String?>? hookDetails;
  /// ARN of the Lambda function to invoke for the lifecycle hook. Required when `targetType` is `AWS_LAMBDA`. Not used when `targetType` is `PAUSE`.
  final pulumi.Input<String?>? hookTargetArn;
  /// Stages during the deployment when the hook should be invoked. Valid values: `RECONCILE_SERVICE`, `PRE_SCALE_UP`, `POST_SCALE_UP`, `TEST_TRAFFIC_SHIFT`, `POST_TEST_TRAFFIC_SHIFT`, `PRODUCTION_TRAFFIC_SHIFT`, `POST_PRODUCTION_TRAFFIC_SHIFT`.
  final pulumi.Input<List<String>> lifecycleStages;
  /// ARN of the IAM role that grants the service permission to invoke the Lambda function. Required when `targetType` is `AWS_LAMBDA`. Not used when `targetType` is `PAUSE`.
  final pulumi.Input<String?>? roleArn;
  /// Type of hook target. Valid values: `AWS_LAMBDA`, `PAUSE`. Default: `AWS_LAMBDA`. `PAUSE` hooks cannot use the `TEST_TRAFFIC_SHIFT` or `PRODUCTION_TRAFFIC_SHIFT` lifecycle stages.
  final pulumi.Input<String?>? targetType;
  /// Configuration block defining the timeout behavior for a `PAUSE` hook. Only valid when `targetType` is `PAUSE`. See below.
  final pulumi.Input<ServiceDeploymentConfigurationLifecycleHookTimeoutConfiguration?>? timeoutConfiguration;

  /// Creates a new [ServiceDeploymentConfigurationLifecycleHook].
  /// [hookDetails] Custom parameters that Amazon ECS will pass to the hook target invocations (such as a Lambda function).
  /// [hookTargetArn] ARN of the Lambda function to invoke for the lifecycle hook. Required when `targetType` is `AWS_LAMBDA`. Not used when `targetType` is `PAUSE`.
  /// [lifecycleStages] Stages during the deployment when the hook should be invoked. Valid values: `RECONCILE_SERVICE`, `PRE_SCALE_UP`, `POST_SCALE_UP`, `TEST_TRAFFIC_SHIFT`, `POST_TEST_TRAFFIC_SHIFT`, `PRODUCTION_TRAFFIC_SHIFT`, `POST_PRODUCTION_TRAFFIC_SHIFT`.
  /// [roleArn] ARN of the IAM role that grants the service permission to invoke the Lambda function. Required when `targetType` is `AWS_LAMBDA`. Not used when `targetType` is `PAUSE`.
  /// [targetType] Type of hook target. Valid values: `AWS_LAMBDA`, `PAUSE`. Default: `AWS_LAMBDA`. `PAUSE` hooks cannot use the `TEST_TRAFFIC_SHIFT` or `PRODUCTION_TRAFFIC_SHIFT` lifecycle stages.
  /// [timeoutConfiguration] Configuration block defining the timeout behavior for a `PAUSE` hook. Only valid when `targetType` is `PAUSE`. See below.
  const ServiceDeploymentConfigurationLifecycleHook({
    this.hookDetails,
    this.hookTargetArn,
    required this.lifecycleStages,
    this.roleArn,
    this.targetType,
    this.timeoutConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hookDetails': ?hookDetails,
      'hookTargetArn': ?hookTargetArn,
      'lifecycleStages': lifecycleStages,
      'roleArn': ?roleArn,
      'targetType': ?targetType,
      'timeoutConfiguration': ?pulumi.Input.mapOptionalInputValue<ServiceDeploymentConfigurationLifecycleHookTimeoutConfiguration, Map<String, dynamic>>(timeoutConfiguration, (value) => value.toMap()),
    };
  }

  factory ServiceDeploymentConfigurationLifecycleHook.fromMap(Map<String, dynamic> map) {
    return ServiceDeploymentConfigurationLifecycleHook(
      hookDetails: (() { final guardedValue = map['hookDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hookTargetArn: (() { final guardedValue = map['hookTargetArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lifecycleStages: pulumi.Input.fromValue((map['lifecycleStages'] as List).cast<String>()),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetType: (() { final guardedValue = map['targetType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeoutConfiguration: (() { final guardedValue = map['timeoutConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceDeploymentConfigurationLifecycleHookTimeoutConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
