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
    List<GetSecurityGroupRulesFilter>? filters,
    String? region,
    Map<String, String>? tags,
  })  : filters =
            pulumi.Input.asOptionalInput<List<GetSecurityGroupRulesFilter>>(
                filters),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.mapOptionalInputValue<
              List<GetSecurityGroupRulesFilter>, List<Map<String, dynamic>>>(
          filtersValue,
          (value) => pulumi.Input.encodeList<GetSecurityGroupRulesFilter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
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

  factory GetSecurityGroupRulesArgs.fromMap(Map<String, dynamic> map) {
    return GetSecurityGroupRulesArgs(
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetSecurityGroupRulesFilter>(
              map['filters'],
              (value) => GetSecurityGroupRulesFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
