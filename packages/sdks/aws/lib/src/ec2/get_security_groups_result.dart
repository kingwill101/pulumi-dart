// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_security_groups_filter.dart';

/// Result data returned by getSecurityGroups.
class GetSecurityGroupsResult {
  /// ARNs of the matched security groups.
  final List<String>? arns;
  final List<GetSecurityGroupsFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// IDs of the matches security groups.
  final List<String>? ids;
  final String? region;
  final Map<String, String>? tags;
  /// VPC IDs of the matched security groups. The data source's tag or filter *will span VPCs* unless the `vpc-id` filter is also used.
  final List<String>? vpcIds;

  /// Creates a new [GetSecurityGroupsResult].
  /// [arns] ARNs of the matched security groups.
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] IDs of the matches security groups.
  /// [region] Optional.
  /// [tags] Optional.
  /// [vpcIds] VPC IDs of the matched security groups. The data source's tag or filter *will span VPCs* unless the `vpc-id` filter is also used.
  const GetSecurityGroupsResult({
    this.arns,
    this.filters,
    this.id,
    this.ids,
    this.region,
    this.tags,
    this.vpcIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arns': ?arns,
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSecurityGroupsFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'ids': ?ids,
      'region': ?region,
      'tags': ?tags,
      'vpcIds': ?vpcIds,
    };
  }

  factory GetSecurityGroupsResult.fromMap(Map<String, dynamic> map) {
    return GetSecurityGroupsResult(
      arns: (() { final guardedValue = map['arns']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSecurityGroupsFilter>(guardedValue, (value) => GetSecurityGroupsFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      vpcIds: (() { final guardedValue = map['vpcIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
