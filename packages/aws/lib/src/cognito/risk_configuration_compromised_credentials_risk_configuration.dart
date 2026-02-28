// ignore_for_file: unused_element, unnecessary_cast

import 'risk_configuration_compromised_credentials_risk_configuration_actions.dart';

class RiskConfigurationCompromisedCredentialsRiskConfiguration {
  /// The compromised credentials risk configuration actions. See details below.
  final RiskConfigurationCompromisedCredentialsRiskConfigurationActions actions;
  /// Perform the action for these events. The default is to perform all events if no event filter is specified. Valid values are `SIGN_IN`, `PASSWORD_CHANGE`, and `SIGN_UP`.
  final List<String>? eventFilters;

  /// Creates a new [RiskConfigurationCompromisedCredentialsRiskConfiguration].
  /// [actions] The compromised credentials risk configuration actions. See details below.
  /// [eventFilters] Perform the action for these events. The default is to perform all events if no event filter is specified. Valid values are `SIGN_IN`, `PASSWORD_CHANGE`, and `SIGN_UP`.
  RiskConfigurationCompromisedCredentialsRiskConfiguration({
    required this.actions,
    this.eventFilters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': actions.toMap(),
      'eventFilters': ?eventFilters,
    };
  }

  factory RiskConfigurationCompromisedCredentialsRiskConfiguration.fromMap(Map<String, dynamic> map) {
    return RiskConfigurationCompromisedCredentialsRiskConfiguration(
      actions: RiskConfigurationCompromisedCredentialsRiskConfigurationActions.fromMap((map['actions'] as Map).cast<String, dynamic>()),
      eventFilters: map['eventFilters'] == null ? null : (map['eventFilters'] as List).cast<String>(),
    );
  }
}

