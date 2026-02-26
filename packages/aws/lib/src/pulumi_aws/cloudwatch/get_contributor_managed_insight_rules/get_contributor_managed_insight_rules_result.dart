// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_contributor_managed_insight_rules_managed_rule/get_contributor_managed_insight_rules_managed_rule.dart';

/// Result data returned by getContributorManagedInsightRules.
class GetContributorManagedInsightRulesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Managed rules that are available for the specified Amazon Web Services resource. See <span pulumi-lang-nodejs="`managedRules " pulumi-lang-dotnet="`ManagedRules " pulumi-lang-go="`managedRules " pulumi-lang-python="`managed_rules " pulumi-lang-yaml="`managedRules " pulumi-lang-java="`managedRules ">`managed_rules </span>reference` below for details.
  final List<GetContributorManagedInsightRulesManagedRule> managedRules;
  final String region;

  /// If a managed rule is enabled, this is the ARN for the related Amazon Web Services resource.
  final String resourceArn;

  GetContributorManagedInsightRulesResult({
    required this.id,
    required this.managedRules,
    required this.region,
    required this.resourceArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['managedRules'] = Input.encodeList<
        GetContributorManagedInsightRulesManagedRule,
        Map<String, dynamic>>(managedRules, (value) => value.toMap());
    map['region'] = region;
    map['resourceArn'] = resourceArn;
    return map;
  }

  factory GetContributorManagedInsightRulesResult.fromMap(
      Map<String, dynamic> map) {
    return GetContributorManagedInsightRulesResult(
      id: map['id'] as String,
      managedRules:
          Input.decodeList<GetContributorManagedInsightRulesManagedRule>(
              map['managedRules'],
              (value) => GetContributorManagedInsightRulesManagedRule.fromMap(
                  (value as Map).cast<String, dynamic>())),
      region: map['region'] as String,
      resourceArn: map['resourceArn'] as String,
    );
  }
}
