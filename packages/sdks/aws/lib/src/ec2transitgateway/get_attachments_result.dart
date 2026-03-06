// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_attachments_filter.dart';

/// Result data returned by getAttachments.
class GetAttachmentsResult {
  final List<GetAttachmentsFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of all attachments ids matching the filter. You can retrieve more information about the attachment using the [aws.ec2transitgateway.getAttachment][2] data source, searching by identifier.
  final List<String> ids;
  final String region;
  final Map<String, String> tags;

  /// Creates a new [GetAttachmentsResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of all attachments ids matching the filter. You can retrieve more information about the attachment using the [aws.ec2transitgateway.getAttachment][2] data source, searching by identifier.
  /// [region] Required.
  /// [tags] Required.
  const GetAttachmentsResult({
    this.filters,
    required this.id,
    required this.ids,
    required this.region,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAttachmentsFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'ids': ids,
      'region': region,
      'tags': tags,
    };
  }

  factory GetAttachmentsResult.fromMap(Map<String, dynamic> map) {
    return GetAttachmentsResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAttachmentsFilter>(guardedValue, (value) => GetAttachmentsFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

