// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cache_key_query_string_action_parameters_response.dart';

/// Defines the cache-key query string action for the delivery rule.
class DeliveryRuleCacheKeyQueryStringActionResponse {
  /// The name of the action for the delivery rule.
  /// Expected value is 'CacheKeyQueryString'.
  final pulumi.Input<String> name;
  /// Defines the parameters for the action.
  final pulumi.Input<CacheKeyQueryStringActionParametersResponse> parameters;

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
      'parameters': pulumi.Input.mapInputValue<CacheKeyQueryStringActionParametersResponse, Map<String, dynamic>>(parameters, (value) => value.toMap()),
    };
  }

  factory DeliveryRuleCacheKeyQueryStringActionResponse.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleCacheKeyQueryStringActionResponse(
      name: (map['name'] as String).input(),
      parameters: (CacheKeyQueryStringActionParametersResponse.fromMap((map['parameters'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

