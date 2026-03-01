// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_rule.dart';

/// A policy that specifies the delivery rules to be used for an endpoint.
class EndpointPropertiesUpdateParametersDeliveryPolicy {
  /// User-friendly description of the policy.
  final String? description;
  /// A list of the delivery rules.
  final List<DeliveryRule> rules;

  /// Creates a new [EndpointPropertiesUpdateParametersDeliveryPolicy].
  /// [description] User-friendly description of the policy.
  /// [rules] A list of the delivery rules.
  EndpointPropertiesUpdateParametersDeliveryPolicy({
    this.description,
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'rules': pulumi.Input.encodeList<DeliveryRule, Map<String, dynamic>>(rules, (value) => value.toMap()),
    };
  }

  factory EndpointPropertiesUpdateParametersDeliveryPolicy.fromMap(Map<String, dynamic> map) {
    return EndpointPropertiesUpdateParametersDeliveryPolicy(
      description: map['description'] == null ? null : map['description'] as String,
      rules: pulumi.Input.decodeList<DeliveryRule>(map['rules'], (value) => DeliveryRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

