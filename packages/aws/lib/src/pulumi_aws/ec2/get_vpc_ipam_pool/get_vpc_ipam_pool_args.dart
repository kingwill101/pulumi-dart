// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_vpc_ipam_pool_filter/get_vpc_ipam_pool_filter.dart';

/// Arguments for getVpcIpamPool.
class GetVpcIpamPoolArgs {
  /// Tags that are required to create resources in using this pool.
  final Input<Map<String, String>>? allocationResourceTags;

  /// Custom filter block as described below.
  final Input<List<GetVpcIpamPoolFilter>>? filters;

  /// ID of the IPAM pool.
  final Input<String>? id;

  /// ID of the IPAM pool you would like information on.
  final Input<String>? ipamPoolId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Map of tags to assigned to the resource.
  final Input<Map<String, String>>? tags;

  GetVpcIpamPoolArgs({
    this.allocationResourceTags,
    this.filters,
    this.id,
    this.ipamPoolId,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allocationResourceTagsValue = allocationResourceTags;
    if (allocationResourceTagsValue != null) {
      map['allocationResourceTags'] = allocationResourceTagsValue;
    }
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = Input.mapOptionalInputValue<List<GetVpcIpamPoolFilter>,
              List<Map<String, dynamic>>>(
          filtersValue,
          (value) =>
              Input.encodeList<GetVpcIpamPoolFilter, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final ipamPoolIdValue = ipamPoolId;
    if (ipamPoolIdValue != null) {
      map['ipamPoolId'] = ipamPoolIdValue;
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

  factory GetVpcIpamPoolArgs.fromMap(Map<String, dynamic> map) {
    return GetVpcIpamPoolArgs(
      allocationResourceTags: Input.asOptionalInput<Map<String, String>>(
          map['allocationResourceTags']),
      filters:
          Input.asOptionalInput<List<GetVpcIpamPoolFilter>>(map['filters']),
      id: Input.asOptionalInput<String>(map['id']),
      ipamPoolId: Input.asOptionalInput<String>(map['ipamPoolId']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
