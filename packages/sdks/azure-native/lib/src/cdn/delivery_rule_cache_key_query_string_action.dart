// ignore_for_file: unused_element, unnecessary_cast

import 'cache_key_query_string_action_parameters.dart';

/// Defines the cache-key query string action for the delivery rule.
class DeliveryRuleCacheKeyQueryStringAction {
  /// The name of the action for the delivery rule.
  /// Expected value is 'CacheKeyQueryString'.
  final String name;
  /// Defines the parameters for the action.
  final CacheKeyQueryStringActionParameters parameters;

  /// Creates a new [DeliveryRuleCacheKeyQueryStringAction].
  /// [name] The name of the action for the delivery rule.
  /// [parameters] Defines the parameters for the action.
  DeliveryRuleCacheKeyQueryStringAction({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': parameters.toMap(),
    };
  }

  factory DeliveryRuleCacheKeyQueryStringAction.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleCacheKeyQueryStringAction(
      name: map['name'] as String,
      parameters: CacheKeyQueryStringActionParameters.fromMap((map['parameters'] as Map).cast<String, dynamic>()),
    );
  }
}

