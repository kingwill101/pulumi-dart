// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../ssl_negotiation_policy_attribute/ssl_negotiation_policy_attribute.dart';

/// The set of arguments for SslNegotiationPolicy.
class SslNegotiationPolicyArgs {
  /// An SSL Negotiation policy attribute. Each has two properties:
  final pulumi.Input<List<SslNegotiationPolicyAttribute>>? attributes;

  /// The load balancer port to which the policy
  /// should be applied. This must be an active listener on the load
  /// balancer.
  final pulumi.Input<int> lbPort;

  /// The load balancer to which the policy
  /// should be attached.
  final pulumi.Input<String> loadBalancer;

  /// The name of the SSL negotiation policy.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of arbitrary keys and values that, when changed, will trigger a redeployment.
  ///
  /// To set your attributes, please see the [AWS Elastic Load Balancing Developer Guide](http://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/elb-security-policy-table.html) for a listing of the supported SSL protocols, SSL options, and SSL ciphers.
  ///
  /// > **NOTE:** The AWS documentation references Server Order Preference, which the AWS Elastic Load Balancing API refers to as `Server-Defined-Cipher-Order`. If you wish to set Server Order Preference, use this value instead.
  final pulumi.Input<Map<String, String>>? triggers;

  SslNegotiationPolicyArgs({
    this.attributes,
    required this.lbPort,
    required this.loadBalancer,
    this.name,
    this.region,
    this.triggers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final attributesValue = attributes;
    if (attributesValue != null) {
      map['attributes'] = pulumi.Input.mapOptionalInputValue<
              List<SslNegotiationPolicyAttribute>, List<Map<String, dynamic>>>(
          attributesValue,
          (value) => pulumi.Input.encodeList<SslNegotiationPolicyAttribute,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['lbPort'] = lbPort;
    map['loadBalancer'] = loadBalancer;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final triggersValue = triggers;
    if (triggersValue != null) {
      map['triggers'] = triggersValue;
    }
    return map;
  }

  factory SslNegotiationPolicyArgs.fromMap(Map<String, dynamic> map) {
    return SslNegotiationPolicyArgs(
      attributes:
          pulumi.Input.asOptionalInput<List<SslNegotiationPolicyAttribute>>(
              map['attributes']),
      lbPort: pulumi.Input.asInput<int>(map['lbPort']),
      loadBalancer: pulumi.Input.asInput<String>(map['loadBalancer']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      triggers:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['triggers']),
    );
  }
}
