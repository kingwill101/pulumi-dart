// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_vpc_endpoint_service_allowed_principle_vpc_endpoint_service_allowed_principle_args_doc}
/// The set of arguments for VpcEndpointServiceAllowedPrinciple.
/// {@endtemplate}
/// {@macro pulumi_ec2_vpc_endpoint_service_allowed_principle_vpc_endpoint_service_allowed_principle_args_doc}
class VpcEndpointServiceAllowedPrincipleArgs {
  /// The ARN of the principal to allow permissions.
  final pulumi.Input<String> principalArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ID of the VPC endpoint service to allow permission.
  final pulumi.Input<String> vpcEndpointServiceId;

  /// Creates a new [VpcEndpointServiceAllowedPrincipleArgs].
  /// [principalArn] The ARN of the principal to allow permissions.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [vpcEndpointServiceId] The ID of the VPC endpoint service to allow permission.
  VpcEndpointServiceAllowedPrincipleArgs({
    required String principalArn,
    String? region,
    required String vpcEndpointServiceId,
  }) :
      principalArn = pulumi.Input.asInput<String>(principalArn),
      region = pulumi.Input.asOptionalInput<String>(region),
      vpcEndpointServiceId = pulumi.Input.asInput<String>(vpcEndpointServiceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalArn': principalArn,
      'region': ?region,
      'vpcEndpointServiceId': vpcEndpointServiceId,
    };
  }

  factory VpcEndpointServiceAllowedPrincipleArgs.fromMap(Map<String, dynamic> map) {
    return VpcEndpointServiceAllowedPrincipleArgs(
      principalArn: map['principalArn'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      vpcEndpointServiceId: map['vpcEndpointServiceId'] as String,
    );
  }
}

