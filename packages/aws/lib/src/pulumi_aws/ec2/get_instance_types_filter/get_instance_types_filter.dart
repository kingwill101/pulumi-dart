// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceTypesFilter {
  /// Name of the filter.
  final String name;

  /// List of one or more values for the filter.
  final List<String> values;

  GetInstanceTypesFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['values'] = values;
    return map;
  }

  factory GetInstanceTypesFilter.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypesFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
