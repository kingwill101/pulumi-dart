// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cookies_match_condition_parameters.dart';

/// Defines the Cookies condition for the delivery rule.
class DeliveryRuleCookiesCondition {
  /// Request variable to compare with.
  /// Expected value is 'Cookies'.
  final pulumi.Input<String> name;
  /// Defines the parameters for the condition.
  final pulumi.Input<CookiesMatchConditionParameters> parameters;

  /// Creates a new [DeliveryRuleCookiesCondition].
  /// [name] Request variable to compare with.
  /// [parameters] Defines the parameters for the condition.
  DeliveryRuleCookiesCondition({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': pulumi.Input.mapInputValue<CookiesMatchConditionParameters, Map<String, dynamic>>(parameters, (value) => value.toMap()),
    };
  }

  factory DeliveryRuleCookiesCondition.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleCookiesCondition(
      name: pulumi.Input.fromValue(map['name'] as String),
      parameters: pulumi.Input.fromValue(CookiesMatchConditionParameters.fromMap((map['parameters']! as Map).cast<String, dynamic>())),
    );
  }
}

