// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for PeeringAttachmentAccepter.
class PeeringAttachmentAccepterArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value tags for the EC2 Transit Gateway Peering Attachment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// The ID of the EC2 Transit Gateway Peering Attachment to manage.
  final pulumi.Input<String> transitGatewayAttachmentId;

  PeeringAttachmentAccepterArgs({
    this.region,
    this.tags,
    required this.transitGatewayAttachmentId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['transitGatewayAttachmentId'] = transitGatewayAttachmentId;
    return map;
  }

  factory PeeringAttachmentAccepterArgs.fromMap(Map<String, dynamic> map) {
    return PeeringAttachmentAccepterArgs(
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      transitGatewayAttachmentId:
          pulumi.Input.asInput<String>(map['transitGatewayAttachmentId']),
    );
  }
}
