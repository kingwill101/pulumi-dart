// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DeploymentGroupAlarmConfiguration {
  /// A list of alarms configured for the deployment group.
  final pulumi.Input<List<String>>? alarms;
  /// Indicates whether the alarm configuration is enabled. This option is useful when you want to temporarily deactivate alarm monitoring for a deployment group without having to add the same alarms again later.
  final pulumi.Input<bool>? enabled;
  /// Indicates whether a deployment should continue if information about the current state of alarms cannot be retrieved from CloudWatch. The default value is `false`.
  final pulumi.Input<bool>? ignorePollAlarmFailure;

  /// Creates a new [DeploymentGroupAlarmConfiguration].
  /// [alarms] A list of alarms configured for the deployment group.
  /// [enabled] Indicates whether the alarm configuration is enabled. This option is useful when you want to temporarily deactivate alarm monitoring for a deployment group without having to add the same alarms again later.
  /// [ignorePollAlarmFailure] Indicates whether a deployment should continue if information about the current state of alarms cannot be retrieved from CloudWatch. The default value is `false`.
  const DeploymentGroupAlarmConfiguration({
    this.alarms,
    this.enabled,
    this.ignorePollAlarmFailure,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alarms': ?alarms,
      'enabled': ?enabled,
      'ignorePollAlarmFailure': ?ignorePollAlarmFailure,
    };
  }

  factory DeploymentGroupAlarmConfiguration.fromMap(Map<String, dynamic> map) {
    return DeploymentGroupAlarmConfiguration(
      alarms: (() { final guardedValue = map['alarms']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ignorePollAlarmFailure: (() { final guardedValue = map['ignorePollAlarmFailure']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
