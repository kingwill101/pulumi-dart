// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_proxy_protocol_policy_proxy_protocol_policy_args_doc}
/// The set of arguments for ProxyProtocolPolicy.
/// {@endtemplate}
/// {@macro pulumi_ec2_proxy_protocol_policy_proxy_protocol_policy_args_doc}
class ProxyProtocolPolicyArgs {
  /// List of instance ports to which the policy
  /// should be applied. This can be specified if the protocol is SSL or TCP.
  final pulumi.Input<List<String>> instancePorts;
  /// The load balancer to which the policy
  /// should be attached.
  final pulumi.Input<String> loadBalancer;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [ProxyProtocolPolicyArgs].
  /// [instancePorts] List of instance ports to which the policy
  /// [loadBalancer] The load balancer to which the policy
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  ProxyProtocolPolicyArgs({
    required List<String> instancePorts,
    required String loadBalancer,
    String? region,
  }) :
      instancePorts = pulumi.Input.asInput<List<String>>(instancePorts),
      loadBalancer = pulumi.Input.asInput<String>(loadBalancer),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instancePorts': instancePorts,
      'loadBalancer': loadBalancer,
      'region': ?region,
    };
  }

  factory ProxyProtocolPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ProxyProtocolPolicyArgs(
      instancePorts: (map['instancePorts'] as List).cast<String>(),
      loadBalancer: map['loadBalancer'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

