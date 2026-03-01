// ignore_for_file: unused_element, unnecessary_cast

class GetPatchBaselineApprovalRulePatchFilter {
  /// Key for the filter.
  final String key;

  /// Value for the filter.
  final List<String> values;

  /// Creates a new [GetPatchBaselineApprovalRulePatchFilter].
  /// [key] Key for the filter.
  /// [values] Value for the filter.
  GetPatchBaselineApprovalRulePatchFilter({
    required this.key,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': key, 'values': values};
  }

  factory GetPatchBaselineApprovalRulePatchFilter.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetPatchBaselineApprovalRulePatchFilter(
      key: map['key'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
