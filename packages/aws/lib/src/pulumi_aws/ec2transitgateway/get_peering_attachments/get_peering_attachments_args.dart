// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_peering_attachments_filter/get_peering_attachments_filter.dart';

/// Arguments for getPeeringAttachments.
class GetPeeringAttachmentsArgs {
  /// One or more configuration blocks containing name-values filters. Detailed below.
  final Input<List<GetPeeringAttachmentsFilter>>? filters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetPeeringAttachmentsArgs({
    this.filters,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = Input.mapOptionalInputValue<
              List<GetPeeringAttachmentsFilter>, List<Map<String, dynamic>>>(
          filtersValue,
          (value) => Input.encodeList<GetPeeringAttachmentsFilter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetPeeringAttachmentsArgs.fromMap(Map<String, dynamic> map) {
    return GetPeeringAttachmentsArgs(
      filters: Input.asOptionalInput<List<GetPeeringAttachmentsFilter>>(
          map['filters']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
