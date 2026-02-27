import 'package:pulumi/pulumi.dart' as pulumi;
import '../vpc_peering_connection_accepter_accepter/vpc_peering_connection_accepter_accepter.dart';
import '../vpc_peering_connection_accepter_requester/vpc_peering_connection_accepter_requester.dart';
import 'vpc_peering_connection_accepter_args.dart';

/// Provides a resource to manage the accepter's side of a VPC Peering Connection.
///
/// When a cross-account (requester's AWS account differs from the accepter's AWS account) or an inter-region
/// VPC Peering Connection is created, a VPC Peering Connection resource is automatically created in the
/// accepter's account.
/// The requester can use the `aws.ec2.VpcPeeringConnection` resource to manage its side of the connection
/// and the accepter can use the `aws.ec2.VpcPeeringConnectionAccepter` resource to "adopt" its side of the
/// connection into management.
///
/// ## Example Usage
///
/// ### Cross-Account Peering Or Cross-Region Peering AWS Provider v6 (and below)
///
///
///
/// ### Cross-Region Peering (Same Account) AWS Provider v7 (and above)
///
///
///
/// ## Import
///
/// Using `pulumi import`, import VPC Peering Connection Accepters using the Peering Connection ID. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/vpcPeeringConnectionAccepter:VpcPeeringConnectionAccepter example pcx-12345678
/// ```
///
/// Certain resource arguments, like `auto_accept`, do not have an EC2 API method for reading the information after peering connection creation. If the argument is set in the Pulumi program on an imported resource, Pulumi will always show a difference. To workaround this behavior, either omit the argument from the Pulumi program or use `ignore_changes` to hide the difference. For example:
class VpcPeeringConnectionAccepterEc2 extends pulumi.CustomResource {
  /// The status of the VPC Peering Connection request.
  late final pulumi.Output<String> acceptStatus;

  /// A configuration block that describes [VPC Peering Connection]
  /// (https://docs.aws.amazon.com/vpc/latest/peering/what-is-vpc-peering.html) options set for the accepter VPC.
  late final pulumi.Output<VpcPeeringConnectionAccepterAccepter> accepter;

  /// Whether or not to accept the peering request. Defaults to `false`.
  late final pulumi.Output<bool?> autoAccept;

  /// The AWS account ID of the owner of the requester VPC.
  late final pulumi.Output<String> peerOwnerId;

  /// The region of the accepter VPC.
  late final pulumi.Output<String> peerRegion;

  /// The ID of the requester VPC.
  late final pulumi.Output<String> peerVpcId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A configuration block that describes [VPC Peering Connection]
  /// (https://docs.aws.amazon.com/vpc/latest/peering/what-is-vpc-peering.html) options set for the requester VPC.
  late final pulumi.Output<VpcPeeringConnectionAccepterRequester> requester;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The ID of the accepter VPC.
  late final pulumi.Output<String> vpcId;

  /// The VPC Peering Connection ID to manage.
  late final pulumi.Output<String> vpcPeeringConnectionId;

  VpcPeeringConnectionAccepterEc2(
    String name, {
    VpcPeeringConnectionAccepterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpcPeeringConnectionAccepter:VpcPeeringConnectionAccepter',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.acceptStatus = registerOutput<String>('acceptStatus');
    this.accepter =
        registerOutput<VpcPeeringConnectionAccepterAccepter>('accepter');
    this.autoAccept = registerOutput<bool?>('autoAccept');
    this.peerOwnerId = registerOutput<String>('peerOwnerId');
    this.peerRegion = registerOutput<String>('peerRegion');
    this.peerVpcId = registerOutput<String>('peerVpcId');
    this.region = registerOutput<String>('region');
    this.requester =
        registerOutput<VpcPeeringConnectionAccepterRequester>('requester');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcId = registerOutput<String>('vpcId');
    this.vpcPeeringConnectionId =
        registerOutput<String>('vpcPeeringConnectionId');
  }
}
