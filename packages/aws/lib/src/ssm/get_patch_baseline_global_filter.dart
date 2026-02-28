// ignore_for_file: unused_element, unnecessary_cast

class GetPatchBaselineGlobalFilter {
  /// Key for the filter.
  final String key;

  /// Value for the filter.
  final List<String> values;

  /// Creates a new [GetPatchBaselineGlobalFilter].
  /// [key] Key for the filter.
  /// [values] Value for the filter.
  GetPatchBaselineGlobalFilter({
    required this.key,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['values'] = values;
    return map;
  }

  factory GetPatchBaselineGlobalFilter.fromMap(Map<String, dynamic> map) {
    return GetPatchBaselineGlobalFilter(
      key: map['key'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
