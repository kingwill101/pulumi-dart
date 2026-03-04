// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'url_file_name_match_condition_parameters_response.dart';

/// Defines the UrlFileName condition for the delivery rule.
class DeliveryRuleUrlFileNameConditionResponse {
  /// Request variable to compare with.
  /// Expected value is 'UrlFileName'.
  final pulumi.Input<String> name;

  /// Defines the parameters for the condition.
  final pulumi.Input<UrlFileNameMatchConditionParametersResponse> parameters;

  /// Creates a new [DeliveryRuleUrlFileNameConditionResponse].
  /// [name] Request variable to compare with.
  /// [parameters] Defines the parameters for the condition.
  DeliveryRuleUrlFileNameConditionResponse({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters':
          pulumi.Input.mapInputValue<
            UrlFileNameMatchConditionParametersResponse,
            Map<String, dynamic>
          >(parameters, (value) => value.toMap()),
    };
  }

  factory DeliveryRuleUrlFileNameConditionResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return DeliveryRuleUrlFileNameConditionResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      parameters: pulumi.Input.fromValue(
        UrlFileNameMatchConditionParametersResponse.fromMap(
          (map['parameters']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
