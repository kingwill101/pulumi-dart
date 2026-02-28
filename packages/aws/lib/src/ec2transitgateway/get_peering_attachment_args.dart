// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_peering_attachment_filter.dart';

/// {@template pulumi_ec2transitgateway_get_peering_attachment_get_peering_attachment_args_doc}
/// Arguments for getPeeringAttachment.
/// {@endtemplate}
/// {@macro pulumi_ec2transitgateway_get_peering_attachment_get_peering_attachment_args_doc}
class GetPeeringAttachmentArgs {
  /// One or more configuration blocks containing name-values filters. Detailed below.
  final pulumi.Input<List<GetPeeringAttachmentFilter>>? filters;

  /// Identifier of the EC2 Transit Gateway Peering Attachment.
  final pulumi.Input<String>? id;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Mapping of tags, each pair of which must exactly match
  /// a pair on the specific EC2 Transit Gateway Peering Attachment to retrieve.
  ///
  /// More complex filters can be expressed using one or more `filter` sub-blocks,
  /// which take the following arguments:
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetPeeringAttachmentArgs].
  /// [filters] One or more configuration blocks containing name-values filters. Detailed below.
  /// [id] Identifier of the EC2 Transit Gateway Peering Attachment.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Mapping of tags, each pair of which must exactly match
  GetPeeringAttachmentArgs({
    List<GetPeeringAttachmentFilter>? filters,
    String? id,
    String? region,
    Map<String, String>? tags,
  })  : filters =
            pulumi.Input.asOptionalInput<List<GetPeeringAttachmentFilter>>(
                filters),
        id = pulumi.Input.asOptionalInput<String>(id),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.mapOptionalInputValue<
              List<GetPeeringAttachmentFilter>, List<Map<String, dynamic>>>(
          filtersValue,
          (value) => pulumi.Input.encodeList<GetPeeringAttachmentFilter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetPeeringAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return GetPeeringAttachmentArgs(
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetPeeringAttachmentFilter>(
              map['filters'],
              (value) => GetPeeringAttachmentFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] == null ? null : map['id'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
