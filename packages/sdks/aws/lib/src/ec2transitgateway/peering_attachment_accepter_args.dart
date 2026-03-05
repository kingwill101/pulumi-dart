// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2transitgateway_peering_attachment_accepter_peering_attachment_accepter_args_doc}
/// The set of arguments for PeeringAttachmentAccepter.
/// {@endtemplate}
/// {@macro pulumi_ec2transitgateway_peering_attachment_accepter_peering_attachment_accepter_args_doc}
class PeeringAttachmentAccepterArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value tags for the EC2 Transit Gateway Peering Attachment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the EC2 Transit Gateway Peering Attachment to manage.
  final pulumi.Input<String> transitGatewayAttachmentId;

  /// Creates a new [PeeringAttachmentAccepterArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value tags for the EC2 Transit Gateway Peering Attachment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [transitGatewayAttachmentId] The ID of the EC2 Transit Gateway Peering Attachment to manage.
  PeeringAttachmentAccepterArgs({
    this.region,
    this.tags,
    required this.transitGatewayAttachmentId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'tags': ?tags,
      'transitGatewayAttachmentId': transitGatewayAttachmentId,
    };
  }

  factory PeeringAttachmentAccepterArgs.fromMap(Map<String, dynamic> map) {
    return PeeringAttachmentAccepterArgs(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      transitGatewayAttachmentId: pulumi.Input.fromValue(map['transitGatewayAttachmentId'] as String),
    );
  }
}

