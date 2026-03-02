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
    required this.instancePort,
    required this.loadBalancerName,
    this.policyNames,
    this.region,
  });

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
      instancePort: (map['instancePort'] as int).input(),
      loadBalancerName: (map['loadBalancerName'] as String).input(),
      policyNames: map['policyNames'] == null ? null : ((map['policyNames'] as List).cast<String>()).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

