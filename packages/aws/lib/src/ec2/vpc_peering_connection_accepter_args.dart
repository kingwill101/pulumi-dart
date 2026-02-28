// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_peering_connection_accepter_accepter.dart';
import 'vpc_peering_connection_accepter_requester.dart';

/// {@template pulumi_ec2_vpc_peering_connection_accepter_vpc_peering_connection_accepter_args_doc}
/// The set of arguments for VpcPeeringConnectionAccepter.
/// {@endtemplate}
/// {@macro pulumi_ec2_vpc_peering_connection_accepter_vpc_peering_connection_accepter_args_doc}
class VpcPeeringConnectionAccepterArgs {
  /// A configuration block that describes [VPC Peering Connection]
  /// (https://docs.aws.amazon.com/vpc/latest/peering/what-is-vpc-peering.html) options set for the accepter VPC.
  final pulumi.Input<VpcPeeringConnectionAccepterAccepter>? accepter;

  /// Whether or not to accept the peering request. Defaults to `false`.
  final pulumi.Input<bool>? autoAccept;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A configuration block that describes [VPC Peering Connection]
  /// (https://docs.aws.amazon.com/vpc/latest/peering/what-is-vpc-peering.html) options set for the requester VPC.
  final pulumi.Input<VpcPeeringConnectionAccepterRequester>? requester;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// The VPC Peering Connection ID to manage.
  final pulumi.Input<String> vpcPeeringConnectionId;

  /// Creates a new [VpcPeeringConnectionAccepterArgs].
  /// [accepter] A configuration block that describes [VPC Peering Connection]
  /// [autoAccept] Whether or not to accept the peering request. Defaults to `false`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [requester] A configuration block that describes [VPC Peering Connection]
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [vpcPeeringConnectionId] The VPC Peering Connection ID to manage.
  VpcPeeringConnectionAccepterArgs({
    VpcPeeringConnectionAccepterAccepter? accepter,
    bool? autoAccept,
    String? region,
    VpcPeeringConnectionAccepterRequester? requester,
    Map<String, String>? tags,
    required String vpcPeeringConnectionId,
  })  : accepter =
            pulumi.Input.asOptionalInput<VpcPeeringConnectionAccepterAccepter>(
                accepter),
        autoAccept = pulumi.Input.asOptionalInput<bool>(autoAccept),
        region = pulumi.Input.asOptionalInput<String>(region),
        requester =
            pulumi.Input.asOptionalInput<VpcPeeringConnectionAccepterRequester>(
                requester),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        vpcPeeringConnectionId =
            pulumi.Input.asInput<String>(vpcPeeringConnectionId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accepterValue = accepter;
    if (accepterValue != null) {
      map['accepter'] = pulumi.Input.mapOptionalInputValue<
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
      map['requester'] = pulumi.Input.mapOptionalInputValue<
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
      accepter: map['accepter'] == null
          ? null
          : VpcPeeringConnectionAccepterAccepter.fromMap(
              (map['accepter'] as Map).cast<String, dynamic>()),
      autoAccept: map['autoAccept'] == null ? null : map['autoAccept'] as bool,
      region: map['region'] == null ? null : map['region'] as String,
      requester: map['requester'] == null
          ? null
          : VpcPeeringConnectionAccepterRequester.fromMap(
              (map['requester'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      vpcPeeringConnectionId: map['vpcPeeringConnectionId'] as String,
    );
  }
}
