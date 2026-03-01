// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_deployment_config_auto_rollback_configuration_alarm.dart';

class EndpointDeploymentConfigAutoRollbackConfiguration {
  /// List of CloudWatch alarms in your account that are configured to monitor metrics on an endpoint. If any alarms are tripped during a deployment, SageMaker AI rolls back the deployment. See Alarms.
  final List<EndpointDeploymentConfigAutoRollbackConfigurationAlarm>? alarms;

  /// Creates a new [EndpointDeploymentConfigAutoRollbackConfiguration].
  /// [alarms] List of CloudWatch alarms in your account that are configured to monitor metrics on an endpoint. If any alarms are tripped during a deployment, SageMaker AI rolls back the deployment. See Alarms.
  EndpointDeploymentConfigAutoRollbackConfiguration({this.alarms});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alarms': ?alarms == null
          ? null
          : pulumi.Input.encodeList<
              EndpointDeploymentConfigAutoRollbackConfigurationAlarm,
              Map<String, dynamic>
            >(alarms!, (value) => value.toMap()),
    };
  }

  factory EndpointDeploymentConfigAutoRollbackConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return EndpointDeploymentConfigAutoRollbackConfiguration(
      alarms: map['alarms'] == null
          ? null
          : pulumi.Input.decodeList<
              EndpointDeploymentConfigAutoRollbackConfigurationAlarm
            >(
              map['alarms'],
              (value) =>
                  EndpointDeploymentConfigAutoRollbackConfigurationAlarm.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
    );
  }
}
