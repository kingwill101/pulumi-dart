// ignore_for_file: unused_element, unnecessary_cast

import 'url_file_extension_match_condition_parameters.dart';

/// Defines the UrlFileExtension condition for the delivery rule.
class DeliveryRuleUrlFileExtensionCondition {
  /// Request variable to compare with.
  /// Expected value is 'UrlFileExtension'.
  final String name;
  /// Defines the parameters for the condition.
  final UrlFileExtensionMatchConditionParameters parameters;

  /// Creates a new [DeliveryRuleUrlFileExtensionCondition].
  /// [name] Request variable to compare with.
  /// [parameters] Defines the parameters for the condition.
  DeliveryRuleUrlFileExtensionCondition({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': parameters.toMap(),
    };
  }

  factory DeliveryRuleUrlFileExtensionCondition.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleUrlFileExtensionCondition(
      name: map['name'] as String,
      parameters: UrlFileExtensionMatchConditionParameters.fromMap((map['parameters'] as Map).cast<String, dynamic>()),
    );
  }
}

