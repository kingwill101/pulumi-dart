// ignore_for_file: unused_element, unnecessary_cast

import 'cache_expiration_action_parameters_response.dart';

/// Defines the cache expiration action for the delivery rule.
class DeliveryRuleCacheExpirationActionResponse {
  /// The name of the action for the delivery rule.
  /// Expected value is 'CacheExpiration'.
  final String name;
  /// Defines the parameters for the action.
  final CacheExpirationActionParametersResponse parameters;

  /// Creates a new [DeliveryRuleCacheExpirationActionResponse].
  /// [name] The name of the action for the delivery rule.
  /// [parameters] Defines the parameters for the action.
  DeliveryRuleCacheExpirationActionResponse({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': parameters.toMap(),
    };
  }

  factory DeliveryRuleCacheExpirationActionResponse.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleCacheExpirationActionResponse(
      name: map['name'] as String,
      parameters: CacheExpirationActionParametersResponse.fromMap((map['parameters'] as Map).cast<String, dynamic>()),
    );
  }
}

