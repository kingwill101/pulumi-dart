// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ProxyProtocolPolicy.
class ProxyProtocolPolicyArgs {
  /// List of instance ports to which the policy
  /// should be applied. This can be specified if the protocol is SSL or TCP.
  final pulumi.Input<List<String>> instancePorts;

  /// The load balancer to which the policy
  /// should be attached.
  final pulumi.Input<String> loadBalancer;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  ProxyProtocolPolicyArgs({
    required this.instancePorts,
    required this.loadBalancer,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instancePorts'] = instancePorts;
    map['loadBalancer'] = loadBalancer;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory ProxyProtocolPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ProxyProtocolPolicyArgs(
      instancePorts: pulumi.Input.asInput<List<String>>(map['instancePorts']),
      loadBalancer: pulumi.Input.asInput<String>(map['loadBalancer']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
