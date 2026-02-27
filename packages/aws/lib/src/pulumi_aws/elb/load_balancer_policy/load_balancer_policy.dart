import 'package:pulumi/pulumi.dart' as pulumi;
import '../load_balancer_policy_policy_attribute/load_balancer_policy_policy_attribute.dart';
import 'load_balancer_policy_args.dart';

/// Provides a load balancer policy, which can be attached to an ELB listener or backend server.
class LoadBalancerPolicy extends pulumi.CustomResource {
  /// The load balancer on which the policy is defined.
  late final pulumi.Output<String> loadBalancerName;

  /// Policy attribute to apply to the policy.
  late final pulumi.Output<List<LoadBalancerPolicyPolicyAttribute>>
      policyAttributes;

  /// The name of the load balancer policy.
  late final pulumi.Output<String> policyName;

  /// The policy type.
  late final pulumi.Output<String> policyTypeName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  LoadBalancerPolicy(
    String name, {
    LoadBalancerPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:elb/loadBalancerPolicy:LoadBalancerPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.loadBalancerName = registerOutput<String>('loadBalancerName');
    this.policyAttributes =
        registerOutput<List<LoadBalancerPolicyPolicyAttribute>>(
            'policyAttributes');
    this.policyName = registerOutput<String>('policyName');
    this.policyTypeName = registerOutput<String>('policyTypeName');
    this.region = registerOutput<String>('region');
  }
}
