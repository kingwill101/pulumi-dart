// ignore_for_file: unused_element, unnecessary_cast

import '../risk_configuration_account_takeover_risk_configuration_actions_high_action/risk_configuration_account_takeover_risk_configuration_actions_high_action.dart';
import '../risk_configuration_account_takeover_risk_configuration_actions_low_action/risk_configuration_account_takeover_risk_configuration_actions_low_action.dart';
import '../risk_configuration_account_takeover_risk_configuration_actions_medium_action/risk_configuration_account_takeover_risk_configuration_actions_medium_action.dart';

class RiskConfigurationAccountTakeoverRiskConfigurationActions {
  /// Action to take for a high risk. See action block below.
  final RiskConfigurationAccountTakeoverRiskConfigurationActionsHighAction?
      highAction;

  /// Action to take for a low risk. See action block below.
  final RiskConfigurationAccountTakeoverRiskConfigurationActionsLowAction?
      lowAction;

  /// Action to take for a medium risk. See action block below.
  final RiskConfigurationAccountTakeoverRiskConfigurationActionsMediumAction?
      mediumAction;

  RiskConfigurationAccountTakeoverRiskConfigurationActions({
    this.highAction,
    this.lowAction,
    this.mediumAction,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final highActionValue = highAction;
    if (highActionValue != null) {
      map['highAction'] = highActionValue.toMap();
    }
    final lowActionValue = lowAction;
    if (lowActionValue != null) {
      map['lowAction'] = lowActionValue.toMap();
    }
    final mediumActionValue = mediumAction;
    if (mediumActionValue != null) {
      map['mediumAction'] = mediumActionValue.toMap();
    }
    return map;
  }

  factory RiskConfigurationAccountTakeoverRiskConfigurationActions.fromMap(
      Map<String, dynamic> map) {
    return RiskConfigurationAccountTakeoverRiskConfigurationActions(
      highAction: map['highAction'] == null
          ? null
          : RiskConfigurationAccountTakeoverRiskConfigurationActionsHighAction
              .fromMap((map['highAction'] as Map).cast<String, dynamic>()),
      lowAction: map['lowAction'] == null
          ? null
          : RiskConfigurationAccountTakeoverRiskConfigurationActionsLowAction
              .fromMap((map['lowAction'] as Map).cast<String, dynamic>()),
      mediumAction: map['mediumAction'] == null
          ? null
          : RiskConfigurationAccountTakeoverRiskConfigurationActionsMediumAction
              .fromMap((map['mediumAction'] as Map).cast<String, dynamic>()),
    );
  }
}
