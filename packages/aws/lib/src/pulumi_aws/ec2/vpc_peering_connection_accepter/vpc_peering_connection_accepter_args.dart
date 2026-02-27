// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../vpc_peering_connection_accepter_accepter/vpc_peering_connection_accepter_accepter.dart';
import '../vpc_peering_connection_accepter_requester/vpc_peering_connection_accepter_requester.dart';

/// The set of arguments for VpcPeeringConnectionAccepter.
class VpcPeeringConnectionAccepterArgs {
  /// A configuration block that describes [VPC Peering Connection]
  /// (https://docs.aws.amazon.com/vpc/latest/peering/what-is-vpc-peering.html) options set for the accepter VPC.
  final Input<VpcPeeringConnectionAccepterAccepter>? accepter;

  /// Whether or not to accept the peering request. Defaults to `false`.
  final Input<bool>? autoAccept;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A configuration block that describes [VPC Peering Connection]
  /// (https://docs.aws.amazon.com/vpc/latest/peering/what-is-vpc-peering.html) options set for the requester VPC.
  final Input<VpcPeeringConnectionAccepterRequester>? requester;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// The VPC Peering Connection ID to manage.
  final Input<String> vpcPeeringConnectionId;

  VpcPeeringConnectionAccepterArgs({
    this.accepter,
    this.autoAccept,
    this.region,
    this.requester,
    this.tags,
    required this.vpcPeeringConnectionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accepterValue = accepter;
    if (accepterValue != null) {
      map['accepter'] = Input.mapOptionalInputValue<
          VpcPeeringConnectionAccepterAccepter,
          Map<String, dynamic>>(accepterValue, (value) => value.toMap());
    }
    final autoAcceptValue = autoAccept;
    if (autoAcceptValue != null) {
      map['autoAccept'] = autoAcceptValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final requesterValue = requester;
    if (requesterValue != null) {
      map['requester'] = Input.mapOptionalInputValue<
          VpcPeeringConnectionAccepterRequester,
          Map<String, dynamic>>(requesterValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['vpcPeeringConnectionId'] = vpcPeeringConnectionId;
    return map;
  }

  factory VpcPeeringConnectionAccepterArgs.fromMap(Map<String, dynamic> map) {
    return VpcPeeringConnectionAccepterArgs(
      accepter: Input.asOptionalInput<VpcPeeringConnectionAccepterAccepter>(
          map['accepter']),
      autoAccept: Input.asOptionalInput<bool>(map['autoAccept']),
      region: Input.asOptionalInput<String>(map['region']),
      requester: Input.asOptionalInput<VpcPeeringConnectionAccepterRequester>(
          map['requester']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      vpcPeeringConnectionId:
          Input.asInput<String>(map['vpcPeeringConnectionId']),
    );
  }
}
