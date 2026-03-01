// ignore_for_file: unused_element, unnecessary_cast


class PatchBaselineGlobalFilter {
  final String key;
  final List<String> values;

  /// Creates a new [PatchBaselineGlobalFilter].
  /// [key] Required.
  /// [values] Required.
  PatchBaselineGlobalFilter({
    required this.key,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'values': values,
    };
  }

  factory PatchBaselineGlobalFilter.fromMap(Map<String, dynamic> map) {
    return PatchBaselineGlobalFilter(
      key: map['key'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

