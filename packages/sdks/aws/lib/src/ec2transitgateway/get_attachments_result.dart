// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_attachments_filter.dart';

/// Result data returned by getAttachments.
class GetAttachmentsResult {
  final List<GetAttachmentsFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// A list of all attachments ids matching the filter. You can retrieve more information about the attachment using the aws.ec2transitgateway.getAttachment data source, searching by identifier.
  final List<String>? ids;
  final String? region;
  final Map<String, String>? tags;

  /// Creates a new [GetAttachmentsResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of all attachments ids matching the filter. You can retrieve more information about the attachment using the aws.ec2transitgateway.getAttachment data source, searching by identifier.
  /// [region] Optional.
  /// [tags] Optional.
  const GetAttachmentsResult({
    this.filters,
    this.id,
    this.ids,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAttachmentsFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'ids': ?ids,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetAttachmentsResult.fromMap(Map<String, dynamic> map) {
    return GetAttachmentsResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAttachmentsFilter>(guardedValue, (value) => GetAttachmentsFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
