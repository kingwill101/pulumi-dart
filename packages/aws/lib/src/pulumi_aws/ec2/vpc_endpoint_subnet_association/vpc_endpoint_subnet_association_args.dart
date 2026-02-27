// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for VpcEndpointSubnetAssociation.
class VpcEndpointSubnetAssociationArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The ID of the subnet to be associated with the VPC endpoint.
  final pulumi.Input<String> subnetId;

  /// The ID of the VPC endpoint with which the subnet will be associated.
  final pulumi.Input<String> vpcEndpointId;

  VpcEndpointSubnetAssociationArgs({
    this.region,
    required this.subnetId,
    required this.vpcEndpointId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['subnetId'] = subnetId;
    map['vpcEndpointId'] = vpcEndpointId;
    return map;
  }

  factory VpcEndpointSubnetAssociationArgs.fromMap(Map<String, dynamic> map) {
    return VpcEndpointSubnetAssociationArgs(
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      subnetId: pulumi.Input.asInput<String>(map['subnetId']),
      vpcEndpointId: pulumi.Input.asInput<String>(map['vpcEndpointId']),
    );
  }
}
