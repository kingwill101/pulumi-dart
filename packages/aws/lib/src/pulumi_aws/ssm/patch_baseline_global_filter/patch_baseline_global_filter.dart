// ignore_for_file: unused_element, unnecessary_cast

class PatchBaselineGlobalFilter {
  final String key;
  final List<String> values;

  PatchBaselineGlobalFilter({
    required this.key,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['values'] = values;
    return map;
  }

  factory PatchBaselineGlobalFilter.fromMap(Map<String, dynamic> map) {
    return PatchBaselineGlobalFilter(
      key: map['key'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
