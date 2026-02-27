import 'package:pulumi/pulumi.dart';
import 'load_balancer_backend_server_policy_args.dart';

/// Attaches a load balancer policy to an ELB backend server.
class LoadBalancerBackendServerPolicy extends CustomResource {
  /// The instance port to apply the policy to.
  late final Output<int> instancePort;

  /// The load balancer to attach the policy to.
  late final Output<String> loadBalancerName;

  /// List of Policy Names to apply to the backend server.
  late final Output<List<String>?> policyNames;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  LoadBalancerBackendServerPolicy(
    String name, {
    LoadBalancerBackendServerPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:elb/loadBalancerBackendServerPolicy:LoadBalancerBackendServerPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.instancePort = registerOutput<int>('instancePort');
    this.loadBalancerName = registerOutput<String>('loadBalancerName');
    this.policyNames = registerOutput<List<String>?>('policyNames');
    this.region = registerOutput<String>('region');
  }
}
