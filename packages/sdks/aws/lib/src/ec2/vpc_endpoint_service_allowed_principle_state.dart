// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VpcEndpointServiceAllowedPrinciple resources.
class VpcEndpointServiceAllowedPrincipleState {
  /// ARN of the principal to allow permissions.
  final pulumi.Input<String?>? principalArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ID of the VPC endpoint service to allow permission.
  final pulumi.Input<String?>? vpcEndpointServiceId;

  /// Creates a new [VpcEndpointServiceAllowedPrincipleState].
  /// [principalArn] ARN of the principal to allow permissions.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [vpcEndpointServiceId] ID of the VPC endpoint service to allow permission.
  const VpcEndpointServiceAllowedPrincipleState({
    this.principalArn,
    this.region,
    this.vpcEndpointServiceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalArn': ?principalArn,
      'region': ?region,
      'vpcEndpointServiceId': ?vpcEndpointServiceId,
    };
  }

  factory VpcEndpointServiceAllowedPrincipleState.fromMap(Map<String, dynamic> map) {
    return VpcEndpointServiceAllowedPrincipleState(
      principalArn: (() { final guardedValue = map['principalArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcEndpointServiceId: (() { final guardedValue = map['vpcEndpointServiceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
