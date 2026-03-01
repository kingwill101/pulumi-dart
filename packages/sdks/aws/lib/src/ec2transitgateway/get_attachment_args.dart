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
    pulumi.Output<List<GetAttachmentFilter>>? filters,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? transitGatewayAttachmentId,
  }) :
      filters = pulumi.Input.asOptionalInput<List<GetAttachmentFilter>>(filters),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      transitGatewayAttachmentId = pulumi.Input.asOptionalInput<String>(transitGatewayAttachmentId);

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
      filters: map['filters'] == null ? null : pulumi.Output.create<List<GetAttachmentFilter>>(pulumi.Input.decodeList<GetAttachmentFilter>(map['filters'], (value) => GetAttachmentFilter.fromMap((value as Map).cast<String, dynamic>()))),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      transitGatewayAttachmentId: map['transitGatewayAttachmentId'] == null ? null : pulumi.Output.create<String>(map['transitGatewayAttachmentId'] as String),
    );
  }
}

