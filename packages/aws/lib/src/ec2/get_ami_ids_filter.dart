// ignore_for_file: unused_element, unnecessary_cast

class GetAmiIdsFilter {
  final String name;
  final List<String> values;

  /// Creates a new [GetAmiIdsFilter].
  /// [name] Required.
  /// [values] Required.
  GetAmiIdsFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['values'] = values;
    return map;
  }

  factory GetAmiIdsFilter.fromMap(Map<String, dynamic> map) {
    return GetAmiIdsFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
