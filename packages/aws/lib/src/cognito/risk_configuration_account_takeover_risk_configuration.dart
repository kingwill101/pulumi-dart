// ignore_for_file: unused_element, unnecessary_cast

import 'risk_configuration_account_takeover_risk_configuration_actions.dart';
import 'risk_configuration_account_takeover_risk_configuration_notify_configuration.dart';

class RiskConfigurationAccountTakeoverRiskConfiguration {
  /// Account takeover risk configuration actions. See details below.
  final RiskConfigurationAccountTakeoverRiskConfigurationActions actions;

  /// The notify configuration used to construct email notifications. See details below.
  final RiskConfigurationAccountTakeoverRiskConfigurationNotifyConfiguration?
      notifyConfiguration;

  /// Creates a new [RiskConfigurationAccountTakeoverRiskConfiguration].
  /// [actions] Account takeover risk configuration actions. See details below.
  /// [notifyConfiguration] The notify configuration used to construct email notifications. See details below.
  RiskConfigurationAccountTakeoverRiskConfiguration({
    required this.actions,
    this.notifyConfiguration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['actions'] = actions.toMap();
    final notifyConfigurationValue = notifyConfiguration;
    if (notifyConfigurationValue != null) {
      map['notifyConfiguration'] = notifyConfigurationValue.toMap();
    }
    return map;
  }

  factory RiskConfigurationAccountTakeoverRiskConfiguration.fromMap(
      Map<String, dynamic> map) {
    return RiskConfigurationAccountTakeoverRiskConfiguration(
      actions: RiskConfigurationAccountTakeoverRiskConfigurationActions.fromMap(
          (map['actions'] as Map).cast<String, dynamic>()),
      notifyConfiguration: map['notifyConfiguration'] == null
          ? null
          : RiskConfigurationAccountTakeoverRiskConfigurationNotifyConfiguration
              .fromMap(
                  (map['notifyConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}
