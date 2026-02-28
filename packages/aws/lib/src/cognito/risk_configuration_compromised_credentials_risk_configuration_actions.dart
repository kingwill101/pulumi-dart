// ignore_for_file: unused_element, unnecessary_cast

class RiskConfigurationCompromisedCredentialsRiskConfigurationActions {
  /// The event action. Valid values are `BLOCK` or `NO_ACTION`.
  final String eventAction;

  /// Creates a new [RiskConfigurationCompromisedCredentialsRiskConfigurationActions].
  /// [eventAction] The event action. Valid values are `BLOCK` or `NO_ACTION`.
  RiskConfigurationCompromisedCredentialsRiskConfigurationActions({
    required this.eventAction,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['eventAction'] = eventAction;
    return map;
  }

  factory RiskConfigurationCompromisedCredentialsRiskConfigurationActions.fromMap(
      Map<String, dynamic> map) {
    return RiskConfigurationCompromisedCredentialsRiskConfigurationActions(
      eventAction: map['eventAction'] as String,
    );
  }
}
