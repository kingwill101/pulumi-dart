// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_security_group_filter/get_security_group_filter.dart';

/// Result data returned by getSecurityGroup.
class GetSecurityGroupResult {
  /// Computed ARN of the security group.
  final String arn;

  /// Description of the security group.
  final String description;
  final List<GetSecurityGroupFilter>? filters;
  final String id;
  final String name;
  final String region;
  final Map<String, String> tags;
  final String vpcId;

  GetSecurityGroupResult({
    required this.arn,
    required this.description,
    this.filters,
    required this.id,
    required this.name,
    required this.region,
    required this.tags,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['description'] = description;
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] =
          pulumi.Input.encodeList<GetSecurityGroupFilter, Map<String, dynamic>>(
              filtersValue, (value) => value.toMap());
    }
    map['id'] = id;
    map['name'] = name;
    map['region'] = region;
    map['tags'] = tags;
    map['vpcId'] = vpcId;
    return map;
  }

  factory GetSecurityGroupResult.fromMap(Map<String, dynamic> map) {
    return GetSecurityGroupResult(
      arn: map['arn'] as String,
      description: map['description'] as String,
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetSecurityGroupFilter>(
              map['filters'],
              (value) => GetSecurityGroupFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      vpcId: map['vpcId'] as String,
    );
  }
}
