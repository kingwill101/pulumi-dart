import 'package:pulumi/pulumi.dart';
import '../vpc_endpoint_association_subnet_mapping/vpc_endpoint_association_subnet_mapping.dart';
import '../vpc_endpoint_association_timeouts/vpc_endpoint_association_timeouts.dart';
import '../vpc_endpoint_association_vpc_endpoint_association_status/vpc_endpoint_association_vpc_endpoint_association_status.dart';
import 'vpc_endpoint_association_args.dart';

/// Manages a firewall endpoint for an AWS Network Firewall firewall.
///
/// Use `aws.networkfirewall.VpcEndpointAssociation` to establish new firewall endpoints in any Availability Zone where the firewall is already being used. The first use of a firewall in an Availability Zone must be defined by `aws.networkfirewall.Firewall` resource and `subnet_mapping` argument.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Network Firewall VPC Endpoint Association using the `vpc_endpoint_association_arn`. For example:
///
/// ```sh
/// $ pulumi import aws:networkfirewall/vpcEndpointAssociation:VpcEndpointAssociation example arn:aws:network-firewall:us-west-1:123456789012:vpc-endpoint-association/example
/// ```
class VpcEndpointAssociation extends CustomResource {
  /// A description of the VPC endpoint association.
  late final Output<String?> description;

  /// The Amazon Resource Name (ARN) that identifies the firewall.
  late final Output<String> firewallArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The ID for a subnet that's used in an association with a firewall. See Subnet Mapping below for details.
  late final Output<VpcEndpointAssociationSubnetMapping> subnetMapping;

  /// Map of resource tags to associate with the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<VpcEndpointAssociationTimeouts?> timeouts;

  /// ARN of the VPC Endpoint Association.
  late final Output<String> vpcEndpointAssociationArn;

  /// The unique identifier of the VPC endpoint association.
  late final Output<String> vpcEndpointAssociationId;

  /// Nested list of information about the current status of the VPC Endpoint Association.
  late final Output<List<VpcEndpointAssociationVpcEndpointAssociationStatus>>
      vpcEndpointAssociationStatuses;

  /// The unique identifier of the VPC for the endpoint association.
  late final Output<String> vpcId;

  VpcEndpointAssociation(
    String name, {
    VpcEndpointAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:networkfirewall/vpcEndpointAssociation:VpcEndpointAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.firewallArn = registerOutput<String>('firewallArn');
    this.region = registerOutput<String>('region');
    this.subnetMapping =
        registerOutput<VpcEndpointAssociationSubnetMapping>('subnetMapping');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<VpcEndpointAssociationTimeouts?>('timeouts');
    this.vpcEndpointAssociationArn =
        registerOutput<String>('vpcEndpointAssociationArn');
    this.vpcEndpointAssociationId =
        registerOutput<String>('vpcEndpointAssociationId');
    this.vpcEndpointAssociationStatuses = registerOutput<
            List<VpcEndpointAssociationVpcEndpointAssociationStatus>>(
        'vpcEndpointAssociationStatuses');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
