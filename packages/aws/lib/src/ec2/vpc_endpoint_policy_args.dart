// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_vpc_endpoint_policy_vpc_endpoint_policy_args_doc}
/// The set of arguments for VpcEndpointPolicy.
/// {@endtemplate}
/// {@macro pulumi_ec2_vpc_endpoint_policy_vpc_endpoint_policy_args_doc}
class VpcEndpointPolicyArgs {
  /// A policy to attach to the endpoint that controls access to the service. Defaults to full access. All `Gateway` and some `Interface` endpoints support policies - see the [relevant AWS documentation](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-endpoints-access.html) for more details.
  final pulumi.Input<String>? policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The VPC Endpoint ID.
  final pulumi.Input<String> vpcEndpointId;

  /// Creates a new [VpcEndpointPolicyArgs].
  /// [policy] A policy to attach to the endpoint that controls access to the service. Defaults to full access. All `Gateway` and some `Interface` endpoints support policies - see the [relevant AWS documentation](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-endpoints-access.html) for more details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [vpcEndpointId] The VPC Endpoint ID.
  VpcEndpointPolicyArgs({
    String? policy,
    String? region,
    required String vpcEndpointId,
  })  : policy = pulumi.Input.asOptionalInput<String>(policy),
        region = pulumi.Input.asOptionalInput<String>(region),
        vpcEndpointId = pulumi.Input.asInput<String>(vpcEndpointId);

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
      policy: map['policy'] == null ? null : map['policy'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      vpcEndpointId: map['vpcEndpointId'] as String,
    );
  }
}
