// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_rule_response.dart';

/// A policy that specifies the delivery rules to be used for an endpoint.
class EndpointPropertiesUpdateParametersDeliveryPolicyResponse {
  /// User-friendly description of the policy.
  final String? description;
  /// A list of the delivery rules.
  final List<DeliveryRuleResponse> rules;

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
      'rules': pulumi.Input.encodeList<DeliveryRuleResponse, Map<String, dynamic>>(rules, (value) => value.toMap()),
    };
  }

  factory EndpointPropertiesUpdateParametersDeliveryPolicyResponse.fromMap(Map<String, dynamic> map) {
    return EndpointPropertiesUpdateParametersDeliveryPolicyResponse(
      description: map['description'] == null ? null : map['description'] as String,
      rules: pulumi.Input.decodeList<DeliveryRuleResponse>(map['rules'], (value) => DeliveryRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

