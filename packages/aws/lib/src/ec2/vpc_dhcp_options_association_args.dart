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
    required String dhcpOptionsId,
    String? region,
    required String vpcId,
  })  : dhcpOptionsId = pulumi.Input.asInput<String>(dhcpOptionsId),
        region = pulumi.Input.asOptionalInput<String>(region),
        vpcId = pulumi.Input.asInput<String>(vpcId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dhcpOptionsId'] = dhcpOptionsId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['vpcId'] = vpcId;
    return map;
  }

  factory VpcDhcpOptionsAssociationArgs.fromMap(Map<String, dynamic> map) {
    return VpcDhcpOptionsAssociationArgs(
      dhcpOptionsId: map['dhcpOptionsId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      vpcId: map['vpcId'] as String,
    );
  }
}
