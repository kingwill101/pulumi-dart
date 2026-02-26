// ignore_for_file: unused_element, unnecessary_cast

class GetEngineVersionFilter {
  final String name;
  final List<String> values;

  GetEngineVersionFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['values'] = values;
    return map;
  }

  factory GetEngineVersionFilter.fromMap(Map<String, dynamic> map) {
    return GetEngineVersionFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
