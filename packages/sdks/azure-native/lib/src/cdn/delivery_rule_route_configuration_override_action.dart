// ignore_for_file: unused_element, unnecessary_cast

import 'route_configuration_override_action_parameters.dart';

/// Defines the route configuration override action for the delivery rule. Only applicable to Frontdoor Standard/Premium Profiles.
class DeliveryRuleRouteConfigurationOverrideAction {
  /// The name of the action for the delivery rule.
  /// Expected value is 'RouteConfigurationOverride'.
  final String name;
  /// Defines the parameters for the action.
  final RouteConfigurationOverrideActionParameters parameters;

  /// Creates a new [DeliveryRuleRouteConfigurationOverrideAction].
  /// [name] The name of the action for the delivery rule.
  /// [parameters] Defines the parameters for the action.
  DeliveryRuleRouteConfigurationOverrideAction({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': parameters.toMap(),
    };
  }

  factory DeliveryRuleRouteConfigurationOverrideAction.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleRouteConfigurationOverrideAction(
      name: map['name'] as String,
      parameters: RouteConfigurationOverrideActionParameters.fromMap((map['parameters'] as Map).cast<String, dynamic>()),
    );
  }
}

