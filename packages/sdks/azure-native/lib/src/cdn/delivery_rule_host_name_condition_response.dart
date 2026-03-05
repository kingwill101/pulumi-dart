// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'host_name_match_condition_parameters_response.dart';

/// Defines the HostName condition for the delivery rule.
class DeliveryRuleHostNameConditionResponse {
  /// Request variable to compare with.
  /// Expected value is 'HostName'.
  final pulumi.Input<String> name;
  /// Defines the parameters for the condition.
  final pulumi.Input<HostNameMatchConditionParametersResponse> parameters;

  /// Creates a new [DeliveryRuleHostNameConditionResponse].
  /// [name] Request variable to compare with.
  /// [parameters] Defines the parameters for the condition.
  DeliveryRuleHostNameConditionResponse({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': pulumi.Input.mapInputValue<HostNameMatchConditionParametersResponse, Map<String, dynamic>>(parameters, (value) => value.toMap()),
    };
  }

  factory DeliveryRuleHostNameConditionResponse.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleHostNameConditionResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      parameters: pulumi.Input.fromValue(HostNameMatchConditionParametersResponse.fromMap((map['parameters']! as Map).cast<String, dynamic>())),
    );
  }
}

