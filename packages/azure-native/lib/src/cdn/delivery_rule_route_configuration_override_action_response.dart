// ignore_for_file: unused_element, unnecessary_cast

import 'route_configuration_override_action_parameters_response.dart';

/// Defines the route configuration override action for the delivery rule. Only applicable to Frontdoor Standard/Premium Profiles.
class DeliveryRuleRouteConfigurationOverrideActionResponse {
  /// The name of the action for the delivery rule.
  /// Expected value is 'RouteConfigurationOverride'.
  final String name;
  /// Defines the parameters for the action.
  final RouteConfigurationOverrideActionParametersResponse parameters;

  /// Creates a new [DeliveryRuleRouteConfigurationOverrideActionResponse].
  /// [name] The name of the action for the delivery rule.
  /// [parameters] Defines the parameters for the action.
  DeliveryRuleRouteConfigurationOverrideActionResponse({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': parameters.toMap(),
    };
  }

  factory DeliveryRuleRouteConfigurationOverrideActionResponse.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleRouteConfigurationOverrideActionResponse(
      name: map['name'] as String,
      parameters: RouteConfigurationOverrideActionParametersResponse.fromMap((map['parameters'] as Map).cast<String, dynamic>()),
    );
  }
}

