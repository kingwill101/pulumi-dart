// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'peering_attachment_options.dart';

/// {@template pulumi_ec2transitgateway_peering_attachment_peering_attachment_args_doc}
/// The set of arguments for PeeringAttachment.
/// {@endtemplate}
/// {@macro pulumi_ec2transitgateway_peering_attachment_peering_attachment_args_doc}
class PeeringAttachmentArgs {
  /// Describes whether dynamic routing is enabled or disabled for the transit gateway peering request. See options below for more details!
  final pulumi.Input<PeeringAttachmentOptions>? options;

  /// Account ID of EC2 Transit Gateway to peer with. Defaults to the account ID the AWS provider is currently connected to.
  final pulumi.Input<String>? peerAccountId;

  /// Region of EC2 Transit Gateway to peer with.
  final pulumi.Input<String> peerRegion;

  /// Identifier of EC2 Transit Gateway to peer with.
  final pulumi.Input<String> peerTransitGatewayId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value tags for the EC2 Transit Gateway Peering Attachment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Identifier of EC2 Transit Gateway.
  final pulumi.Input<String> transitGatewayId;

  /// Creates a new [PeeringAttachmentArgs].
  /// [options] Describes whether dynamic routing is enabled or disabled for the transit gateway peering request. See options below for more details!
  /// [peerAccountId] Account ID of EC2 Transit Gateway to peer with. Defaults to the account ID the AWS provider is currently connected to.
  /// [peerRegion] Region of EC2 Transit Gateway to peer with.
  /// [peerTransitGatewayId] Identifier of EC2 Transit Gateway to peer with.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value tags for the EC2 Transit Gateway Peering Attachment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [transitGatewayId] Identifier of EC2 Transit Gateway.
  PeeringAttachmentArgs({
    PeeringAttachmentOptions? options,
    String? peerAccountId,
    required String peerRegion,
    required String peerTransitGatewayId,
    String? region,
    Map<String, String>? tags,
    required String transitGatewayId,
  }) : options = pulumi.Input.asOptionalInput<PeeringAttachmentOptions>(
         options,
       ),
       peerAccountId = pulumi.Input.asOptionalInput<String>(peerAccountId),
       peerRegion = pulumi.Input.asInput<String>(peerRegion),
       peerTransitGatewayId = pulumi.Input.asInput<String>(
         peerTransitGatewayId,
       ),
       region = pulumi.Input.asOptionalInput<String>(region),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
       transitGatewayId = pulumi.Input.asInput<String>(transitGatewayId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'options':
          ?pulumi.Input.mapOptionalInputValue<
            PeeringAttachmentOptions,
            Map<String, dynamic>
          >(options, (value) => value.toMap()),
      'peerAccountId': ?peerAccountId,
      'peerRegion': peerRegion,
      'peerTransitGatewayId': peerTransitGatewayId,
      'region': ?region,
      'tags': ?tags,
      'transitGatewayId': transitGatewayId,
    };
  }

  factory PeeringAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return PeeringAttachmentArgs(
      options: map['options'] == null
          ? null
          : PeeringAttachmentOptions.fromMap(
              (map['options'] as Map).cast<String, dynamic>(),
            ),
      peerAccountId: map['peerAccountId'] == null
          ? null
          : map['peerAccountId'] as String,
      peerRegion: map['peerRegion'] as String,
      peerTransitGatewayId: map['peerTransitGatewayId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      transitGatewayId: map['transitGatewayId'] as String,
    );
  }
}
