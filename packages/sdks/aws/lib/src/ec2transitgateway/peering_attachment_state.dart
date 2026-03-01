// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'peering_attachment_options.dart';

/// Input properties used for looking up and filtering PeeringAttachment resources.
class PeeringAttachmentState {
  /// ARN of the attachment.
  final pulumi.Input<String>? arn;
  /// Describes whether dynamic routing is enabled or disabled for the transit gateway peering request. See options below for more details!
  final pulumi.Input<PeeringAttachmentOptions>? options;
  /// Account ID of EC2 Transit Gateway to peer with. Defaults to the account ID the AWS provider is currently connected to.
  final pulumi.Input<String>? peerAccountId;
  /// Region of EC2 Transit Gateway to peer with.
  final pulumi.Input<String>? peerRegion;
  /// Identifier of EC2 Transit Gateway to peer with.
  final pulumi.Input<String>? peerTransitGatewayId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<String>? state;
  /// Key-value tags for the EC2 Transit Gateway Peering Attachment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Identifier of EC2 Transit Gateway.
  final pulumi.Input<String>? transitGatewayId;

  /// Creates a new [PeeringAttachmentState].
  /// [arn] ARN of the attachment.
  /// [options] Describes whether dynamic routing is enabled or disabled for the transit gateway peering request. See options below for more details!
  /// [peerAccountId] Account ID of EC2 Transit Gateway to peer with. Defaults to the account ID the AWS provider is currently connected to.
  /// [peerRegion] Region of EC2 Transit Gateway to peer with.
  /// [peerTransitGatewayId] Identifier of EC2 Transit Gateway to peer with.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [state] Optional.
  /// [tags] Key-value tags for the EC2 Transit Gateway Peering Attachment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [transitGatewayId] Identifier of EC2 Transit Gateway.
  PeeringAttachmentState({
    pulumi.Output<String>? arn,
    pulumi.Output<PeeringAttachmentOptions>? options,
    pulumi.Output<String>? peerAccountId,
    pulumi.Output<String>? peerRegion,
    pulumi.Output<String>? peerTransitGatewayId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? state,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? transitGatewayId,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      options = pulumi.Input.asOptionalInput<PeeringAttachmentOptions>(options),
      peerAccountId = pulumi.Input.asOptionalInput<String>(peerAccountId),
      peerRegion = pulumi.Input.asOptionalInput<String>(peerRegion),
      peerTransitGatewayId = pulumi.Input.asOptionalInput<String>(peerTransitGatewayId),
      region = pulumi.Input.asOptionalInput<String>(region),
      state = pulumi.Input.asOptionalInput<String>(state),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      transitGatewayId = pulumi.Input.asOptionalInput<String>(transitGatewayId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'options': ?pulumi.Input.mapOptionalInputValue<PeeringAttachmentOptions, Map<String, dynamic>>(options, (value) => value.toMap()),
      'peerAccountId': ?peerAccountId,
      'peerRegion': ?peerRegion,
      'peerTransitGatewayId': ?peerTransitGatewayId,
      'region': ?region,
      'state': ?state,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'transitGatewayId': ?transitGatewayId,
    };
  }

  factory PeeringAttachmentState.fromMap(Map<String, dynamic> map) {
    return PeeringAttachmentState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      options: map['options'] == null ? null : pulumi.Output.create<PeeringAttachmentOptions>(PeeringAttachmentOptions.fromMap((map['options'] as Map).cast<String, dynamic>())),
      peerAccountId: map['peerAccountId'] == null ? null : pulumi.Output.create<String>(map['peerAccountId'] as String),
      peerRegion: map['peerRegion'] == null ? null : pulumi.Output.create<String>(map['peerRegion'] as String),
      peerTransitGatewayId: map['peerTransitGatewayId'] == null ? null : pulumi.Output.create<String>(map['peerTransitGatewayId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      transitGatewayId: map['transitGatewayId'] == null ? null : pulumi.Output.create<String>(map['transitGatewayId'] as String),
    );
  }
}

