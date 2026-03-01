// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VpcEndpointServiceAllowedPrinciple resources.
class VpcEndpointServiceAllowedPrincipleState {
  /// The ARN of the principal to allow permissions.
  final pulumi.Input<String>? principalArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ID of the VPC endpoint service to allow permission.
  final pulumi.Input<String>? vpcEndpointServiceId;

  /// Creates a new [VpcEndpointServiceAllowedPrincipleState].
  /// [principalArn] The ARN of the principal to allow permissions.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [vpcEndpointServiceId] The ID of the VPC endpoint service to allow permission.
  VpcEndpointServiceAllowedPrincipleState({
    pulumi.Output<String>? principalArn,
    pulumi.Output<String>? region,
    pulumi.Output<String>? vpcEndpointServiceId,
  }) :
      principalArn = pulumi.Input.asOptionalInput<String>(principalArn),
      region = pulumi.Input.asOptionalInput<String>(region),
      vpcEndpointServiceId = pulumi.Input.asOptionalInput<String>(vpcEndpointServiceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalArn': ?principalArn,
      'region': ?region,
      'vpcEndpointServiceId': ?vpcEndpointServiceId,
    };
  }

  factory VpcEndpointServiceAllowedPrincipleState.fromMap(Map<String, dynamic> map) {
    return VpcEndpointServiceAllowedPrincipleState(
      principalArn: map['principalArn'] == null ? null : pulumi.Output.create<String>(map['principalArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      vpcEndpointServiceId: map['vpcEndpointServiceId'] == null ? null : pulumi.Output.create<String>(map['vpcEndpointServiceId'] as String),
    );
  }
}

