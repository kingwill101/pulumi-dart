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
  const GetVpcAttachmentsResult({
    this.filters,
    required this.id,
    required this.ids,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVpcAttachmentsFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'ids': ids,
      'region': region,
    };
  }

  factory GetVpcAttachmentsResult.fromMap(Map<String, dynamic> map) {
    return GetVpcAttachmentsResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVpcAttachmentsFilter>(guardedValue, (value) => GetVpcAttachmentsFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      region: map['region'] as String,
    );
  }
}

