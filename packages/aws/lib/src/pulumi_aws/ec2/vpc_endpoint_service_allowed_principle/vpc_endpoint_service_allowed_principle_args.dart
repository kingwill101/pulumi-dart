// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for VpcEndpointServiceAllowedPrinciple.
class VpcEndpointServiceAllowedPrincipleArgs {
  /// The ARN of the principal to allow permissions.
  final pulumi.Input<String> principalArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The ID of the VPC endpoint service to allow permission.
  final pulumi.Input<String> vpcEndpointServiceId;

  VpcEndpointServiceAllowedPrincipleArgs({
    required this.principalArn,
    this.region,
    required this.vpcEndpointServiceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['principalArn'] = principalArn;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['vpcEndpointServiceId'] = vpcEndpointServiceId;
    return map;
  }

  factory VpcEndpointServiceAllowedPrincipleArgs.fromMap(
      Map<String, dynamic> map) {
    return VpcEndpointServiceAllowedPrincipleArgs(
      principalArn: pulumi.Input.asInput<String>(map['principalArn']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      vpcEndpointServiceId:
          pulumi.Input.asInput<String>(map['vpcEndpointServiceId']),
    );
  }
}
