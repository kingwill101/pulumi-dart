// ignore_for_file: unused_element, unnecessary_cast

import 'header_action_parameters_response.dart';

/// Defines the response header action for the delivery rule.
class DeliveryRuleResponseHeaderActionResponse {
  /// The name of the action for the delivery rule.
  /// Expected value is 'ModifyResponseHeader'.
  final String name;
  /// Defines the parameters for the action.
  final HeaderActionParametersResponse parameters;

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
      'parameters': parameters.toMap(),
    };
  }

  factory DeliveryRuleResponseHeaderActionResponse.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleResponseHeaderActionResponse(
      name: map['name'] as String,
      parameters: HeaderActionParametersResponse.fromMap((map['parameters'] as Map).cast<String, dynamic>()),
    );
  }
}

