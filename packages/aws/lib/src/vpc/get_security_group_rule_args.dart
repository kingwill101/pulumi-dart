// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_security_group_rule_filter.dart';

/// {@template pulumi_vpc_get_security_group_rule_get_security_group_rule_args_doc}
/// Arguments for getSecurityGroupRule.
/// {@endtemplate}
/// {@macro pulumi_vpc_get_security_group_rule_get_security_group_rule_args_doc}
class GetSecurityGroupRuleArgs {
  /// Configuration block(s) for filtering. Detailed below.
  ///
  /// The arguments of this data source act as filters for querying the available
  /// security group rules. The given filters must match exactly one security group rule
  /// whose data will be exported as attributes.
  final pulumi.Input<List<GetSecurityGroupRuleFilter>>? filters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// ID of the security group rule to select.
  final pulumi.Input<String>? securityGroupRuleId;

  /// Creates a new [GetSecurityGroupRuleArgs].
  /// [filters] Configuration block(s) for filtering. Detailed below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroupRuleId] ID of the security group rule to select.
  GetSecurityGroupRuleArgs({
    List<GetSecurityGroupRuleFilter>? filters,
    String? region,
    String? securityGroupRuleId,
  }) : filters = pulumi.Input.asOptionalInput<List<GetSecurityGroupRuleFilter>>(
         filters,
       ),
       region = pulumi.Input.asOptionalInput<String>(region),
       securityGroupRuleId = pulumi.Input.asOptionalInput<String>(
         securityGroupRuleId,
       );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetSecurityGroupRuleFilter>,
            List<Map<String, dynamic>>
          >(
            filters,
            (value) =>
                pulumi.Input.encodeList<
                  GetSecurityGroupRuleFilter,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'region': ?region,
      'securityGroupRuleId': ?securityGroupRuleId,
    };
  }

  factory GetSecurityGroupRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetSecurityGroupRuleArgs(
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetSecurityGroupRuleFilter>(
              map['filters'],
              (value) => GetSecurityGroupRuleFilter.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      region: map['region'] == null ? null : map['region'] as String,
      securityGroupRuleId: map['securityGroupRuleId'] == null
          ? null
          : map['securityGroupRuleId'] as String,
    );
  }
}
