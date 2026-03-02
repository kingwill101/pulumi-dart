// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssl_negotiation_policy_attribute.dart';

/// Input properties used for looking up and filtering SslNegotiationPolicy resources.
class SslNegotiationPolicyState {
  /// An SSL Negotiation policy attribute. Each has two properties:
  final pulumi.Input<List<SslNegotiationPolicyAttribute>>? attributes;
  /// The load balancer port to which the policy
  /// should be applied. This must be an active listener on the load
  /// balancer.
  final pulumi.Input<int>? lbPort;
  /// The load balancer to which the policy
  /// should be attached.
  final pulumi.Input<String>? loadBalancer;
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

  /// Creates a new [SslNegotiationPolicyState].
  /// [attributes] An SSL Negotiation policy attribute. Each has two properties:
  /// [lbPort] The load balancer port to which the policy
  /// [loadBalancer] The load balancer to which the policy
  /// [name] The name of the SSL negotiation policy.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [triggers] Map of arbitrary keys and values that, when changed, will trigger a redeployment.
  SslNegotiationPolicyState({
    this.attributes,
    this.lbPort,
    this.loadBalancer,
    this.name,
    this.region,
    this.triggers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': ?pulumi.Input.mapOptionalInputValue<List<SslNegotiationPolicyAttribute>, List<Map<String, dynamic>>>(attributes, (value) => pulumi.Input.encodeList<SslNegotiationPolicyAttribute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lbPort': ?lbPort,
      'loadBalancer': ?loadBalancer,
      'name': ?name,
      'region': ?region,
      'triggers': ?triggers,
    };
  }

  factory SslNegotiationPolicyState.fromMap(Map<String, dynamic> map) {
    return SslNegotiationPolicyState(
      attributes: map['attributes'] == null ? null : (pulumi.Input.decodeList<SslNegotiationPolicyAttribute>(map['attributes'], (value) => SslNegotiationPolicyAttribute.fromMap((value as Map).cast<String, dynamic>()))).input(),
      lbPort: map['lbPort'] == null ? null : (map['lbPort'] as int).input(),
      loadBalancer: map['loadBalancer'] == null ? null : (map['loadBalancer'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      triggers: map['triggers'] == null ? null : ((map['triggers'] as Map).cast<String, String>()).input(),
    );
  }
}

