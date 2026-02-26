// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_peering_attachment_filter/get_peering_attachment_filter.dart';

/// Arguments for getPeeringAttachment.
class GetPeeringAttachmentArgs {
  /// One or more configuration blocks containing name-values filters. Detailed below.
  final Input<List<GetPeeringAttachmentFilter>>? filters;

  /// Identifier of the EC2 Transit Gateway Peering Attachment.
  final Input<String>? id;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Mapping of tags, each pair of which must exactly match
  /// a pair on the specific EC2 Transit Gateway Peering Attachment to retrieve.
  ///
  /// More complex filters can be expressed using one or more <span pulumi-lang-nodejs="`filter`" pulumi-lang-dotnet="`Filter`" pulumi-lang-go="`filter`" pulumi-lang-python="`filter`" pulumi-lang-yaml="`filter`" pulumi-lang-java="`filter`">`filter`</span> sub-blocks,
  /// which take the following arguments:
  final Input<Map<String, String>>? tags;

  GetPeeringAttachmentArgs({
    this.filters,
    this.id,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = Input.mapOptionalInputValue<
              List<GetPeeringAttachmentFilter>, List<Map<String, dynamic>>>(
          filtersValue,
          (value) => Input.encodeList<GetPeeringAttachmentFilter,
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
      filters: Input.asOptionalInput<List<GetPeeringAttachmentFilter>>(
          map['filters']),
      id: Input.asOptionalInput<String>(map['id']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
