// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'risk_configuration_compromised_credentials_risk_configuration_actions.dart';

class RiskConfigurationCompromisedCredentialsRiskConfiguration {
  /// The compromised credentials risk configuration actions. See details below.
  final pulumi.Input<RiskConfigurationCompromisedCredentialsRiskConfigurationActions> actions;
  /// Perform the action for these events. The default is to perform all events if no event filter is specified. Valid values are `SIGN_IN`, `PASSWORD_CHANGE`, and `SIGN_UP`.
  final pulumi.Input<List<String>>? eventFilters;

  /// Creates a new [RiskConfigurationCompromisedCredentialsRiskConfiguration].
  /// [actions] The compromised credentials risk configuration actions. See details below.
  /// [eventFilters] Perform the action for these events. The default is to perform all events if no event filter is specified. Valid values are `SIGN_IN`, `PASSWORD_CHANGE`, and `SIGN_UP`.
  const RiskConfigurationCompromisedCredentialsRiskConfiguration({
    required this.actions,
    this.eventFilters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': pulumi.Input.mapInputValue<RiskConfigurationCompromisedCredentialsRiskConfigurationActions, Map<String, dynamic>>(actions, (value) => value.toMap()),
      'eventFilters': ?eventFilters,
    };
  }

  factory RiskConfigurationCompromisedCredentialsRiskConfiguration.fromMap(Map<String, dynamic> map) {
    return RiskConfigurationCompromisedCredentialsRiskConfiguration(
      actions: pulumi.Input.fromValue(RiskConfigurationCompromisedCredentialsRiskConfigurationActions.fromMap((map['actions']! as Map).cast<String, dynamic>())),
      eventFilters: (() { final guardedValue = map['eventFilters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

