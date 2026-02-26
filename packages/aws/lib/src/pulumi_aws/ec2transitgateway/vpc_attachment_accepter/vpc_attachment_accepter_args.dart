// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for VpcAttachmentAccepter.
class VpcAttachmentAccepterArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value tags for the EC2 Transit Gateway VPC Attachment. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// The ID of the EC2 Transit Gateway Attachment to manage.
  final Input<String> transitGatewayAttachmentId;

  /// Boolean whether the VPC Attachment should be associated with the EC2 Transit Gateway association default route table. Default value: <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final Input<bool>? transitGatewayDefaultRouteTableAssociation;

  /// Boolean whether the VPC Attachment should propagate routes with the EC2 Transit Gateway propagation default route table. Default value: <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final Input<bool>? transitGatewayDefaultRouteTablePropagation;

  VpcAttachmentAccepterArgs({
    this.region,
    this.tags,
    required this.transitGatewayAttachmentId,
    this.transitGatewayDefaultRouteTableAssociation,
    this.transitGatewayDefaultRouteTablePropagation,
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
    final transitGatewayDefaultRouteTableAssociationValue =
        transitGatewayDefaultRouteTableAssociation;
    if (transitGatewayDefaultRouteTableAssociationValue != null) {
      map['transitGatewayDefaultRouteTableAssociation'] =
          transitGatewayDefaultRouteTableAssociationValue;
    }
    final transitGatewayDefaultRouteTablePropagationValue =
        transitGatewayDefaultRouteTablePropagation;
    if (transitGatewayDefaultRouteTablePropagationValue != null) {
      map['transitGatewayDefaultRouteTablePropagation'] =
          transitGatewayDefaultRouteTablePropagationValue;
    }
    return map;
  }

  factory VpcAttachmentAccepterArgs.fromMap(Map<String, dynamic> map) {
    return VpcAttachmentAccepterArgs(
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      transitGatewayAttachmentId:
          Input.asInput<String>(map['transitGatewayAttachmentId']),
      transitGatewayDefaultRouteTableAssociation: Input.asOptionalInput<bool>(
          map['transitGatewayDefaultRouteTableAssociation']),
      transitGatewayDefaultRouteTablePropagation: Input.asOptionalInput<bool>(
          map['transitGatewayDefaultRouteTablePropagation']),
    );
  }
}
