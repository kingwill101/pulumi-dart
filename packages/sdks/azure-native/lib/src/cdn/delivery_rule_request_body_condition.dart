// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'request_body_match_condition_parameters.dart';

/// Defines the RequestBody condition for the delivery rule.
class DeliveryRuleRequestBodyCondition {
  /// Request variable to compare with.
  /// Expected value is 'RequestBody'.
  final pulumi.Input<String> name;
  /// Defines the parameters for the condition.
  final pulumi.Input<RequestBodyMatchConditionParameters> parameters;

  /// Creates a new [DeliveryRuleRequestBodyCondition].
  /// [name] Request variable to compare with.
  /// [parameters] Defines the parameters for the condition.
  DeliveryRuleRequestBodyCondition({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': pulumi.Input.mapInputValue<RequestBodyMatchConditionParameters, Map<String, dynamic>>(parameters, (value) => value.toMap()),
    };
  }

  factory DeliveryRuleRequestBodyCondition.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleRequestBodyCondition(
      name: pulumi.Input.fromValue(map['name'] as String),
      parameters: pulumi.Input.fromValue(RequestBodyMatchConditionParameters.fromMap((map['parameters']! as Map).cast<String, dynamic>())),
    );
  }
}

