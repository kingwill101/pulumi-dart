// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'query_string_match_condition_parameters.dart';

/// Defines the QueryString condition for the delivery rule.
class DeliveryRuleQueryStringCondition {
  /// Request variable to compare with.
  /// Expected value is 'QueryString'.
  final pulumi.Input<String> name;
  /// Defines the parameters for the condition.
  final pulumi.Input<QueryStringMatchConditionParameters> parameters;

  /// Creates a new [DeliveryRuleQueryStringCondition].
  /// [name] Request variable to compare with.
  /// [parameters] Defines the parameters for the condition.
  DeliveryRuleQueryStringCondition({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': pulumi.Input.mapInputValue<QueryStringMatchConditionParameters, Map<String, dynamic>>(parameters, (value) => value.toMap()),
    };
  }

  factory DeliveryRuleQueryStringCondition.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleQueryStringCondition(
      name: pulumi.Input.fromValue(map['name'] as String),
      parameters: pulumi.Input.fromValue(QueryStringMatchConditionParameters.fromMap((map['parameters']! as Map).cast<String, dynamic>())),
    );
  }
}

