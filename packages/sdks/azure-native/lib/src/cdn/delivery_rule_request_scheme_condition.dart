// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'request_scheme_match_condition_parameters.dart';

/// Defines the RequestScheme condition for the delivery rule.
class DeliveryRuleRequestSchemeCondition {
  /// Request variable to compare with.
  /// Expected value is 'RequestScheme'.
  final pulumi.Input<String> name;
  /// Defines the parameters for the condition.
  final pulumi.Input<RequestSchemeMatchConditionParameters> parameters;

  /// Creates a new [DeliveryRuleRequestSchemeCondition].
  /// [name] Request variable to compare with.
  /// [parameters] Defines the parameters for the condition.
  const DeliveryRuleRequestSchemeCondition({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': pulumi.Input.mapInputValue<RequestSchemeMatchConditionParameters, Map<String, dynamic>>(parameters, (value) => value.toMap()),
    };
  }

  factory DeliveryRuleRequestSchemeCondition.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleRequestSchemeCondition(
      name: pulumi.Input.fromValue(map['name'] as String),
      parameters: pulumi.Input.fromValue(RequestSchemeMatchConditionParameters.fromMap((map['parameters']! as Map).cast<String, dynamic>())),
    );
  }
}

