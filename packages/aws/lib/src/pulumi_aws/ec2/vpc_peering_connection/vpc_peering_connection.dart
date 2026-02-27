import 'package:pulumi/pulumi.dart' as pulumi;
import '../vpc_peering_connection_accepter/vpc_peering_connection_accepter.dart';
import '../vpc_peering_connection_requester/vpc_peering_connection_requester.dart';
import 'vpc_peering_connection_args.dart';

/// Provides a resource to manage a VPC peering connection.
///
/// > **Note:** Modifying the VPC Peering Connection options requires peering to be active. An automatic activation
/// can be done using the `auto_accept` attribute. Alternatively, the VPC Peering
/// Connection has to be made active manually using other means. See notes below for
/// more information.
///
/// > **NOTE on VPC Peering Connections and VPC Peering Connection Options:** This provider provides
/// both a standalone VPC Peering Connection Options and a VPC Peering Connection
/// resource with `accepter` and `requester` attributes. Do not manage options for the same VPC peering
/// connection in both a VPC Peering Connection resource and a VPC Peering Connection Options resource.
/// Doing so will cause a conflict of options and will overwrite the options.
/// Using a VPC Peering Connection Options resource decouples management of the connection options from
/// management of the VPC Peering Connection and allows options to be set correctly in cross-account scenarios.
///
/// > **Note:** For cross-account (requester's AWS account differs from the accepter's AWS account) or inter-region
/// VPC Peering Connections use the `aws.ec2.VpcPeeringConnection` resource to manage the requester's side of the
/// connection and use the `aws.ec2.VpcPeeringConnectionAccepter` resource to manage the accepter's side of the connection.
///
/// > **Note:** Creating multiple `aws.ec2.VpcPeeringConnection` resources with the same `peer_vpc_id` and `vpc_id` will not produce an error. Instead, AWS will return the connection `id` that already exists, resulting in multiple `aws.ec2.VpcPeeringConnection` resources with the same `id`.
///
/// ## Example Usage
///
///
///
/// Basic usage with connection options:
///
///
///
/// Basic usage with tags:
///
///
///
/// Basic usage with region:
///
///
///
/// ## Notes
///
/// If both VPCs are not in the same AWS account and region do not enable the `auto_accept` attribute.
/// The accepter can manage its side of the connection using the `aws.ec2.VpcPeeringConnectionAccepter` resource
/// or accept the connection manually using the AWS Management Console, AWS CLI, through SDKs, etc.
///
/// ## Import
///
/// Using `pulumi import`, import VPC Peering resources using the VPC peering `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/vpcPeeringConnection:VpcPeeringConnection test_connection pcx-111aaa111
/// ```
class VpcPeeringConnection extends pulumi.CustomResource {
  /// The status of the VPC Peering Connection request.
  late final pulumi.Output<String> acceptStatus;

  /// An optional configuration block that allows for [VPC Peering Connection](https://docs.aws.amazon.com/vpc/latest/peering/what-is-vpc-peering.html) options to be set for the VPC that accepts
  /// the peering connection (a maximum of one).
  late final pulumi.Output<VpcPeeringConnectionAccepter> accepter;

  /// Accept the peering (both VPCs need to be in the same AWS account and region).
  late final pulumi.Output<bool?> autoAccept;

  /// The AWS account ID of the target peer VPC.
  /// Defaults to the account ID the [AWS provider][1] is currently connected to, so must be managed if connecting cross-account.
  late final pulumi.Output<String> peerOwnerId;

  /// The region of the accepter VPC of the VPC Peering Connection. `auto_accept` must be `false`,
  /// and use the `aws.ec2.VpcPeeringConnectionAccepter` to manage the accepter side.
  late final pulumi.Output<String> peerRegion;

  /// The ID of the target VPC with which you are creating the VPC Peering Connection.
  late final pulumi.Output<String> peerVpcId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A optional configuration block that allows for [VPC Peering Connection](https://docs.aws.amazon.com/vpc/latest/peering/what-is-vpc-peering.html) options to be set for the VPC that requests
  /// the peering connection (a maximum of one).
  late final pulumi.Output<VpcPeeringConnectionRequester> requester;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The ID of the requester VPC.
  late final pulumi.Output<String> vpcId;

  VpcPeeringConnection(
    String name, {
    VpcPeeringConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpcPeeringConnection:VpcPeeringConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.acceptStatus = registerOutput<String>('acceptStatus');
    this.accepter = registerOutput<VpcPeeringConnectionAccepter>('accepter');
    this.autoAccept = registerOutput<bool?>('autoAccept');
    this.peerOwnerId = registerOutput<String>('peerOwnerId');
    this.peerRegion = registerOutput<String>('peerRegion');
    this.peerVpcId = registerOutput<String>('peerVpcId');
    this.region = registerOutput<String>('region');
    this.requester = registerOutput<VpcPeeringConnectionRequester>('requester');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
