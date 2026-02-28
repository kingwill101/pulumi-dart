// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_peering_connection_accepter.dart';
import 'vpc_peering_connection_requester.dart';

/// {@template pulumi_ec2_vpc_peering_connection_vpc_peering_connection_args_doc}
/// The set of arguments for VpcPeeringConnection.
/// {@endtemplate}
/// {@macro pulumi_ec2_vpc_peering_connection_vpc_peering_connection_args_doc}
class VpcPeeringConnectionArgs {
  /// An optional configuration block that allows for [VPC Peering Connection](https://docs.aws.amazon.com/vpc/latest/peering/what-is-vpc-peering.html) options to be set for the VPC that accepts
  /// the peering connection (a maximum of one).
  final pulumi.Input<VpcPeeringConnectionAccepter>? accepter;

  /// Accept the peering (both VPCs need to be in the same AWS account and region).
  final pulumi.Input<bool>? autoAccept;

  /// The AWS account ID of the target peer VPC.
  /// Defaults to the account ID the [AWS provider][1] is currently connected to, so must be managed if connecting cross-account.
  final pulumi.Input<String>? peerOwnerId;

  /// The region of the accepter VPC of the VPC Peering Connection. `auto_accept` must be `false`,
  /// and use the `aws.ec2.VpcPeeringConnectionAccepter` to manage the accepter side.
  final pulumi.Input<String>? peerRegion;

  /// The ID of the target VPC with which you are creating the VPC Peering Connection.
  final pulumi.Input<String> peerVpcId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A optional configuration block that allows for [VPC Peering Connection](https://docs.aws.amazon.com/vpc/latest/peering/what-is-vpc-peering.html) options to be set for the VPC that requests
  /// the peering connection (a maximum of one).
  final pulumi.Input<VpcPeeringConnectionRequester>? requester;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// The ID of the requester VPC.
  final pulumi.Input<String> vpcId;

  /// Creates a new [VpcPeeringConnectionArgs].
  /// [accepter] An optional configuration block that allows for [VPC Peering Connection](https://docs.aws.amazon.com/vpc/latest/peering/what-is-vpc-peering.html) options to be set for the VPC that accepts
  /// [autoAccept] Accept the peering (both VPCs need to be in the same AWS account and region).
  /// [peerOwnerId] The AWS account ID of the target peer VPC.
  /// [peerRegion] The region of the accepter VPC of the VPC Peering Connection. `auto_accept` must be `false`,
  /// [peerVpcId] The ID of the target VPC with which you are creating the VPC Peering Connection.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [requester] A optional configuration block that allows for [VPC Peering Connection](https://docs.aws.amazon.com/vpc/latest/peering/what-is-vpc-peering.html) options to be set for the VPC that requests
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [vpcId] The ID of the requester VPC.
  VpcPeeringConnectionArgs({
    VpcPeeringConnectionAccepter? accepter,
    bool? autoAccept,
    String? peerOwnerId,
    String? peerRegion,
    required String peerVpcId,
    String? region,
    VpcPeeringConnectionRequester? requester,
    Map<String, String>? tags,
    required String vpcId,
  })  : accepter = pulumi.Input.asOptionalInput<VpcPeeringConnectionAccepter>(
            accepter),
        autoAccept = pulumi.Input.asOptionalInput<bool>(autoAccept),
        peerOwnerId = pulumi.Input.asOptionalInput<String>(peerOwnerId),
        peerRegion = pulumi.Input.asOptionalInput<String>(peerRegion),
        peerVpcId = pulumi.Input.asInput<String>(peerVpcId),
        region = pulumi.Input.asOptionalInput<String>(region),
        requester = pulumi.Input.asOptionalInput<VpcPeeringConnectionRequester>(
            requester),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        vpcId = pulumi.Input.asInput<String>(vpcId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accepterValue = accepter;
    if (accepterValue != null) {
      map['accepter'] = pulumi.Input.mapOptionalInputValue<
          VpcPeeringConnectionAccepter,
          Map<String, dynamic>>(accepterValue, (value) => value.toMap());
    }
    final autoAcceptValue = autoAccept;
    if (autoAcceptValue != null) {
      map['autoAccept'] = autoAcceptValue;
    }
    final peerOwnerIdValue = peerOwnerId;
    if (peerOwnerIdValue != null) {
      map['peerOwnerId'] = peerOwnerIdValue;
    }
    final peerRegionValue = peerRegion;
    if (peerRegionValue != null) {
      map['peerRegion'] = peerRegionValue;
    }
    map['peerVpcId'] = peerVpcId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final requesterValue = requester;
    if (requesterValue != null) {
      map['requester'] = pulumi.Input.mapOptionalInputValue<
          VpcPeeringConnectionRequester,
          Map<String, dynamic>>(requesterValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['vpcId'] = vpcId;
    return map;
  }

  factory VpcPeeringConnectionArgs.fromMap(Map<String, dynamic> map) {
    return VpcPeeringConnectionArgs(
      accepter: map['accepter'] == null
          ? null
          : VpcPeeringConnectionAccepter.fromMap(
              (map['accepter'] as Map).cast<String, dynamic>()),
      autoAccept: map['autoAccept'] == null ? null : map['autoAccept'] as bool,
      peerOwnerId:
          map['peerOwnerId'] == null ? null : map['peerOwnerId'] as String,
      peerRegion:
          map['peerRegion'] == null ? null : map['peerRegion'] as String,
      peerVpcId: map['peerVpcId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      requester: map['requester'] == null
          ? null
          : VpcPeeringConnectionRequester.fromMap(
              (map['requester'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      vpcId: map['vpcId'] as String,
    );
  }
}
