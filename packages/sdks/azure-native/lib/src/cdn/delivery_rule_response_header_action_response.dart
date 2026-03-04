// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'header_action_parameters_response.dart';

/// Defines the response header action for the delivery rule.
class DeliveryRuleResponseHeaderActionResponse {
  /// The name of the action for the delivery rule.
  /// Expected value is 'ModifyResponseHeader'.
  final pulumi.Input<String> name;

  /// Defines the parameters for the action.
  final pulumi.Input<HeaderActionParametersResponse> parameters;

  /// Creates a new [DeliveryRuleResponseHeaderActionResponse].
  /// [name] The name of the action for the delivery rule.
  /// [parameters] Defines the parameters for the action.
  DeliveryRuleResponseHeaderActionResponse({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters':
          pulumi.Input.mapInputValue<
            HeaderActionParametersResponse,
            Map<String, dynamic>
          >(parameters, (value) => value.toMap()),
    };
  }

  factory DeliveryRuleResponseHeaderActionResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return DeliveryRuleResponseHeaderActionResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      parameters: pulumi.Input.fromValue(
        HeaderActionParametersResponse.fromMap(
          (map['parameters']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
