// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ProxyProtocolPolicy resources.
class ProxyProtocolPolicyState {
  /// List of instance ports to which the policy
  /// should be applied. This can be specified if the protocol is SSL or TCP.
  final pulumi.Input<List<String>>? instancePorts;
  /// The load balancer to which the policy
  /// should be attached.
  final pulumi.Input<String>? loadBalancer;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [ProxyProtocolPolicyState].
  /// [instancePorts] List of instance ports to which the policy
  /// [loadBalancer] The load balancer to which the policy
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  ProxyProtocolPolicyState({
    pulumi.Output<List<String>>? instancePorts,
    pulumi.Output<String>? loadBalancer,
    pulumi.Output<String>? region,
  }) :
      instancePorts = pulumi.Input.asOptionalInput<List<String>>(instancePorts),
      loadBalancer = pulumi.Input.asOptionalInput<String>(loadBalancer),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instancePorts': ?instancePorts,
      'loadBalancer': ?loadBalancer,
      'region': ?region,
    };
  }

  factory ProxyProtocolPolicyState.fromMap(Map<String, dynamic> map) {
    return ProxyProtocolPolicyState(
      instancePorts: map['instancePorts'] == null ? null : pulumi.Output.create<List<String>>((map['instancePorts'] as List).cast<String>()),
      loadBalancer: map['loadBalancer'] == null ? null : pulumi.Output.create<String>(map['loadBalancer'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

