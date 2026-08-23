// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'request_uri_match_condition_parameters.dart';

/// Defines the RequestUri condition for the delivery rule.
class DeliveryRuleRequestUriCondition {
  /// Request variable to compare with.
  /// Expected value is 'RequestUri'.
  final pulumi.Input<String> name;
  /// Defines the parameters for the condition.
  final pulumi.Input<RequestUriMatchConditionParameters> parameters;

  /// Creates a new [DeliveryRuleRequestUriCondition].
  /// [name] Request variable to compare with.
  /// [parameters] Defines the parameters for the condition.
  const DeliveryRuleRequestUriCondition({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': pulumi.Input.mapInputValue<RequestUriMatchConditionParameters, Map<String, dynamic>>(parameters, (value) => value.toMap()),
    };
  }

  factory DeliveryRuleRequestUriCondition.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleRequestUriCondition(
      name: pulumi.Input.fromValue(map['name'] as String),
      parameters: pulumi.Input.fromValue(RequestUriMatchConditionParameters.fromMap((map['parameters']! as Map).cast<String, dynamic>())),
    );
  }
}
