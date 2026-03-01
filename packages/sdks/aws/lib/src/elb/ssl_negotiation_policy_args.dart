// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssl_negotiation_policy_attribute.dart';

/// {@template pulumi_elb_ssl_negotiation_policy_ssl_negotiation_policy_args_doc}
/// The set of arguments for SslNegotiationPolicy.
/// {@endtemplate}
/// {@macro pulumi_elb_ssl_negotiation_policy_ssl_negotiation_policy_args_doc}
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

  /// Creates a new [SslNegotiationPolicyArgs].
  /// [attributes] An SSL Negotiation policy attribute. Each has two properties:
  /// [lbPort] The load balancer port to which the policy
  /// [loadBalancer] The load balancer to which the policy
  /// [name] The name of the SSL negotiation policy.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [triggers] Map of arbitrary keys and values that, when changed, will trigger a redeployment.
  SslNegotiationPolicyArgs({
    pulumi.Output<List<SslNegotiationPolicyAttribute>>? attributes,
    required pulumi.Output<int> lbPort,
    required pulumi.Output<String> loadBalancer,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? triggers,
  }) :
      attributes = pulumi.Input.asOptionalInput<List<SslNegotiationPolicyAttribute>>(attributes),
      lbPort = pulumi.Input.asInput<int>(lbPort),
      loadBalancer = pulumi.Input.asInput<String>(loadBalancer),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      triggers = pulumi.Input.asOptionalInput<Map<String, String>>(triggers);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': ?pulumi.Input.mapOptionalInputValue<List<SslNegotiationPolicyAttribute>, List<Map<String, dynamic>>>(attributes, (value) => pulumi.Input.encodeList<SslNegotiationPolicyAttribute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lbPort': lbPort,
      'loadBalancer': loadBalancer,
      'name': ?name,
      'region': ?region,
      'triggers': ?triggers,
    };
  }

  factory SslNegotiationPolicyArgs.fromMap(Map<String, dynamic> map) {
    return SslNegotiationPolicyArgs(
      attributes: map['attributes'] == null ? null : pulumi.Output.create<List<SslNegotiationPolicyAttribute>>(pulumi.Input.decodeList<SslNegotiationPolicyAttribute>(map['attributes'], (value) => SslNegotiationPolicyAttribute.fromMap((value as Map).cast<String, dynamic>()))),
      lbPort: pulumi.Output.create<int>(map['lbPort'] as int),
      loadBalancer: pulumi.Output.create<String>(map['loadBalancer'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      triggers: map['triggers'] == null ? null : pulumi.Output.create<Map<String, String>>((map['triggers'] as Map).cast<String, String>()),
    );
  }
}

