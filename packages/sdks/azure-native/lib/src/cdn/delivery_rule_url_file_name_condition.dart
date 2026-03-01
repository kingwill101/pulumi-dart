// ignore_for_file: unused_element, unnecessary_cast

import 'url_file_name_match_condition_parameters.dart';

/// Defines the UrlFileName condition for the delivery rule.
class DeliveryRuleUrlFileNameCondition {
  /// Request variable to compare with.
  /// Expected value is 'UrlFileName'.
  final String name;
  /// Defines the parameters for the condition.
  final UrlFileNameMatchConditionParameters parameters;

  /// Creates a new [DeliveryRuleUrlFileNameCondition].
  /// [name] Request variable to compare with.
  /// [parameters] Defines the parameters for the condition.
  DeliveryRuleUrlFileNameCondition({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': parameters.toMap(),
    };
  }

  factory DeliveryRuleUrlFileNameCondition.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleUrlFileNameCondition(
      name: map['name'] as String,
      parameters: UrlFileNameMatchConditionParameters.fromMap((map['parameters'] as Map).cast<String, dynamic>()),
    );
  }
}

