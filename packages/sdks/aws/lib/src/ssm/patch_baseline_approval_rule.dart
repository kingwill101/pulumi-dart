// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'patch_baseline_approval_rule_patch_filter.dart';

class PatchBaselineApprovalRule {
  /// Number of days after the release date of each patch matched by the rule the patch is marked as approved in the patch baseline. Valid Range: 0 to 360. Conflicts with `approveUntilDate`.
  final pulumi.Input<int?>? approveAfterDays;
  /// Cutoff date for auto approval of released patches. Any patches released on or before this date are installed automatically. Date is formatted as `YYYY-MM-DD`. Conflicts with `approveAfterDays`
  final pulumi.Input<String?>? approveUntilDate;
  /// Compliance level for patches approved by this rule. Valid values are `CRITICAL`, `HIGH`, `MEDIUM`, `LOW`, `INFORMATIONAL`, and `UNSPECIFIED`. The default value is `UNSPECIFIED`.
  final pulumi.Input<String?>? complianceLevel;
  /// Boolean enabling the application of non-security updates. The default value is `false`. Valid for Linux instances only.
  final pulumi.Input<bool?>? enableNonSecurity;
  /// Patch filter group that defines the criteria for the rule. Up to 5 patch filters can be specified per approval rule using Key/Value pairs. Valid combinations of these Keys and the `operatingSystem` value can be found in the [SSM DescribePatchProperties API Reference](https://docs.aws.amazon.com/systems-manager/latest/APIReference/API_DescribePatchProperties.html). Valid Values are exact values for the patch property given as the key, or a wildcard `*`, which matches all values. `PATCH_SET` defaults to `OS` if unspecified
  final pulumi.Input<List<PatchBaselineApprovalRulePatchFilter>> patchFilters;

  /// Creates a new [PatchBaselineApprovalRule].
  /// [approveAfterDays] Number of days after the release date of each patch matched by the rule the patch is marked as approved in the patch baseline. Valid Range: 0 to 360. Conflicts with `approveUntilDate`.
  /// [approveUntilDate] Cutoff date for auto approval of released patches. Any patches released on or before this date are installed automatically. Date is formatted as `YYYY-MM-DD`. Conflicts with `approveAfterDays`
  /// [complianceLevel] Compliance level for patches approved by this rule. Valid values are `CRITICAL`, `HIGH`, `MEDIUM`, `LOW`, `INFORMATIONAL`, and `UNSPECIFIED`. The default value is `UNSPECIFIED`.
  /// [enableNonSecurity] Boolean enabling the application of non-security updates. The default value is `false`. Valid for Linux instances only.
  /// [patchFilters] Patch filter group that defines the criteria for the rule. Up to 5 patch filters can be specified per approval rule using Key/Value pairs. Valid combinations of these Keys and the `operatingSystem` value can be found in the [SSM DescribePatchProperties API Reference](https://docs.aws.amazon.com/systems-manager/latest/APIReference/API_DescribePatchProperties.html). Valid Values are exact values for the patch property given as the key, or a wildcard `*`, which matches all values. `PATCH_SET` defaults to `OS` if unspecified
  const PatchBaselineApprovalRule({
    this.approveAfterDays,
    this.approveUntilDate,
    this.complianceLevel,
    this.enableNonSecurity,
    required this.patchFilters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approveAfterDays': ?approveAfterDays,
      'approveUntilDate': ?approveUntilDate,
      'complianceLevel': ?complianceLevel,
      'enableNonSecurity': ?enableNonSecurity,
      'patchFilters': pulumi.Input.mapInputValue<List<PatchBaselineApprovalRulePatchFilter>, List<Map<String, dynamic>>>(patchFilters, (value) => pulumi.Input.encodeList<PatchBaselineApprovalRulePatchFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PatchBaselineApprovalRule.fromMap(Map<String, dynamic> map) {
    return PatchBaselineApprovalRule(
      approveAfterDays: (() { final guardedValue = map['approveAfterDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      approveUntilDate: (() { final guardedValue = map['approveUntilDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      complianceLevel: (() { final guardedValue = map['complianceLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableNonSecurity: (() { final guardedValue = map['enableNonSecurity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      patchFilters: pulumi.Input.fromValue(pulumi.Input.decodeList<PatchBaselineApprovalRulePatchFilter>(map['patchFilters']!, (value) => PatchBaselineApprovalRulePatchFilter.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
