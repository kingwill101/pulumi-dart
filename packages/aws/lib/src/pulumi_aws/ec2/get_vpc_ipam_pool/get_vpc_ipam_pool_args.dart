// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_vpc_ipam_pool_filter/get_vpc_ipam_pool_filter.dart';

/// Arguments for getVpcIpamPool.
class GetVpcIpamPoolArgs {
  /// Tags that are required to create resources in using this pool.
  final pulumi.Input<Map<String, String>>? allocationResourceTags;

  /// Custom filter block as described below.
  final pulumi.Input<List<GetVpcIpamPoolFilter>>? filters;

  /// ID of the IPAM pool.
  final pulumi.Input<String>? id;

  /// ID of the IPAM pool you would like information on.
  final pulumi.Input<String>? ipamPoolId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of tags to assigned to the resource.
  final pulumi.Input<Map<String, String>>? tags;

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
      map['filters'] = pulumi.Input.mapOptionalInputValue<
              List<GetVpcIpamPoolFilter>, List<Map<String, dynamic>>>(
          filtersValue,
          (value) => pulumi.Input.encodeList<GetVpcIpamPoolFilter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
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
      allocationResourceTags: pulumi.Input.asOptionalInput<Map<String, String>>(
          map['allocationResourceTags']),
      filters: pulumi.Input.asOptionalInput<List<GetVpcIpamPoolFilter>>(
          map['filters']),
      id: pulumi.Input.asOptionalInput<String>(map['id']),
      ipamPoolId: pulumi.Input.asOptionalInput<String>(map['ipamPoolId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
