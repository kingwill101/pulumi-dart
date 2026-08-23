// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cache_expiration_action_parameters.dart';

/// Defines the cache expiration action for the delivery rule.
class DeliveryRuleCacheExpirationAction {
  /// The name of the action for the delivery rule.
  /// Expected value is 'CacheExpiration'.
  final pulumi.Input<String> name;
  /// Defines the parameters for the action.
  final pulumi.Input<CacheExpirationActionParameters> parameters;

  /// Creates a new [DeliveryRuleCacheExpirationAction].
  /// [name] The name of the action for the delivery rule.
  /// [parameters] Defines the parameters for the action.
  const DeliveryRuleCacheExpirationAction({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': pulumi.Input.mapInputValue<CacheExpirationActionParameters, Map<String, dynamic>>(parameters, (value) => value.toMap()),
    };
  }

  factory DeliveryRuleCacheExpirationAction.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleCacheExpirationAction(
      name: pulumi.Input.fromValue(map['name'] as String),
      parameters: pulumi.Input.fromValue(CacheExpirationActionParameters.fromMap((map['parameters']! as Map).cast<String, dynamic>())),
    );
  }
}
