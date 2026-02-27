// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../patch_baseline_approval_rule_patch_filter/patch_baseline_approval_rule_patch_filter.dart';

class PatchBaselineApprovalRule {
  /// Number of days after the release date of each patch matched by the rule the patch is marked as approved in the patch baseline. Valid Range: 0 to 360. Conflicts with `approve_until_date`.
  final int? approveAfterDays;

  /// Cutoff date for auto approval of released patches. Any patches released on or before this date are installed automatically. Date is formatted as `YYYY-MM-DD`. Conflicts with `approve_after_days`
  final String? approveUntilDate;

  /// Compliance level for patches approved by this rule. Valid values are `CRITICAL`, `HIGH`, `MEDIUM`, `LOW`, `INFORMATIONAL`, and `UNSPECIFIED`. The default value is `UNSPECIFIED`.
  final String? complianceLevel;

  /// Boolean enabling the application of non-security updates. The default value is `false`. Valid for Linux instances only.
  final bool? enableNonSecurity;

  /// Patch filter group that defines the criteria for the rule. Up to 5 patch filters can be specified per approval rule using Key/Value pairs. Valid combinations of these Keys and the `operating_system` value can be found in the [SSM DescribePatchProperties API Reference](https://docs.aws.amazon.com/systems-manager/latest/APIReference/API_DescribePatchProperties.html). Valid Values are exact values for the patch property given as the key, or a wildcard `*`, which matches all values. `PATCH_SET` defaults to `OS` if unspecified
  final List<PatchBaselineApprovalRulePatchFilter> patchFilters;

  PatchBaselineApprovalRule({
    this.approveAfterDays,
    this.approveUntilDate,
    this.complianceLevel,
    this.enableNonSecurity,
    required this.patchFilters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final approveAfterDaysValue = approveAfterDays;
    if (approveAfterDaysValue != null) {
      map['approveAfterDays'] = approveAfterDaysValue;
    }
    final approveUntilDateValue = approveUntilDate;
    if (approveUntilDateValue != null) {
      map['approveUntilDate'] = approveUntilDateValue;
    }
    final complianceLevelValue = complianceLevel;
    if (complianceLevelValue != null) {
      map['complianceLevel'] = complianceLevelValue;
    }
    final enableNonSecurityValue = enableNonSecurity;
    if (enableNonSecurityValue != null) {
      map['enableNonSecurity'] = enableNonSecurityValue;
    }
    map['patchFilters'] = Input.encodeList<PatchBaselineApprovalRulePatchFilter,
        Map<String, dynamic>>(patchFilters, (value) => value.toMap());
    return map;
  }

  factory PatchBaselineApprovalRule.fromMap(Map<String, dynamic> map) {
    return PatchBaselineApprovalRule(
      approveAfterDays: map['approveAfterDays'] == null
          ? null
          : map['approveAfterDays'] as int,
      approveUntilDate: map['approveUntilDate'] == null
          ? null
          : map['approveUntilDate'] as String,
      complianceLevel: map['complianceLevel'] == null
          ? null
          : map['complianceLevel'] as String,
      enableNonSecurity: map['enableNonSecurity'] == null
          ? null
          : map['enableNonSecurity'] as bool,
      patchFilters: Input.decodeList<PatchBaselineApprovalRulePatchFilter>(
          map['patchFilters'],
          (value) => PatchBaselineApprovalRulePatchFilter.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
