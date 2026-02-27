// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_vpc_attachments_filter/get_vpc_attachments_filter.dart';

/// Result data returned by getVpcAttachments.
class GetVpcAttachmentsResult {
  final List<GetVpcAttachmentsFilter>? filters;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// A list of all attachments ids matching the filter. You can retrieve more information about the attachment using the [aws.ec2transitgateway.VpcAttachment][2] data source, searching by identifier.
  final List<String> ids;
  final String region;

  GetVpcAttachmentsResult({
    this.filters,
    required this.id,
    required this.ids,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] =
          Input.encodeList<GetVpcAttachmentsFilter, Map<String, dynamic>>(
              filtersValue, (value) => value.toMap());
    }
    map['id'] = id;
    map['ids'] = ids;
    map['region'] = region;
    return map;
  }

  factory GetVpcAttachmentsResult.fromMap(Map<String, dynamic> map) {
    return GetVpcAttachmentsResult(
      filters: map['filters'] == null
          ? null
          : Input.decodeList<GetVpcAttachmentsFilter>(
              map['filters'],
              (value) => GetVpcAttachmentsFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      region: map['region'] as String,
    );
  }
}
