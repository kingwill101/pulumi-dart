// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RiskConfigurationCompromisedCredentialsRiskConfigurationActions {
  /// The event action. Valid values are `BLOCK` or `NO_ACTION`.
  final pulumi.Input<String> eventAction;

  /// Creates a new [RiskConfigurationCompromisedCredentialsRiskConfigurationActions].
  /// [eventAction] The event action. Valid values are `BLOCK` or `NO_ACTION`.
  RiskConfigurationCompromisedCredentialsRiskConfigurationActions({
    required this.eventAction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventAction': eventAction,
    };
  }

  factory RiskConfigurationCompromisedCredentialsRiskConfigurationActions.fromMap(Map<String, dynamic> map) {
    return RiskConfigurationCompromisedCredentialsRiskConfigurationActions(
      eventAction: (map['eventAction'] as String).input(),
    );
  }
}

