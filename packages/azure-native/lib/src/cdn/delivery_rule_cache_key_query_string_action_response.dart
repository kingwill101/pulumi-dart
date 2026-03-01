// ignore_for_file: unused_element, unnecessary_cast

import 'cache_key_query_string_action_parameters_response.dart';

/// Defines the cache-key query string action for the delivery rule.
class DeliveryRuleCacheKeyQueryStringActionResponse {
  /// The name of the action for the delivery rule.
  /// Expected value is 'CacheKeyQueryString'.
  final String name;
  /// Defines the parameters for the action.
  final CacheKeyQueryStringActionParametersResponse parameters;

  /// Creates a new [DeliveryRuleCacheKeyQueryStringActionResponse].
  /// [name] The name of the action for the delivery rule.
  /// [parameters] Defines the parameters for the action.
  DeliveryRuleCacheKeyQueryStringActionResponse({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': parameters.toMap(),
    };
  }

  factory DeliveryRuleCacheKeyQueryStringActionResponse.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleCacheKeyQueryStringActionResponse(
      name: map['name'] as String,
      parameters: CacheKeyQueryStringActionParametersResponse.fromMap((map['parameters'] as Map).cast<String, dynamic>()),
    );
  }
}

