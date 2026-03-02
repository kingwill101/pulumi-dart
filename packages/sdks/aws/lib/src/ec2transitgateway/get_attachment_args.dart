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
    this.filters,
    this.region,
    this.tags,
    this.transitGatewayAttachmentId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetAttachmentFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetAttachmentFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'tags': ?tags,
      'transitGatewayAttachmentId': ?transitGatewayAttachmentId,
    };
  }

  factory GetAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return GetAttachmentArgs(
      filters: map['filters'] == null ? null : (pulumi.Input.decodeList<GetAttachmentFilter>(map['filters'], (value) => GetAttachmentFilter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      transitGatewayAttachmentId: map['transitGatewayAttachmentId'] == null ? null : (map['transitGatewayAttachmentId'] as String).input(),
    );
  }
}

