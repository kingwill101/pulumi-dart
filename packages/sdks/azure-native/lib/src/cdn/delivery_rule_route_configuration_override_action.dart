// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_configuration_override_action_parameters.dart';

/// Defines the route configuration override action for the delivery rule. Only applicable to Frontdoor Standard/Premium Profiles.
class DeliveryRuleRouteConfigurationOverrideAction {
  /// The name of the action for the delivery rule.
  /// Expected value is 'RouteConfigurationOverride'.
  final pulumi.Input<String> name;
  /// Defines the parameters for the action.
  final pulumi.Input<RouteConfigurationOverrideActionParameters> parameters;

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
      'parameters': pulumi.Input.mapInputValue<RouteConfigurationOverrideActionParameters, Map<String, dynamic>>(parameters, (value) => value.toMap()),
    };
  }

  factory DeliveryRuleRouteConfigurationOverrideAction.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleRouteConfigurationOverrideAction(
      name: pulumi.Input.fromValue(map['name'] as String),
      parameters: pulumi.Input.fromValue(RouteConfigurationOverrideActionParameters.fromMap((map['parameters']! as Map).cast<String, dynamic>())),
    );
  }
}

