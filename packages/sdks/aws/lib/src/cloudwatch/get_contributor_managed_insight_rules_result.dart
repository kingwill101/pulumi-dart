// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_contributor_managed_insight_rules_managed_rule.dart';

/// Result data returned by getContributorManagedInsightRules.
class GetContributorManagedInsightRulesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Managed rules that are available for the specified Amazon Web Services resource. See `managed_rules reference` below for details.
  final List<GetContributorManagedInsightRulesManagedRule> managedRules;
  final String region;
  /// If a managed rule is enabled, this is the ARN for the related Amazon Web Services resource.
  final String resourceArn;

  /// Creates a new [GetContributorManagedInsightRulesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [managedRules] Managed rules that are available for the specified Amazon Web Services resource. See `managed_rules reference` below for details.
  /// [region] Required.
  /// [resourceArn] If a managed rule is enabled, this is the ARN for the related Amazon Web Services resource.
  GetContributorManagedInsightRulesResult({
    required this.id,
    required this.managedRules,
    required this.region,
    required this.resourceArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'managedRules': pulumi.Input.encodeList<GetContributorManagedInsightRulesManagedRule, Map<String, dynamic>>(managedRules, (value) => value.toMap()),
      'region': region,
      'resourceArn': resourceArn,
    };
  }

  factory GetContributorManagedInsightRulesResult.fromMap(Map<String, dynamic> map) {
    return GetContributorManagedInsightRulesResult(
      id: map['id'] as String,
      managedRules: pulumi.Input.decodeList<GetContributorManagedInsightRulesManagedRule>(map['managedRules']!, (value) => GetContributorManagedInsightRulesManagedRule.fromMap((value as Map).cast<String, dynamic>())),
      region: map['region'] as String,
      resourceArn: map['resourceArn'] as String,
    );
  }
}

