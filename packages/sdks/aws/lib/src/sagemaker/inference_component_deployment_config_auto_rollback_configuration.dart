// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'inference_component_deployment_config_auto_rollback_configuration_alarm.dart';

class InferenceComponentDeploymentConfigAutoRollbackConfiguration {
  /// List of CloudWatch alarms that trigger rollback. See `alarms` Block.
  final pulumi.Input<List<InferenceComponentDeploymentConfigAutoRollbackConfigurationAlarm>?>? alarms;

  /// Creates a new [InferenceComponentDeploymentConfigAutoRollbackConfiguration].
  /// [alarms] List of CloudWatch alarms that trigger rollback. See `alarms` Block.
  const InferenceComponentDeploymentConfigAutoRollbackConfiguration({
    this.alarms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alarms': ?pulumi.Input.mapOptionalInputValue<List<InferenceComponentDeploymentConfigAutoRollbackConfigurationAlarm>, List<Map<String, dynamic>>>(alarms, (value) => pulumi.Input.encodeList<InferenceComponentDeploymentConfigAutoRollbackConfigurationAlarm, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory InferenceComponentDeploymentConfigAutoRollbackConfiguration.fromMap(Map<String, dynamic> map) {
    return InferenceComponentDeploymentConfigAutoRollbackConfiguration(
      alarms: (() { final guardedValue = map['alarms']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InferenceComponentDeploymentConfigAutoRollbackConfigurationAlarm>(guardedValue, (value) => InferenceComponentDeploymentConfigAutoRollbackConfigurationAlarm.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
