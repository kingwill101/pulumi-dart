// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_patch_baseline_approval_rule_patch_filter/get_patch_baseline_approval_rule_patch_filter.dart';

class GetPatchBaselineApprovalRule {
  /// Number of days after the release date of each patch matched by the rule the patch is marked as approved in the patch baseline.
  final int approveAfterDays;

  /// Cutoff date for auto approval of released patches. Any patches released on or before this date are installed automatically. Date is formatted as `YYYY-MM-DD`. Conflicts with <span pulumi-lang-nodejs="`approveAfterDays`" pulumi-lang-dotnet="`ApproveAfterDays`" pulumi-lang-go="`approveAfterDays`" pulumi-lang-python="`approve_after_days`" pulumi-lang-yaml="`approveAfterDays`" pulumi-lang-java="`approveAfterDays`">`approve_after_days`</span>
  final String approveUntilDate;

  /// Compliance level for patches approved by this rule.
  final String complianceLevel;

  /// Boolean enabling the application of non-security updates.
  final bool enableNonSecurity;

  /// Patch filter group that defines the criteria for the rule.
  final List<GetPatchBaselineApprovalRulePatchFilter> patchFilters;

  GetPatchBaselineApprovalRule({
    required this.approveAfterDays,
    required this.approveUntilDate,
    required this.complianceLevel,
    required this.enableNonSecurity,
    required this.patchFilters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['approveAfterDays'] = approveAfterDays;
    map['approveUntilDate'] = approveUntilDate;
    map['complianceLevel'] = complianceLevel;
    map['enableNonSecurity'] = enableNonSecurity;
    map['patchFilters'] = Input.encodeList<
        GetPatchBaselineApprovalRulePatchFilter,
        Map<String, dynamic>>(patchFilters, (value) => value.toMap());
    return map;
  }

  factory GetPatchBaselineApprovalRule.fromMap(Map<String, dynamic> map) {
    return GetPatchBaselineApprovalRule(
      approveAfterDays: map['approveAfterDays'] as int,
      approveUntilDate: map['approveUntilDate'] as String,
      complianceLevel: map['complianceLevel'] as String,
      enableNonSecurity: map['enableNonSecurity'] as bool,
      patchFilters: Input.decodeList<GetPatchBaselineApprovalRulePatchFilter>(
          map['patchFilters'],
          (value) => GetPatchBaselineApprovalRulePatchFilter.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
