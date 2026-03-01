// ignore_for_file: unused_element, unnecessary_cast

import 'ssl_protocol_match_condition_parameters.dart';

/// Defines the SslProtocol condition for the delivery rule.
class DeliveryRuleSslProtocolCondition {
  /// Request variable to compare with.
  /// Expected value is 'SslProtocol'.
  final String name;
  /// Defines the parameters for the condition.
  final SslProtocolMatchConditionParameters parameters;

  /// Creates a new [DeliveryRuleSslProtocolCondition].
  /// [name] Request variable to compare with.
  /// [parameters] Defines the parameters for the condition.
  DeliveryRuleSslProtocolCondition({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': parameters.toMap(),
    };
  }

  factory DeliveryRuleSslProtocolCondition.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleSslProtocolCondition(
      name: map['name'] as String,
      parameters: SslProtocolMatchConditionParameters.fromMap((map['parameters'] as Map).cast<String, dynamic>()),
    );
  }
}

