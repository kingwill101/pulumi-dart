// ignore_for_file: unused_element, unnecessary_cast

class PatchBaselineApprovalRulePatchFilter {
  final String key;
  final List<String> values;

  PatchBaselineApprovalRulePatchFilter({
    required this.key,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['values'] = values;
    return map;
  }

  factory PatchBaselineApprovalRulePatchFilter.fromMap(
      Map<String, dynamic> map) {
    return PatchBaselineApprovalRulePatchFilter(
      key: map['key'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
