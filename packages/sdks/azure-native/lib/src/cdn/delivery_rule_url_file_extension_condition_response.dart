// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'url_file_extension_match_condition_parameters_response.dart';

/// Defines the UrlFileExtension condition for the delivery rule.
class DeliveryRuleUrlFileExtensionConditionResponse {
  /// Request variable to compare with.
  /// Expected value is 'UrlFileExtension'.
  final pulumi.Input<String> name;

  /// Defines the parameters for the condition.
  final pulumi.Input<UrlFileExtensionMatchConditionParametersResponse>
  parameters;

  /// Creates a new [DeliveryRuleUrlFileExtensionConditionResponse].
  /// [name] Request variable to compare with.
  /// [parameters] Defines the parameters for the condition.
  DeliveryRuleUrlFileExtensionConditionResponse({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters':
          pulumi.Input.mapInputValue<
            UrlFileExtensionMatchConditionParametersResponse,
            Map<String, dynamic>
          >(parameters, (value) => value.toMap()),
    };
  }

  factory DeliveryRuleUrlFileExtensionConditionResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return DeliveryRuleUrlFileExtensionConditionResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      parameters: pulumi.Input.fromValue(
        UrlFileExtensionMatchConditionParametersResponse.fromMap(
          (map['parameters']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
