import 'package:pulumi/pulumi.dart' as pulumi;
import 'listener_policy_args.dart';

/// Attaches a load balancer policy to an ELB Listener.
///
/// ## Example Usage
///
/// ### Custom Policy
///
///
///
/// This example shows how to customize the TLS settings of an HTTPS listener.
///
/// ### AWS Predefined Security Policy
///
///
///
/// This example shows how to add a [Predefined Security Policy for ELBs](https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-security-policy-table.html)
class ListenerPolicy extends pulumi.CustomResource {
  /// The load balancer to attach the policy to.
  late final pulumi.Output<String> loadBalancerName;

  /// The load balancer listener port to apply the policy to.
  late final pulumi.Output<int> loadBalancerPort;

  /// List of Policy Names to apply to the backend server.
  late final pulumi.Output<List<String>?> policyNames;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Map of arbitrary keys and values that, when changed, will trigger an update.
  late final pulumi.Output<Map<String, String>?> triggers;

  ListenerPolicy(
    String name, {
    ListenerPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:elb/listenerPolicy:ListenerPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.loadBalancerName = registerOutput<String>('loadBalancerName');
    this.loadBalancerPort = registerOutput<int>('loadBalancerPort');
    this.policyNames = registerOutput<List<String>?>('policyNames');
    this.region = registerOutput<String>('region');
    this.triggers = registerOutput<Map<String, String>?>('triggers');
  }
}
