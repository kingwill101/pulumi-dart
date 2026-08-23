// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'request_method_match_condition_parameters.dart';

/// Defines the RequestMethod condition for the delivery rule.
class DeliveryRuleRequestMethodCondition {
  /// Request variable to compare with.
  /// Expected value is 'RequestMethod'.
  final pulumi.Input<String> name;
  /// Defines the parameters for the condition.
  final pulumi.Input<RequestMethodMatchConditionParameters> parameters;

  /// Creates a new [DeliveryRuleRequestMethodCondition].
  /// [name] Request variable to compare with.
  /// [parameters] Defines the parameters for the condition.
  const DeliveryRuleRequestMethodCondition({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': pulumi.Input.mapInputValue<RequestMethodMatchConditionParameters, Map<String, dynamic>>(parameters, (value) => value.toMap()),
    };
  }

  factory DeliveryRuleRequestMethodCondition.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleRequestMethodCondition(
      name: pulumi.Input.fromValue(map['name'] as String),
      parameters: pulumi.Input.fromValue(RequestMethodMatchConditionParameters.fromMap((map['parameters']! as Map).cast<String, dynamic>())),
    );
  }
}
