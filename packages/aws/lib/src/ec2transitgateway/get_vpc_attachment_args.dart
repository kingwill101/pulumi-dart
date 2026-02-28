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
    List<GetVpcAttachmentFilter>? filters,
    String? id,
    String? region,
    Map<String, String>? tags,
  })  : filters =
            pulumi.Input.asOptionalInput<List<GetVpcAttachmentFilter>>(filters),
        id = pulumi.Input.asOptionalInput<String>(id),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.mapOptionalInputValue<
              List<GetVpcAttachmentFilter>, List<Map<String, dynamic>>>(
          filtersValue,
          (value) => pulumi.Input.encodeList<GetVpcAttachmentFilter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetVpcAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return GetVpcAttachmentArgs(
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetVpcAttachmentFilter>(
              map['filters'],
              (value) => GetVpcAttachmentFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] == null ? null : map['id'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
