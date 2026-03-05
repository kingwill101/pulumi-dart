// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cache_key_query_string_action_parameters.dart';

/// Defines the cache-key query string action for the delivery rule.
class DeliveryRuleCacheKeyQueryStringAction {
  /// The name of the action for the delivery rule.
  /// Expected value is 'CacheKeyQueryString'.
  final pulumi.Input<String> name;
  /// Defines the parameters for the action.
  final pulumi.Input<CacheKeyQueryStringActionParameters> parameters;

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
      'parameters': pulumi.Input.mapInputValue<CacheKeyQueryStringActionParameters, Map<String, dynamic>>(parameters, (value) => value.toMap()),
    };
  }

  factory DeliveryRuleCacheKeyQueryStringAction.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleCacheKeyQueryStringAction(
      name: pulumi.Input.fromValue(map['name'] as String),
      parameters: pulumi.Input.fromValue(CacheKeyQueryStringActionParameters.fromMap((map['parameters']! as Map).cast<String, dynamic>())),
    );
  }
}

