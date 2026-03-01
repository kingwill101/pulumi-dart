// ignore_for_file: unused_element, unnecessary_cast

import 'risk_configuration_account_takeover_risk_configuration_actions_high_action.dart';
import 'risk_configuration_account_takeover_risk_configuration_actions_low_action.dart';
import 'risk_configuration_account_takeover_risk_configuration_actions_medium_action.dart';

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

  /// Creates a new [RiskConfigurationAccountTakeoverRiskConfigurationActions].
  /// [highAction] Action to take for a high risk. See action block below.
  /// [lowAction] Action to take for a low risk. See action block below.
  /// [mediumAction] Action to take for a medium risk. See action block below.
  RiskConfigurationAccountTakeoverRiskConfigurationActions({
    this.highAction,
    this.lowAction,
    this.mediumAction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'highAction': ?highAction == null ? null : highAction!.toMap(),
      'lowAction': ?lowAction == null ? null : lowAction!.toMap(),
      'mediumAction': ?mediumAction == null ? null : mediumAction!.toMap(),
    };
  }

  factory RiskConfigurationAccountTakeoverRiskConfigurationActions.fromMap(
    Map<String, dynamic> map,
  ) {
    return RiskConfigurationAccountTakeoverRiskConfigurationActions(
      highAction: map['highAction'] == null
          ? null
          : RiskConfigurationAccountTakeoverRiskConfigurationActionsHighAction.fromMap(
              (map['highAction'] as Map).cast<String, dynamic>(),
            ),
      lowAction: map['lowAction'] == null
          ? null
          : RiskConfigurationAccountTakeoverRiskConfigurationActionsLowAction.fromMap(
              (map['lowAction'] as Map).cast<String, dynamic>(),
            ),
      mediumAction: map['mediumAction'] == null
          ? null
          : RiskConfigurationAccountTakeoverRiskConfigurationActionsMediumAction.fromMap(
              (map['mediumAction'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
