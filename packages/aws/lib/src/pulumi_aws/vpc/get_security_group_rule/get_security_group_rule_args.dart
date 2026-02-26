// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_security_group_rule_filter/get_security_group_rule_filter.dart';

/// Arguments for getSecurityGroupRule.
class GetSecurityGroupRuleArgs {
  /// Configuration block(s) for filtering. Detailed below.
  ///
  /// The arguments of this data source act as filters for querying the available
  /// security group rules. The given filters must match exactly one security group rule
  /// whose data will be exported as attributes.
  final Input<List<GetSecurityGroupRuleFilter>>? filters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// ID of the security group rule to select.
  final Input<String>? securityGroupRuleId;

  GetSecurityGroupRuleArgs({
    this.filters,
    this.region,
    this.securityGroupRuleId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = Input.mapOptionalInputValue<
              List<GetSecurityGroupRuleFilter>, List<Map<String, dynamic>>>(
          filtersValue,
          (value) => Input.encodeList<GetSecurityGroupRuleFilter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final securityGroupRuleIdValue = securityGroupRuleId;
    if (securityGroupRuleIdValue != null) {
      map['securityGroupRuleId'] = securityGroupRuleIdValue;
    }
    return map;
  }

  factory GetSecurityGroupRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetSecurityGroupRuleArgs(
      filters: Input.asOptionalInput<List<GetSecurityGroupRuleFilter>>(
          map['filters']),
      region: Input.asOptionalInput<String>(map['region']),
      securityGroupRuleId:
          Input.asOptionalInput<String>(map['securityGroupRuleId']),
    );
  }
}
