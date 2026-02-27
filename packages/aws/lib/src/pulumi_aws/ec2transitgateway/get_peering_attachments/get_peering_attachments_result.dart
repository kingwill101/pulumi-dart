// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_peering_attachments_filter/get_peering_attachments_filter.dart';

/// Result data returned by getPeeringAttachments.
class GetPeeringAttachmentsResult {
  final List<GetPeeringAttachmentsFilter>? filters;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// A list of all attachments ids matching the filter. You can retrieve more information about the attachment using the [aws.ec2transitgateway.PeeringAttachment][2] data source, searching by identifier.
  final List<String> ids;
  final String region;

  GetPeeringAttachmentsResult({
    this.filters,
    required this.id,
    required this.ids,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.encodeList<GetPeeringAttachmentsFilter,
          Map<String, dynamic>>(filtersValue, (value) => value.toMap());
    }
    map['id'] = id;
    map['ids'] = ids;
    map['region'] = region;
    return map;
  }

  factory GetPeeringAttachmentsResult.fromMap(Map<String, dynamic> map) {
    return GetPeeringAttachmentsResult(
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetPeeringAttachmentsFilter>(
              map['filters'],
              (value) => GetPeeringAttachmentsFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      region: map['region'] as String,
    );
  }
}
