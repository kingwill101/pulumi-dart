// ignore_for_file: unused_element, unnecessary_cast

class GetAmiIdsFilter2 {
  final String name;
  final List<String> values;

  GetAmiIdsFilter2({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['values'] = values;
    return map;
  }

  factory GetAmiIdsFilter2.fromMap(Map<String, dynamic> map) {
    return GetAmiIdsFilter2(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
