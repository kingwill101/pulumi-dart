// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VpcEndpointSubnetAssociation resources.
class VpcEndpointSubnetAssociationState {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ID of the subnet to be associated with the VPC endpoint.
  final pulumi.Input<String?>? subnetId;
  /// ID of the VPC endpoint with which the subnet will be associated.
  final pulumi.Input<String?>? vpcEndpointId;

  /// Creates a new [VpcEndpointSubnetAssociationState].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [subnetId] ID of the subnet to be associated with the VPC endpoint.
  /// [vpcEndpointId] ID of the VPC endpoint with which the subnet will be associated.
  const VpcEndpointSubnetAssociationState({
    this.region,
    this.subnetId,
    this.vpcEndpointId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'subnetId': ?subnetId,
      'vpcEndpointId': ?vpcEndpointId,
    };
  }

  factory VpcEndpointSubnetAssociationState.fromMap(Map<String, dynamic> map) {
    return VpcEndpointSubnetAssociationState(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcEndpointId: (() { final guardedValue = map['vpcEndpointId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
