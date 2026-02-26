// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../endpoint_deployment_config_auto_rollback_configuration_alarm/endpoint_deployment_config_auto_rollback_configuration_alarm.dart';

class EndpointDeploymentConfigAutoRollbackConfiguration {
  /// List of CloudWatch alarms in your account that are configured to monitor metrics on an endpoint. If any alarms are tripped during a deployment, SageMaker AI rolls back the deployment. See Alarms.
  final List<EndpointDeploymentConfigAutoRollbackConfigurationAlarm>? alarms;

  EndpointDeploymentConfigAutoRollbackConfiguration({
    this.alarms,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final alarmsValue = alarms;
    if (alarmsValue != null) {
      map['alarms'] = Input.encodeList<
          EndpointDeploymentConfigAutoRollbackConfigurationAlarm,
          Map<String, dynamic>>(alarmsValue, (value) => value.toMap());
    }
    return map;
  }

  factory EndpointDeploymentConfigAutoRollbackConfiguration.fromMap(
      Map<String, dynamic> map) {
    return EndpointDeploymentConfigAutoRollbackConfiguration(
      alarms: map['alarms'] == null
          ? null
          : Input.decodeList<
                  EndpointDeploymentConfigAutoRollbackConfigurationAlarm>(
              map['alarms'],
              (value) => EndpointDeploymentConfigAutoRollbackConfigurationAlarm
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
