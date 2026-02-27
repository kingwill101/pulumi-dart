import 'package:pulumi/pulumi.dart';
import '../ssl_negotiation_policy_attribute/ssl_negotiation_policy_attribute.dart';
import 'ssl_negotiation_policy_args.dart';

/// Provides a load balancer SSL negotiation policy, which allows an ELB to control the ciphers and protocols that are supported during SSL negotiations between a client and a load balancer.
class SslNegotiationPolicy extends CustomResource {
  /// An SSL Negotiation policy attribute. Each has two properties:
  late final Output<List<SslNegotiationPolicyAttribute>?> attributes;

  /// The load balancer port to which the policy
  /// should be applied. This must be an active listener on the load
  /// balancer.
  late final Output<int> lbPort;

  /// The load balancer to which the policy
  /// should be attached.
  late final Output<String> loadBalancer;

  /// The name of the SSL negotiation policy.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Map of arbitrary keys and values that, when changed, will trigger a redeployment.
  ///
  /// To set your attributes, please see the [AWS Elastic Load Balancing Developer Guide](http://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/elb-security-policy-table.html) for a listing of the supported SSL protocols, SSL options, and SSL ciphers.
  ///
  /// > **NOTE:** The AWS documentation references Server Order Preference, which the AWS Elastic Load Balancing API refers to as `Server-Defined-Cipher-Order`. If you wish to set Server Order Preference, use this value instead.
  late final Output<Map<String, String>?> triggers;

  SslNegotiationPolicy(
    String name, {
    SslNegotiationPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:elb/sslNegotiationPolicy:SslNegotiationPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.attributes =
        registerOutput<List<SslNegotiationPolicyAttribute>?>('attributes');
    this.lbPort = registerOutput<int>('lbPort');
    this.loadBalancer = registerOutput<String>('loadBalancer');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.triggers = registerOutput<Map<String, String>?>('triggers');
  }
}
