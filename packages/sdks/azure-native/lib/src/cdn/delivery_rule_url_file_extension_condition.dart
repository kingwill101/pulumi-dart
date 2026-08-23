// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'url_file_extension_match_condition_parameters.dart';

/// Defines the UrlFileExtension condition for the delivery rule.
class DeliveryRuleUrlFileExtensionCondition {
  /// Request variable to compare with.
  /// Expected value is 'UrlFileExtension'.
  final pulumi.Input<String> name;
  /// Defines the parameters for the condition.
  final pulumi.Input<UrlFileExtensionMatchConditionParameters> parameters;

  /// Creates a new [DeliveryRuleUrlFileExtensionCondition].
  /// [name] Request variable to compare with.
  /// [parameters] Defines the parameters for the condition.
  const DeliveryRuleUrlFileExtensionCondition({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': pulumi.Input.mapInputValue<UrlFileExtensionMatchConditionParameters, Map<String, dynamic>>(parameters, (value) => value.toMap()),
    };
  }

  factory DeliveryRuleUrlFileExtensionCondition.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleUrlFileExtensionCondition(
      name: pulumi.Input.fromValue(map['name'] as String),
      parameters: pulumi.Input.fromValue(UrlFileExtensionMatchConditionParameters.fromMap((map['parameters']! as Map).cast<String, dynamic>())),
    );
  }
}
