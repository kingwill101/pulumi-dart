// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_elb_load_balancer_backend_server_policy_load_balancer_backend_server_policy_args_doc}
/// The set of arguments for LoadBalancerBackendServerPolicy.
/// {@endtemplate}
/// {@macro pulumi_elb_load_balancer_backend_server_policy_load_balancer_backend_server_policy_args_doc}
class LoadBalancerBackendServerPolicyArgs {
  /// The instance port to apply the policy to.
  final pulumi.Input<int> instancePort;
  /// The load balancer to attach the policy to.
  final pulumi.Input<String> loadBalancerName;
  /// List of Policy Names to apply to the backend server.
  final pulumi.Input<List<String>>? policyNames;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [LoadBalancerBackendServerPolicyArgs].
  /// [instancePort] The instance port to apply the policy to.
  /// [loadBalancerName] The load balancer to attach the policy to.
  /// [policyNames] List of Policy Names to apply to the backend server.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  LoadBalancerBackendServerPolicyArgs({
    required pulumi.Output<int> instancePort,
    required pulumi.Output<String> loadBalancerName,
    pulumi.Output<List<String>>? policyNames,
    pulumi.Output<String>? region,
  }) :
      instancePort = pulumi.Input.asInput<int>(instancePort),
      loadBalancerName = pulumi.Input.asInput<String>(loadBalancerName),
      policyNames = pulumi.Input.asOptionalInput<List<String>>(policyNames),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instancePort': instancePort,
      'loadBalancerName': loadBalancerName,
      'policyNames': ?policyNames,
      'region': ?region,
    };
  }

  factory LoadBalancerBackendServerPolicyArgs.fromMap(Map<String, dynamic> map) {
    return LoadBalancerBackendServerPolicyArgs(
      instancePort: pulumi.Output.create<int>(map['instancePort'] as int),
      loadBalancerName: pulumi.Output.create<String>(map['loadBalancerName'] as String),
      policyNames: map['policyNames'] == null ? null : pulumi.Output.create<List<String>>((map['policyNames'] as List).cast<String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

