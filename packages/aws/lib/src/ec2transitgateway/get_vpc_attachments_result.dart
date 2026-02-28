// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_attachments_filter.dart';

/// Result data returned by getVpcAttachments.
class GetVpcAttachmentsResult {
  final List<GetVpcAttachmentsFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of all attachments ids matching the filter. You can retrieve more information about the attachment using the [aws.ec2transitgateway.VpcAttachment][2] data source, searching by identifier.
  final List<String> ids;
  final String region;

  /// Creates a new [GetVpcAttachmentsResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of all attachments ids matching the filter. You can retrieve more information about the attachment using the [aws.ec2transitgateway.VpcAttachment][2] data source, searching by identifier.
  /// [region] Required.
  GetVpcAttachmentsResult({
    this.filters,
    required this.id,
    required this.ids,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?filters == null ? null : pulumi.Input.encodeList<GetVpcAttachmentsFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'region': region,
    };
  }

  factory GetVpcAttachmentsResult.fromMap(Map<String, dynamic> map) {
    return GetVpcAttachmentsResult(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetVpcAttachmentsFilter>(map['filters'], (value) => GetVpcAttachmentsFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      region: map['region'] as String,
    );
  }
}

