// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for VpcEndpointPolicy.
class VpcEndpointPolicyArgs {
  /// A policy to attach to the endpoint that controls access to the service. Defaults to full access. All `Gateway` and some `Interface` endpoints support policies - see the [relevant AWS documentation](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-endpoints-access.html) for more details.
  final pulumi.Input<String>? policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The VPC Endpoint ID.
  final pulumi.Input<String> vpcEndpointId;

  VpcEndpointPolicyArgs({
    this.policy,
    this.region,
    required this.vpcEndpointId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final policyValue = policy;
    if (policyValue != null) {
      map['policy'] = policyValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['vpcEndpointId'] = vpcEndpointId;
    return map;
  }

  factory VpcEndpointPolicyArgs.fromMap(Map<String, dynamic> map) {
    return VpcEndpointPolicyArgs(
      policy: pulumi.Input.asOptionalInput<String>(map['policy']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      vpcEndpointId: pulumi.Input.asInput<String>(map['vpcEndpointId']),
    );
  }
}
