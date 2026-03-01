// ignore_for_file: unused_element, unnecessary_cast

import 'client_port_match_condition_parameters_response.dart';

/// Defines the ClientPort condition for the delivery rule.
class DeliveryRuleClientPortConditionResponse {
  /// Request variable to compare with.
  /// Expected value is 'ClientPort'.
  final String name;
  /// Defines the parameters for the condition.
  final ClientPortMatchConditionParametersResponse parameters;

  /// Creates a new [DeliveryRuleClientPortConditionResponse].
  /// [name] Request variable to compare with.
  /// [parameters] Defines the parameters for the condition.
  DeliveryRuleClientPortConditionResponse({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': parameters.toMap(),
    };
  }

  factory DeliveryRuleClientPortConditionResponse.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleClientPortConditionResponse(
      name: map['name'] as String,
      parameters: ClientPortMatchConditionParametersResponse.fromMap((map['parameters'] as Map).cast<String, dynamic>()),
    );
  }
}

