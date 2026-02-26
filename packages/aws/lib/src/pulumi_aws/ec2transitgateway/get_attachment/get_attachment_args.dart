// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_attachment_filter/get_attachment_filter.dart';

/// Arguments for getAttachment.
class GetAttachmentArgs {
  /// One or more configuration blocks containing name-values filters. Detailed below.
  final Input<List<GetAttachmentFilter>>? filters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value tags for the attachment.
  final Input<Map<String, String>>? tags;

  /// ID of the attachment.
  final Input<String>? transitGatewayAttachmentId;

  GetAttachmentArgs({
    this.filters,
    this.region,
    this.tags,
    this.transitGatewayAttachmentId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = Input.mapOptionalInputValue<List<GetAttachmentFilter>,
              List<Map<String, dynamic>>>(
          filtersValue,
          (value) =>
              Input.encodeList<GetAttachmentFilter, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
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
      filters: Input.asOptionalInput<List<GetAttachmentFilter>>(map['filters']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      transitGatewayAttachmentId:
          Input.asOptionalInput<String>(map['transitGatewayAttachmentId']),
    );
  }
}
