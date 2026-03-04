// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_vpc_dhcp_options_association_vpc_dhcp_options_association_args_doc}
/// The set of arguments for VpcDhcpOptionsAssociation.
/// {@endtemplate}
/// {@macro pulumi_ec2_vpc_dhcp_options_association_vpc_dhcp_options_association_args_doc}
class VpcDhcpOptionsAssociationArgs {
  /// The ID of the DHCP Options Set to associate to the VPC.
  final pulumi.Input<String> dhcpOptionsId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The ID of the VPC to which we would like to associate a DHCP Options Set.
  final pulumi.Input<String> vpcId;

  /// Creates a new [VpcDhcpOptionsAssociationArgs].
  /// [dhcpOptionsId] The ID of the DHCP Options Set to associate to the VPC.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [vpcId] The ID of the VPC to which we would like to associate a DHCP Options Set.
  VpcDhcpOptionsAssociationArgs({
    required this.dhcpOptionsId,
    this.region,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dhcpOptionsId': dhcpOptionsId,
      'region': ?region,
      'vpcId': vpcId,
    };
  }

  factory VpcDhcpOptionsAssociationArgs.fromMap(Map<String, dynamic> map) {
    return VpcDhcpOptionsAssociationArgs(
      dhcpOptionsId: pulumi.Input.fromValue(map['dhcpOptionsId'] as String),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
    );
  }
}
