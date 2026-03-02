// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VpcDhcpOptionsAssociation resources.
class VpcDhcpOptionsAssociationState {
  /// The ID of the DHCP Options Set to associate to the VPC.
  final pulumi.Input<String>? dhcpOptionsId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ID of the VPC to which we would like to associate a DHCP Options Set.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [VpcDhcpOptionsAssociationState].
  /// [dhcpOptionsId] The ID of the DHCP Options Set to associate to the VPC.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [vpcId] The ID of the VPC to which we would like to associate a DHCP Options Set.
  VpcDhcpOptionsAssociationState({
    this.dhcpOptionsId,
    this.region,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dhcpOptionsId': ?dhcpOptionsId,
      'region': ?region,
      'vpcId': ?vpcId,
    };
  }

  factory VpcDhcpOptionsAssociationState.fromMap(Map<String, dynamic> map) {
    return VpcDhcpOptionsAssociationState(
      dhcpOptionsId: map['dhcpOptionsId'] == null ? null : ((map['dhcpOptionsId'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      vpcId: map['vpcId'] == null ? null : ((map['vpcId'] as String).input()).input(),
    );
  }
}

