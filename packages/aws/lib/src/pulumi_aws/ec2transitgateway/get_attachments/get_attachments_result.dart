// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_attachments_filter/get_attachments_filter.dart';

/// Result data returned by getAttachments.
class GetAttachmentsResult {
  final List<GetAttachmentsFilter>? filters;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// A list of all attachments ids matching the filter. You can retrieve more information about the attachment using the <span pulumi-lang-nodejs="[aws.ec2transitgateway.getAttachment]" pulumi-lang-dotnet="[aws.ec2transitgateway.getAttachment]" pulumi-lang-go="[ec2transitgateway.getAttachment]" pulumi-lang-python="[ec2transitgateway_get_attachment]" pulumi-lang-yaml="[aws.ec2transitgateway.getAttachment]" pulumi-lang-java="[aws.ec2transitgateway.getAttachment]">[aws.ec2transitgateway.getAttachment]</span>[2] data source, searching by identifier.
  final List<String> ids;
  final String region;
  final Map<String, String> tags;

  GetAttachmentsResult({
    this.filters,
    required this.id,
    required this.ids,
    required this.region,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] =
          Input.encodeList<GetAttachmentsFilter, Map<String, dynamic>>(
              filtersValue, (value) => value.toMap());
    }
    map['id'] = id;
    map['ids'] = ids;
    map['region'] = region;
    map['tags'] = tags;
    return map;
  }

  factory GetAttachmentsResult.fromMap(Map<String, dynamic> map) {
    return GetAttachmentsResult(
      filters: map['filters'] == null
          ? null
          : Input.decodeList<GetAttachmentsFilter>(
              map['filters'],
              (value) => GetAttachmentsFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
