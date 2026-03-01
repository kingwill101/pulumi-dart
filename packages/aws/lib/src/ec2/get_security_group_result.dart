// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_security_group_filter.dart';

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

  /// Creates a new [GetSecurityGroupResult].
  /// [arn] Computed ARN of the security group.
  /// [description] Description of the security group.
  /// [filters] Optional.
  /// [id] Required.
  /// [name] Required.
  /// [region] Required.
  /// [tags] Required.
  /// [vpcId] Required.
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
    return <String, dynamic>{
      'arn': arn,
      'description': description,
      'filters': ?filters == null
          ? null
          : pulumi.Input.encodeList<
              GetSecurityGroupFilter,
              Map<String, dynamic>
            >(filters!, (value) => value.toMap()),
      'id': id,
      'name': name,
      'region': region,
      'tags': tags,
      'vpcId': vpcId,
    };
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
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      id: map['id'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      vpcId: map['vpcId'] as String,
    );
  }
}
