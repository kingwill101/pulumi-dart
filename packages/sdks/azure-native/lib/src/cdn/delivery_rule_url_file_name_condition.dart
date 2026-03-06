// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'url_file_name_match_condition_parameters.dart';

/// Defines the UrlFileName condition for the delivery rule.
class DeliveryRuleUrlFileNameCondition {
  /// Request variable to compare with.
  /// Expected value is 'UrlFileName'.
  final pulumi.Input<String> name;
  /// Defines the parameters for the condition.
  final pulumi.Input<UrlFileNameMatchConditionParameters> parameters;

  /// Creates a new [DeliveryRuleUrlFileNameCondition].
  /// [name] Request variable to compare with.
  /// [parameters] Defines the parameters for the condition.
  const DeliveryRuleUrlFileNameCondition({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': pulumi.Input.mapInputValue<UrlFileNameMatchConditionParameters, Map<String, dynamic>>(parameters, (value) => value.toMap()),
    };
  }

  factory DeliveryRuleUrlFileNameCondition.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleUrlFileNameCondition(
      name: pulumi.Input.fromValue(map['name'] as String),
      parameters: pulumi.Input.fromValue(UrlFileNameMatchConditionParameters.fromMap((map['parameters']! as Map).cast<String, dynamic>())),
    );
  }
}

