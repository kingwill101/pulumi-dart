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
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory GetAmiIdsFilter.fromMap(Map<String, dynamic> map) {
    return GetAmiIdsFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

