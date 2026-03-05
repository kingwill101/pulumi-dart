// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssl_protocol_match_condition_parameters_response.dart';

/// Defines the SslProtocol condition for the delivery rule.
class DeliveryRuleSslProtocolConditionResponse {
  /// Request variable to compare with.
  /// Expected value is 'SslProtocol'.
  final pulumi.Input<String> name;
  /// Defines the parameters for the condition.
  final pulumi.Input<SslProtocolMatchConditionParametersResponse> parameters;

  /// Creates a new [DeliveryRuleSslProtocolConditionResponse].
  /// [name] Request variable to compare with.
  /// [parameters] Defines the parameters for the condition.
  DeliveryRuleSslProtocolConditionResponse({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': pulumi.Input.mapInputValue<SslProtocolMatchConditionParametersResponse, Map<String, dynamic>>(parameters, (value) => value.toMap()),
    };
  }

  factory DeliveryRuleSslProtocolConditionResponse.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleSslProtocolConditionResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      parameters: pulumi.Input.fromValue(SslProtocolMatchConditionParametersResponse.fromMap((map['parameters']! as Map).cast<String, dynamic>())),
    );
  }
}

