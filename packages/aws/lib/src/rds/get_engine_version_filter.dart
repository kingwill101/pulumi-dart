// ignore_for_file: unused_element, unnecessary_cast


class GetEngineVersionFilter {
  final String name;
  final List<String> values;

  /// Creates a new [GetEngineVersionFilter].
  /// [name] Required.
  /// [values] Required.
  GetEngineVersionFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory GetEngineVersionFilter.fromMap(Map<String, dynamic> map) {
    return GetEngineVersionFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

