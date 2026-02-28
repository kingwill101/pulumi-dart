// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_attachment_filter.dart';

/// {@template pulumi_ec2transitgateway_get_attachment_get_attachment_args_doc}
/// Arguments for getAttachment.
/// {@endtemplate}
/// {@macro pulumi_ec2transitgateway_get_attachment_get_attachment_args_doc}
class GetAttachmentArgs {
  /// One or more configuration blocks containing name-values filters. Detailed below.
  final pulumi.Input<List<GetAttachmentFilter>>? filters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value tags for the attachment.
  final pulumi.Input<Map<String, String>>? tags;

  /// ID of the attachment.
  final pulumi.Input<String>? transitGatewayAttachmentId;

  /// Creates a new [GetAttachmentArgs].
  /// [filters] One or more configuration blocks containing name-values filters. Detailed below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value tags for the attachment.
  /// [transitGatewayAttachmentId] ID of the attachment.
  GetAttachmentArgs({
    List<GetAttachmentFilter>? filters,
    String? region,
    Map<String, String>? tags,
    String? transitGatewayAttachmentId,
  })  : filters =
            pulumi.Input.asOptionalInput<List<GetAttachmentFilter>>(filters),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        transitGatewayAttachmentId =
            pulumi.Input.asOptionalInput<String>(transitGatewayAttachmentId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.mapOptionalInputValue<
              List<GetAttachmentFilter>, List<Map<String, dynamic>>>(
          filtersValue,
          (value) => pulumi.Input.encodeList<GetAttachmentFilter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final transitGatewayAttachmentIdValue = transitGatewayAttachmentId;
    if (transitGatewayAttachmentIdValue != null) {
      map['transitGatewayAttachmentId'] = transitGatewayAttachmentIdValue;
    }
    return map;
  }

  factory GetAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return GetAttachmentArgs(
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetAttachmentFilter>(
              map['filters'],
              (value) => GetAttachmentFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      transitGatewayAttachmentId: map['transitGatewayAttachmentId'] == null
          ? null
          : map['transitGatewayAttachmentId'] as String,
    );
  }
}
