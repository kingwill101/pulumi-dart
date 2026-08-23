// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'url_path_match_condition_parameters.dart';

/// Defines the UrlPath condition for the delivery rule.
class DeliveryRuleUrlPathCondition {
  /// Request variable to compare with.
  /// Expected value is 'UrlPath'.
  final pulumi.Input<String> name;
  /// Defines the parameters for the condition.
  final pulumi.Input<UrlPathMatchConditionParameters> parameters;

  /// Creates a new [DeliveryRuleUrlPathCondition].
  /// [name] Request variable to compare with.
  /// [parameters] Defines the parameters for the condition.
  const DeliveryRuleUrlPathCondition({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': pulumi.Input.mapInputValue<UrlPathMatchConditionParameters, Map<String, dynamic>>(parameters, (value) => value.toMap()),
    };
  }

  factory DeliveryRuleUrlPathCondition.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleUrlPathCondition(
      name: pulumi.Input.fromValue(map['name'] as String),
      parameters: pulumi.Input.fromValue(UrlPathMatchConditionParameters.fromMap((map['parameters']! as Map).cast<String, dynamic>())),
    );
  }
}
