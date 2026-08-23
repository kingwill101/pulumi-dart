// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssl_protocol_match_condition_parameters.dart';

/// Defines the SslProtocol condition for the delivery rule.
class DeliveryRuleSslProtocolCondition {
  /// Request variable to compare with.
  /// Expected value is 'SslProtocol'.
  final pulumi.Input<String> name;
  /// Defines the parameters for the condition.
  final pulumi.Input<SslProtocolMatchConditionParameters> parameters;

  /// Creates a new [DeliveryRuleSslProtocolCondition].
  /// [name] Request variable to compare with.
  /// [parameters] Defines the parameters for the condition.
  const DeliveryRuleSslProtocolCondition({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': pulumi.Input.mapInputValue<SslProtocolMatchConditionParameters, Map<String, dynamic>>(parameters, (value) => value.toMap()),
    };
  }

  factory DeliveryRuleSslProtocolCondition.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleSslProtocolCondition(
      name: pulumi.Input.fromValue(map['name'] as String),
      parameters: pulumi.Input.fromValue(SslProtocolMatchConditionParameters.fromMap((map['parameters']! as Map).cast<String, dynamic>())),
    );
  }
}
