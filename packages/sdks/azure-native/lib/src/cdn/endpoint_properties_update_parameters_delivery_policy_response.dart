// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_rule_response.dart';

/// A policy that specifies the delivery rules to be used for an endpoint.
class EndpointPropertiesUpdateParametersDeliveryPolicyResponse {
  /// User-friendly description of the policy.
  final pulumi.Input<String>? description;
  /// A list of the delivery rules.
  final pulumi.Input<List<DeliveryRuleResponse>> rules;

  /// Creates a new [EndpointPropertiesUpdateParametersDeliveryPolicyResponse].
  /// [description] User-friendly description of the policy.
  /// [rules] A list of the delivery rules.
  EndpointPropertiesUpdateParametersDeliveryPolicyResponse({
    this.description,
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'rules': pulumi.Input.mapInputValue<List<DeliveryRuleResponse>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<DeliveryRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory EndpointPropertiesUpdateParametersDeliveryPolicyResponse.fromMap(Map<String, dynamic> map) {
    return EndpointPropertiesUpdateParametersDeliveryPolicyResponse(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rules: pulumi.Input.fromValue(pulumi.Input.decodeList<DeliveryRuleResponse>(map['rules']!, (value) => DeliveryRuleResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

