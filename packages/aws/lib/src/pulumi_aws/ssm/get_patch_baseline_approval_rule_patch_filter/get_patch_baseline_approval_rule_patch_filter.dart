// ignore_for_file: unused_element, unnecessary_cast

class GetPatchBaselineApprovalRulePatchFilter {
  /// Key for the filter.
  final String key;

  /// Value for the filter.
  final List<String> values;

  GetPatchBaselineApprovalRulePatchFilter({
    required this.key,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['values'] = values;
    return map;
  }

  factory GetPatchBaselineApprovalRulePatchFilter.fromMap(
      Map<String, dynamic> map) {
    return GetPatchBaselineApprovalRulePatchFilter(
      key: map['key'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
