// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_version_match_condition_parameters.dart';

/// Defines the HttpVersion condition for the delivery rule.
class DeliveryRuleHttpVersionCondition {
  /// Request variable to compare with.
  /// Expected value is 'HttpVersion'.
  final pulumi.Input<String> name;

  /// Defines the parameters for the condition.
  final pulumi.Input<HttpVersionMatchConditionParameters> parameters;

  /// Creates a new [DeliveryRuleHttpVersionCondition].
  /// [name] Request variable to compare with.
  /// [parameters] Defines the parameters for the condition.
  DeliveryRuleHttpVersionCondition({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters':
          pulumi.Input.mapInputValue<
            HttpVersionMatchConditionParameters,
            Map<String, dynamic>
          >(parameters, (value) => value.toMap()),
    };
  }

  factory DeliveryRuleHttpVersionCondition.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleHttpVersionCondition(
      name: pulumi.Input.fromValue(map['name'] as String),
      parameters: pulumi.Input.fromValue(
        HttpVersionMatchConditionParameters.fromMap(
          (map['parameters']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
