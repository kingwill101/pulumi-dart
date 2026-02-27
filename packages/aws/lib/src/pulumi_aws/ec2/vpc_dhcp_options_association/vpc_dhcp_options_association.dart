import 'package:pulumi/pulumi.dart';
import 'vpc_dhcp_options_association_args.dart';

/// Provides a VPC DHCP Options Association resource.
///
/// ## Example Usage
///
///
///
/// ## Remarks
///
/// * You can only associate one DHCP Options Set to a given VPC ID.
/// * Removing the DHCP Options Association automatically sets AWS's `default` DHCP Options Set to the VPC.
///
/// ## Import
///
/// Using `pulumi import`, import DHCP associations using the VPC ID associated with the options. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/vpcDhcpOptionsAssociation:VpcDhcpOptionsAssociation imported vpc-0f001273ec18911b1
/// ```
class VpcDhcpOptionsAssociation extends CustomResource {
  /// The ID of the DHCP Options Set to associate to the VPC.
  late final Output<String> dhcpOptionsId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The ID of the VPC to which we would like to associate a DHCP Options Set.
  late final Output<String> vpcId;

  VpcDhcpOptionsAssociation(
    String name, {
    VpcDhcpOptionsAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpcDhcpOptionsAssociation:VpcDhcpOptionsAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.dhcpOptionsId = registerOutput<String>('dhcpOptionsId');
    this.region = registerOutput<String>('region');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
