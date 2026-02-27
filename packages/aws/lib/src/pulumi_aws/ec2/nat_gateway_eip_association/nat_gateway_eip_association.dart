import 'package:pulumi/pulumi.dart' as pulumi;
import '../nat_gateway_eip_association_timeouts/nat_gateway_eip_association_timeouts.dart';
import 'nat_gateway_eip_association_args.dart';

/// Resource for managing an AWS VPC NAT Gateway EIP Association.
///
/// !> **WARNING:** You should not use the `aws.ec2.NatGatewayEipAssociation` resource in conjunction with an `aws.ec2.NatGateway` resource that has `secondary_allocation_ids` configured. Doing so may cause perpetual differences, and result in associations being overwritten.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import VPC NAT Gateway EIP Association using the `nat_gateway_id,allocation_id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/natGatewayEipAssociation:NatGatewayEipAssociation example nat-1234567890abcdef1,eipalloc-1234567890abcdef1
/// ```
class NatGatewayEipAssociation extends pulumi.CustomResource {
  /// The ID of the Elastic IP Allocation to associate with the NAT Gateway.
  late final pulumi.Output<String> allocationId;
  late final pulumi.Output<String> associationId;

  /// The ID of the NAT Gateway to associate the Elastic IP Allocation to.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> natGatewayId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  late final pulumi.Output<NatGatewayEipAssociationTimeouts?> timeouts;

  NatGatewayEipAssociation(
    String name, {
    NatGatewayEipAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/natGatewayEipAssociation:NatGatewayEipAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allocationId = registerOutput<String>('allocationId');
    this.associationId = registerOutput<String>('associationId');
    this.natGatewayId = registerOutput<String>('natGatewayId');
    this.region = registerOutput<String>('region');
    this.timeouts =
        registerOutput<NatGatewayEipAssociationTimeouts?>('timeouts');
  }
}
