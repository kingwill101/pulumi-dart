// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_vpc_endpoint_subnet_association_vpc_endpoint_subnet_association_args_doc}
/// The set of arguments for VpcEndpointSubnetAssociation.
/// {@endtemplate}
/// {@macro pulumi_ec2_vpc_endpoint_subnet_association_vpc_endpoint_subnet_association_args_doc}
class VpcEndpointSubnetAssociationArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ID of the subnet to be associated with the VPC endpoint.
  final pulumi.Input<String> subnetId;
  /// ID of the VPC endpoint with which the subnet will be associated.
  final pulumi.Input<String> vpcEndpointId;

  /// Creates a new [VpcEndpointSubnetAssociationArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [subnetId] ID of the subnet to be associated with the VPC endpoint.
  /// [vpcEndpointId] ID of the VPC endpoint with which the subnet will be associated.
  const VpcEndpointSubnetAssociationArgs({
    this.region,
    required this.subnetId,
    required this.vpcEndpointId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'subnetId': subnetId,
      'vpcEndpointId': vpcEndpointId,
    };
  }

  factory VpcEndpointSubnetAssociationArgs.fromMap(Map<String, dynamic> map) {
    return VpcEndpointSubnetAssociationArgs(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
      vpcEndpointId: pulumi.Input.fromValue(map['vpcEndpointId'] as String),
    );
  }
}
