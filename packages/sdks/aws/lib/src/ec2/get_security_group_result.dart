// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_security_group_filter.dart';

/// Result data returned by getSecurityGroup.
class GetSecurityGroupResult {
  /// Computed ARN of the security group.
  final String? arn;
  /// Description of the security group.
  final String? description;
  final List<GetSecurityGroupFilter>? filters;
  final String? id;
  final String? name;
  final String? region;
  final Map<String, String>? tags;
  final String? vpcId;

  /// Creates a new [GetSecurityGroupResult].
  /// [arn] Computed ARN of the security group.
  /// [description] Description of the security group.
  /// [filters] Optional.
  /// [id] Optional.
  /// [name] Optional.
  /// [region] Optional.
  /// [tags] Optional.
  /// [vpcId] Optional.
  const GetSecurityGroupResult({
    this.arn,
    this.description,
    this.filters,
    this.id,
    this.name,
    this.region,
    this.tags,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSecurityGroupFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'vpcId': ?vpcId,
    };
  }

  factory GetSecurityGroupResult.fromMap(Map<String, dynamic> map) {
    return GetSecurityGroupResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSecurityGroupFilter>(guardedValue, (value) => GetSecurityGroupFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
