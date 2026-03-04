// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'request_header_match_condition_parameters.dart';

/// Defines the RequestHeader condition for the delivery rule.
class DeliveryRuleRequestHeaderCondition {
  /// Request variable to compare with.
  /// Expected value is 'RequestHeader'.
  final pulumi.Input<String> name;

  /// Defines the parameters for the condition.
  final pulumi.Input<RequestHeaderMatchConditionParameters> parameters;

  /// Creates a new [DeliveryRuleRequestHeaderCondition].
  /// [name] Request variable to compare with.
  /// [parameters] Defines the parameters for the condition.
  DeliveryRuleRequestHeaderCondition({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters':
          pulumi.Input.mapInputValue<
            RequestHeaderMatchConditionParameters,
            Map<String, dynamic>
          >(parameters, (value) => value.toMap()),
    };
  }

  factory DeliveryRuleRequestHeaderCondition.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleRequestHeaderCondition(
      name: pulumi.Input.fromValue(map['name'] as String),
      parameters: pulumi.Input.fromValue(
        RequestHeaderMatchConditionParameters.fromMap(
          (map['parameters']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
