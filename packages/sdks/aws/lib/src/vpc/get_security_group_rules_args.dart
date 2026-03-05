// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_security_group_rules_filter.dart';

/// {@template pulumi_vpc_get_security_group_rules_get_security_group_rules_args_doc}
/// Arguments for getSecurityGroupRules.
/// {@endtemplate}
/// {@macro pulumi_vpc_get_security_group_rules_get_security_group_rules_args_doc}
class GetSecurityGroupRulesArgs {
  /// Custom filter block as described below.
  final pulumi.Input<List<GetSecurityGroupRulesFilter>>? filters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags, each pair of which must exactly match
  /// a pair on the desired security group rule.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetSecurityGroupRulesArgs].
  /// [filters] Custom filter block as described below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags, each pair of which must exactly match
  GetSecurityGroupRulesArgs({
    this.filters,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetSecurityGroupRulesFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetSecurityGroupRulesFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetSecurityGroupRulesArgs.fromMap(Map<String, dynamic> map) {
    return GetSecurityGroupRulesArgs(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetSecurityGroupRulesFilter>(guardedValue, (value) => GetSecurityGroupRulesFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

