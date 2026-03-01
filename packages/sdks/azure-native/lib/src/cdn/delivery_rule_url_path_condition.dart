// ignore_for_file: unused_element, unnecessary_cast

import 'url_path_match_condition_parameters.dart';

/// Defines the UrlPath condition for the delivery rule.
class DeliveryRuleUrlPathCondition {
  /// Request variable to compare with.
  /// Expected value is 'UrlPath'.
  final String name;
  /// Defines the parameters for the condition.
  final UrlPathMatchConditionParameters parameters;

  /// Creates a new [DeliveryRuleUrlPathCondition].
  /// [name] Request variable to compare with.
  /// [parameters] Defines the parameters for the condition.
  DeliveryRuleUrlPathCondition({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': parameters.toMap(),
    };
  }

  factory DeliveryRuleUrlPathCondition.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleUrlPathCondition(
      name: map['name'] as String,
      parameters: UrlPathMatchConditionParameters.fromMap((map['parameters'] as Map).cast<String, dynamic>()),
    );
  }
}

