// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_ipam_pool_filter.dart';

/// {@template pulumi_ec2_get_vpc_ipam_pool_get_vpc_ipam_pool_args_doc}
/// Arguments for getVpcIpamPool.
/// {@endtemplate}
/// {@macro pulumi_ec2_get_vpc_ipam_pool_get_vpc_ipam_pool_args_doc}
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

  /// Creates a new [GetVpcIpamPoolArgs].
  /// [allocationResourceTags] Tags that are required to create resources in using this pool.
  /// [filters] Custom filter block as described below.
  /// [id] ID of the IPAM pool.
  /// [ipamPoolId] ID of the IPAM pool you would like information on.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assigned to the resource.
  GetVpcIpamPoolArgs({
    this.allocationResourceTags,
    this.filters,
    this.id,
    this.ipamPoolId,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationResourceTags': ?allocationResourceTags,
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetVpcIpamPoolFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetVpcIpamPoolFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': ?id,
      'ipamPoolId': ?ipamPoolId,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetVpcIpamPoolArgs.fromMap(Map<String, dynamic> map) {
    return GetVpcIpamPoolArgs(
      allocationResourceTags: map['allocationResourceTags'] == null ? null : (((map['allocationResourceTags'] as Map).cast<String, String>()).input()).input(),
      filters: map['filters'] == null ? null : ((pulumi.Input.decodeList<GetVpcIpamPoolFilter>(map['filters']!, (value) => GetVpcIpamPoolFilter.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      id: map['id'] == null ? null : ((map['id'] as String).input()).input(),
      ipamPoolId: map['ipamPoolId'] == null ? null : ((map['ipamPoolId'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

