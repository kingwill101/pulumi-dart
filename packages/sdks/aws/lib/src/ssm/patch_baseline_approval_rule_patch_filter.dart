// ignore_for_file: unused_element, unnecessary_cast


class PatchBaselineApprovalRulePatchFilter {
  final String key;
  final List<String> values;

  /// Creates a new [PatchBaselineApprovalRulePatchFilter].
  /// [key] Required.
  /// [values] Required.
  PatchBaselineApprovalRulePatchFilter({
    required this.key,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'values': values,
    };
  }

  factory PatchBaselineApprovalRulePatchFilter.fromMap(Map<String, dynamic> map) {
    return PatchBaselineApprovalRulePatchFilter(
      key: map['key'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

