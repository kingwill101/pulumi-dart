// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'risk_configuration_account_takeover_risk_configuration_actions.dart';
import 'risk_configuration_account_takeover_risk_configuration_notify_configuration.dart';

class RiskConfigurationAccountTakeoverRiskConfiguration {
  /// Account takeover risk configuration actions. See details below.
  final pulumi.Input<RiskConfigurationAccountTakeoverRiskConfigurationActions>
  actions;

  /// The notify configuration used to construct email notifications. See details below.
  final pulumi.Input<
    RiskConfigurationAccountTakeoverRiskConfigurationNotifyConfiguration
  >?
  notifyConfiguration;

  /// Creates a new [RiskConfigurationAccountTakeoverRiskConfiguration].
  /// [actions] Account takeover risk configuration actions. See details below.
  /// [notifyConfiguration] The notify configuration used to construct email notifications. See details below.
  RiskConfigurationAccountTakeoverRiskConfiguration({
    required this.actions,
    this.notifyConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions':
          pulumi.Input.mapInputValue<
            RiskConfigurationAccountTakeoverRiskConfigurationActions,
            Map<String, dynamic>
          >(actions, (value) => value.toMap()),
      'notifyConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            RiskConfigurationAccountTakeoverRiskConfigurationNotifyConfiguration,
            Map<String, dynamic>
          >(notifyConfiguration, (value) => value.toMap()),
    };
  }

  factory RiskConfigurationAccountTakeoverRiskConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return RiskConfigurationAccountTakeoverRiskConfiguration(
      actions: pulumi.Input.fromValue(
        RiskConfigurationAccountTakeoverRiskConfigurationActions.fromMap(
          (map['actions']! as Map).cast<String, dynamic>(),
        ),
      ),
      notifyConfiguration: (() {
        final guardedValue = map['notifyConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RiskConfigurationAccountTakeoverRiskConfigurationNotifyConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
