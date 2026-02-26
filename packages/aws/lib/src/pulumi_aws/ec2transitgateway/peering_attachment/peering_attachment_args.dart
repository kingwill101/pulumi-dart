// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../peering_attachment_options/peering_attachment_options.dart';

/// The set of arguments for PeeringAttachment.
class PeeringAttachmentArgs {
  /// Describes whether dynamic routing is enabled or disabled for the transit gateway peering request. See options below for more details!
  final Input<PeeringAttachmentOptions>? options;

  /// Account ID of EC2 Transit Gateway to peer with. Defaults to the account ID the AWS provider is currently connected to.
  final Input<String>? peerAccountId;

  /// Region of EC2 Transit Gateway to peer with.
  final Input<String> peerRegion;

  /// Identifier of EC2 Transit Gateway to peer with.
  final Input<String> peerTransitGatewayId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value tags for the EC2 Transit Gateway Peering Attachment. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Identifier of EC2 Transit Gateway.
  final Input<String> transitGatewayId;

  PeeringAttachmentArgs({
    this.options,
    this.peerAccountId,
    required this.peerRegion,
    required this.peerTransitGatewayId,
    this.region,
    this.tags,
    required this.transitGatewayId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final optionsValue = options;
    if (optionsValue != null) {
      map['options'] = Input.mapOptionalInputValue<PeeringAttachmentOptions,
          Map<String, dynamic>>(optionsValue, (value) => value.toMap());
    }
    final peerAccountIdValue = peerAccountId;
    if (peerAccountIdValue != null) {
      map['peerAccountId'] = peerAccountIdValue;
    }
    map['peerRegion'] = peerRegion;
    map['peerTransitGatewayId'] = peerTransitGatewayId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['transitGatewayId'] = transitGatewayId;
    return map;
  }

  factory PeeringAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return PeeringAttachmentArgs(
      options: Input.asOptionalInput<PeeringAttachmentOptions>(map['options']),
      peerAccountId: Input.asOptionalInput<String>(map['peerAccountId']),
      peerRegion: Input.asInput<String>(map['peerRegion']),
      peerTransitGatewayId: Input.asInput<String>(map['peerTransitGatewayId']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      transitGatewayId: Input.asInput<String>(map['transitGatewayId']),
    );
  }
}
