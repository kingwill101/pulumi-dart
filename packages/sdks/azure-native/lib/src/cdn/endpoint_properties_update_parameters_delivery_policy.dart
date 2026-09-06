// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_rule.dart';

/// A policy that specifies the delivery rules to be used for an endpoint.
class EndpointPropertiesUpdateParametersDeliveryPolicy {
  /// User-friendly description of the policy.
  final pulumi.Input<String?>? description;
  /// A list of the delivery rules.
  final pulumi.Input<List<DeliveryRule>> rules;

  /// Creates a new [EndpointPropertiesUpdateParametersDeliveryPolicy].
  /// [description] User-friendly description of the policy.
  /// [rules] A list of the delivery rules.
  const EndpointPropertiesUpdateParametersDeliveryPolicy({
    this.description,
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'rules': pulumi.Input.mapInputValue<List<DeliveryRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<DeliveryRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory EndpointPropertiesUpdateParametersDeliveryPolicy.fromMap(Map<String, dynamic> map) {
    return EndpointPropertiesUpdateParametersDeliveryPolicy(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rules: pulumi.Input.fromValue(pulumi.Input.decodeList<DeliveryRule>(map['rules']!, (value) => DeliveryRule.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
