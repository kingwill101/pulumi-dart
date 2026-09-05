// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_contributor_managed_insight_rules_managed_rule.dart';

/// Result data returned by getContributorManagedInsightRules.
class GetContributorManagedInsightRulesResult {
  /// Managed rules that are available for the specified Amazon Web Services resource. See `managedRules reference` below for details.
  final List<GetContributorManagedInsightRulesManagedRule>? managedRules;
  final String? region;
  /// If a managed rule is enabled, this is the ARN for the related Amazon Web Services resource.
  final String? resourceArn;

  /// Creates a new [GetContributorManagedInsightRulesResult].
  /// [managedRules] Managed rules that are available for the specified Amazon Web Services resource. See `managedRules reference` below for details.
  /// [region] Optional.
  /// [resourceArn] If a managed rule is enabled, this is the ARN for the related Amazon Web Services resource.
  const GetContributorManagedInsightRulesResult({
    this.managedRules,
    this.region,
    this.resourceArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedRules': ?(() { final guardedValue = managedRules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetContributorManagedInsightRulesManagedRule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'region': ?region,
      'resourceArn': ?resourceArn,
    };
  }

  factory GetContributorManagedInsightRulesResult.fromMap(Map<String, dynamic> map) {
    return GetContributorManagedInsightRulesResult(
      managedRules: (() { final guardedValue = map['managedRules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetContributorManagedInsightRulesManagedRule>(guardedValue, (value) => GetContributorManagedInsightRulesManagedRule.fromMap((value as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceArn: (() { final guardedValue = map['resourceArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
