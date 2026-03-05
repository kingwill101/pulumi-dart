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
    this.arn,
    this.options,
    this.peerAccountId,
    this.peerRegion,
    this.peerTransitGatewayId,
    this.region,
    this.state,
    this.tags,
    this.tagsAll,
    this.transitGatewayId,
  });

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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      options: (() { final guardedValue = map['options']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PeeringAttachmentOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      peerAccountId: (() { final guardedValue = map['peerAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peerRegion: (() { final guardedValue = map['peerRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peerTransitGatewayId: (() { final guardedValue = map['peerTransitGatewayId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      transitGatewayId: (() { final guardedValue = map['transitGatewayId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

