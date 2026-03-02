// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_attachment_filter.dart';

/// {@template pulumi_ec2transitgateway_get_vpc_attachment_get_vpc_attachment_args_doc}
/// Arguments for getVpcAttachment.
/// {@endtemplate}
/// {@macro pulumi_ec2transitgateway_get_vpc_attachment_get_vpc_attachment_args_doc}
class GetVpcAttachmentArgs {
  /// One or more configuration blocks containing name-values filters. Detailed below.
  final pulumi.Input<List<GetVpcAttachmentFilter>>? filters;
  /// Identifier of the EC2 Transit Gateway VPC Attachment.
  final pulumi.Input<String>? id;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value tags for the EC2 Transit Gateway VPC Attachment
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetVpcAttachmentArgs].
  /// [filters] One or more configuration blocks containing name-values filters. Detailed below.
  /// [id] Identifier of the EC2 Transit Gateway VPC Attachment.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value tags for the EC2 Transit Gateway VPC Attachment
  GetVpcAttachmentArgs({
    this.filters,
    this.id,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetVpcAttachmentFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetVpcAttachmentFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': ?id,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetVpcAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return GetVpcAttachmentArgs(
      filters: map['filters'] == null ? null : ((pulumi.Input.decodeList<GetVpcAttachmentFilter>(map['filters']!, (value) => GetVpcAttachmentFilter.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      id: map['id'] == null ? null : ((map['id'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

