import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_backend_server_policy_args.dart';

/// Attaches a load balancer policy to an ELB backend server.
class LoadBalancerBackendServerPolicy extends pulumi.CustomResource {
  /// The instance port to apply the policy to.
  late final pulumi.Output<int> instancePort;

  /// The load balancer to attach the policy to.
  late final pulumi.Output<String> loadBalancerName;

  /// List of Policy Names to apply to the backend server.
  late final pulumi.Output<List<String>?> policyNames;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  LoadBalancerBackendServerPolicy(
    String name, {
    LoadBalancerBackendServerPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:elb/loadBalancerBackendServerPolicy:LoadBalancerBackendServerPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.instancePort = registerOutput<int>('instancePort');
    this.loadBalancerName = registerOutput<String>('loadBalancerName');
    this.policyNames = registerOutput<List<String>?>('policyNames');
    this.region = registerOutput<String>('region');
  }
}
