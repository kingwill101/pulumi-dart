// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2transitgateway_vpc_attachment_accepter_vpc_attachment_accepter_args_doc}
/// The set of arguments for VpcAttachmentAccepter.
/// {@endtemplate}
/// {@macro pulumi_ec2transitgateway_vpc_attachment_accepter_vpc_attachment_accepter_args_doc}
class VpcAttachmentAccepterArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Key-value tags for the EC2 Transit Gateway VPC Attachment. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// The ID of the EC2 Transit Gateway Attachment to manage.
  final pulumi.Input<String> transitGatewayAttachmentId;
  /// Boolean whether the VPC Attachment should be associated with the EC2 Transit Gateway association default route table. Default value: `true`.
  final pulumi.Input<bool?>? transitGatewayDefaultRouteTableAssociation;
  /// Boolean whether the VPC Attachment should propagate routes with the EC2 Transit Gateway propagation default route table. Default value: `true`.
  final pulumi.Input<bool?>? transitGatewayDefaultRouteTablePropagation;

  /// Creates a new [VpcAttachmentAccepterArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value tags for the EC2 Transit Gateway VPC Attachment. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [transitGatewayAttachmentId] The ID of the EC2 Transit Gateway Attachment to manage.
  /// [transitGatewayDefaultRouteTableAssociation] Boolean whether the VPC Attachment should be associated with the EC2 Transit Gateway association default route table. Default value: `true`.
  /// [transitGatewayDefaultRouteTablePropagation] Boolean whether the VPC Attachment should propagate routes with the EC2 Transit Gateway propagation default route table. Default value: `true`.
  const VpcAttachmentAccepterArgs({
    this.region,
    this.tags,
    required this.transitGatewayAttachmentId,
    this.transitGatewayDefaultRouteTableAssociation,
    this.transitGatewayDefaultRouteTablePropagation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'tags': ?tags,
      'transitGatewayAttachmentId': transitGatewayAttachmentId,
      'transitGatewayDefaultRouteTableAssociation': ?transitGatewayDefaultRouteTableAssociation,
      'transitGatewayDefaultRouteTablePropagation': ?transitGatewayDefaultRouteTablePropagation,
    };
  }

  factory VpcAttachmentAccepterArgs.fromMap(Map<String, dynamic> map) {
    return VpcAttachmentAccepterArgs(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      transitGatewayAttachmentId: pulumi.Input.fromValue(map['transitGatewayAttachmentId'] as String),
      transitGatewayDefaultRouteTableAssociation: (() { final guardedValue = map['transitGatewayDefaultRouteTableAssociation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      transitGatewayDefaultRouteTablePropagation: (() { final guardedValue = map['transitGatewayDefaultRouteTablePropagation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
