// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_security_groups_filter.dart';

/// Result data returned by getSecurityGroups.
class GetSecurityGroupsResult {
  /// ARNs of the matched security groups.
  final List<String> arns;
  final List<GetSecurityGroupsFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// IDs of the matches security groups.
  final List<String> ids;
  final String region;
  final Map<String, String> tags;
  /// VPC IDs of the matched security groups. The data source's tag or filter *will span VPCs* unless the `vpc-id` filter is also used.
  final List<String> vpcIds;

  /// Creates a new [GetSecurityGroupsResult].
  /// [arns] ARNs of the matched security groups.
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] IDs of the matches security groups.
  /// [region] Required.
  /// [tags] Required.
  /// [vpcIds] VPC IDs of the matched security groups. The data source's tag or filter *will span VPCs* unless the `vpc-id` filter is also used.
  const GetSecurityGroupsResult({
    required this.arns,
    this.filters,
    required this.id,
    required this.ids,
    required this.region,
    required this.tags,
    required this.vpcIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arns': arns,
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSecurityGroupsFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'ids': ids,
      'region': region,
      'tags': tags,
      'vpcIds': vpcIds,
    };
  }

  factory GetSecurityGroupsResult.fromMap(Map<String, dynamic> map) {
    return GetSecurityGroupsResult(
      arns: (map['arns'] as List).cast<String>(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSecurityGroupsFilter>(guardedValue, (value) => GetSecurityGroupsFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      vpcIds: (map['vpcIds'] as List).cast<String>(),
    );
  }
}

