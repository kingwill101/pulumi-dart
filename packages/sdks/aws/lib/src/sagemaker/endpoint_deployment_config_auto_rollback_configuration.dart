// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_deployment_config_auto_rollback_configuration_alarm.dart';

class EndpointDeploymentConfigAutoRollbackConfiguration {
  /// List of CloudWatch alarms in your account that are configured to monitor metrics on an endpoint. If any alarms are tripped during a deployment, SageMaker AI rolls back the deployment. See Alarms.
  final pulumi.Input<
    List<EndpointDeploymentConfigAutoRollbackConfigurationAlarm>
  >?
  alarms;

  /// Creates a new [EndpointDeploymentConfigAutoRollbackConfiguration].
  /// [alarms] List of CloudWatch alarms in your account that are configured to monitor metrics on an endpoint. If any alarms are tripped during a deployment, SageMaker AI rolls back the deployment. See Alarms.
  EndpointDeploymentConfigAutoRollbackConfiguration({this.alarms});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alarms':
          ?pulumi.Input.mapOptionalInputValue<
            List<EndpointDeploymentConfigAutoRollbackConfigurationAlarm>,
            List<Map<String, dynamic>>
          >(
            alarms,
            (value) =>
                pulumi.Input.encodeList<
                  EndpointDeploymentConfigAutoRollbackConfigurationAlarm,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory EndpointDeploymentConfigAutoRollbackConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return EndpointDeploymentConfigAutoRollbackConfiguration(
      alarms: (() {
        final guardedValue = map['alarms'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            EndpointDeploymentConfigAutoRollbackConfigurationAlarm
          >(
            guardedValue,
            (value) =>
                EndpointDeploymentConfigAutoRollbackConfigurationAlarm.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
    );
  }
}
