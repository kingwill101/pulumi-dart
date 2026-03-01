// ignore_for_file: unused_element, unnecessary_cast

import 'cache_expiration_action_parameters.dart';

/// Defines the cache expiration action for the delivery rule.
class DeliveryRuleCacheExpirationAction {
  /// The name of the action for the delivery rule.
  /// Expected value is 'CacheExpiration'.
  final String name;
  /// Defines the parameters for the action.
  final CacheExpirationActionParameters parameters;

  /// Creates a new [DeliveryRuleCacheExpirationAction].
  /// [name] The name of the action for the delivery rule.
  /// [parameters] Defines the parameters for the action.
  DeliveryRuleCacheExpirationAction({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': parameters.toMap(),
    };
  }

  factory DeliveryRuleCacheExpirationAction.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleCacheExpirationAction(
      name: map['name'] as String,
      parameters: CacheExpirationActionParameters.fromMap((map['parameters'] as Map).cast<String, dynamic>()),
    );
  }
}

