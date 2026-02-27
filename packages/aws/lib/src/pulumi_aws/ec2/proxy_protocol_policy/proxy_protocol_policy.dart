import 'package:pulumi/pulumi.dart';
import 'proxy_protocol_policy_args.dart';

/// Provides a proxy protocol policy, which allows an ELB to carry a client connection information to a backend.
class ProxyProtocolPolicy extends CustomResource {
  /// List of instance ports to which the policy
  /// should be applied. This can be specified if the protocol is SSL or TCP.
  late final Output<List<String>> instancePorts;

  /// The load balancer to which the policy
  /// should be attached.
  late final Output<String> loadBalancer;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  ProxyProtocolPolicy(
    String name, {
    ProxyProtocolPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/proxyProtocolPolicy:ProxyProtocolPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.instancePorts = registerOutput<List<String>>('instancePorts');
    this.loadBalancer = registerOutput<String>('loadBalancer');
    this.region = registerOutput<String>('region');
  }
}
