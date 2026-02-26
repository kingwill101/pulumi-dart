// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for VpcEndpointConnectionAccepter.
class VpcEndpointConnectionAccepterArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// AWS VPC Endpoint ID.
  final Input<String> vpcEndpointId;

  /// AWS VPC Endpoint Service ID.
  final Input<String> vpcEndpointServiceId;

  VpcEndpointConnectionAccepterArgs({
    this.region,
    required this.vpcEndpointId,
    required this.vpcEndpointServiceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['vpcEndpointId'] = vpcEndpointId;
    map['vpcEndpointServiceId'] = vpcEndpointServiceId;
    return map;
  }

  factory VpcEndpointConnectionAccepterArgs.fromMap(Map<String, dynamic> map) {
    return VpcEndpointConnectionAccepterArgs(
      region: Input.asOptionalInput<String>(map['region']),
      vpcEndpointId: Input.asInput<String>(map['vpcEndpointId']),
      vpcEndpointServiceId: Input.asInput<String>(map['vpcEndpointServiceId']),
    );
  }
}
