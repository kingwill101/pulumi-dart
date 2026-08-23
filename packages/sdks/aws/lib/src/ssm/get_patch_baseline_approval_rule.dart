// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_patch_baseline_approval_rule_patch_filter.dart';

class GetPatchBaselineApprovalRule {
  /// Number of days after the release date of each patch matched by the rule the patch is marked as approved in the patch baseline.
  final pulumi.Input<int> approveAfterDays;
  /// Cutoff date for auto approval of released patches. Any patches released on or before this date are installed automatically. Date is formatted as `YYYY-MM-DD`. Conflicts with `approveAfterDays`
  final pulumi.Input<String> approveUntilDate;
  /// Compliance level for patches approved by this rule.
  final pulumi.Input<String> complianceLevel;
  /// Boolean enabling the application of non-security updates.
  final pulumi.Input<bool> enableNonSecurity;
  /// Patch filter group that defines the criteria for the rule.
  final pulumi.Input<List<GetPatchBaselineApprovalRulePatchFilter>> patchFilters;

  /// Creates a new [GetPatchBaselineApprovalRule].
  /// [approveAfterDays] Number of days after the release date of each patch matched by the rule the patch is marked as approved in the patch baseline.
  /// [approveUntilDate] Cutoff date for auto approval of released patches. Any patches released on or before this date are installed automatically. Date is formatted as `YYYY-MM-DD`. Conflicts with `approveAfterDays`
  /// [complianceLevel] Compliance level for patches approved by this rule.
  /// [enableNonSecurity] Boolean enabling the application of non-security updates.
  /// [patchFilters] Patch filter group that defines the criteria for the rule.
  const GetPatchBaselineApprovalRule({
    required this.approveAfterDays,
    required this.approveUntilDate,
    required this.complianceLevel,
    required this.enableNonSecurity,
    required this.patchFilters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approveAfterDays': approveAfterDays,
      'approveUntilDate': approveUntilDate,
      'complianceLevel': complianceLevel,
      'enableNonSecurity': enableNonSecurity,
      'patchFilters': pulumi.Input.mapInputValue<List<GetPatchBaselineApprovalRulePatchFilter>, List<Map<String, dynamic>>>(patchFilters, (value) => pulumi.Input.encodeList<GetPatchBaselineApprovalRulePatchFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetPatchBaselineApprovalRule.fromMap(Map<String, dynamic> map) {
    return GetPatchBaselineApprovalRule(
      approveAfterDays: pulumi.Input.fromValue(map['approveAfterDays'] as int),
      approveUntilDate: pulumi.Input.fromValue(map['approveUntilDate'] as String),
      complianceLevel: pulumi.Input.fromValue(map['complianceLevel'] as String),
      enableNonSecurity: pulumi.Input.fromValue(map['enableNonSecurity'] as bool),
      patchFilters: pulumi.Input.fromValue(pulumi.Input.decodeList<GetPatchBaselineApprovalRulePatchFilter>(map['patchFilters']!, (value) => GetPatchBaselineApprovalRulePatchFilter.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
