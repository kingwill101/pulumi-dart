// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_security_group_rules_filter.dart';

/// Result data returned by getSecurityGroupRules.
class GetSecurityGroupRulesResult {
  final List<GetSecurityGroupRulesFilter>? filters;
  final String id;
  /// List of all the security group rule IDs found.
  final List<String> ids;
  final String region;
  final Map<String, String>? tags;

  /// Creates a new [GetSecurityGroupRulesResult].
  /// [filters] Optional.
  /// [id] Required.
  /// [ids] List of all the security group rule IDs found.
  /// [region] Required.
  /// [tags] Optional.
  GetSecurityGroupRulesResult({
    this.filters,
    required this.id,
    required this.ids,
    required this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSecurityGroupRulesFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'ids': ids,
      'region': region,
      'tags': ?tags,
    };
  }

  factory GetSecurityGroupRulesResult.fromMap(Map<String, dynamic> map) {
    return GetSecurityGroupRulesResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSecurityGroupRulesFilter>(guardedValue, (value) => GetSecurityGroupRulesFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      region: map['region'] as String,
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}

