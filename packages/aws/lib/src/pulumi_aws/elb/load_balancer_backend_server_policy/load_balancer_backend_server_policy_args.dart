// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for LoadBalancerBackendServerPolicy.
class LoadBalancerBackendServerPolicyArgs {
  /// The instance port to apply the policy to.
  final Input<int> instancePort;

  /// The load balancer to attach the policy to.
  final Input<String> loadBalancerName;

  /// List of Policy Names to apply to the backend server.
  final Input<List<String>>? policyNames;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  LoadBalancerBackendServerPolicyArgs({
    required this.instancePort,
    required this.loadBalancerName,
    this.policyNames,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instancePort'] = instancePort;
    map['loadBalancerName'] = loadBalancerName;
    final policyNamesValue = policyNames;
    if (policyNamesValue != null) {
      map['policyNames'] = policyNamesValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory LoadBalancerBackendServerPolicyArgs.fromMap(
      Map<String, dynamic> map) {
    return LoadBalancerBackendServerPolicyArgs(
      instancePort: Input.asInput<int>(map['instancePort']),
      loadBalancerName: Input.asInput<String>(map['loadBalancerName']),
      policyNames: Input.asOptionalInput<List<String>>(map['policyNames']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
