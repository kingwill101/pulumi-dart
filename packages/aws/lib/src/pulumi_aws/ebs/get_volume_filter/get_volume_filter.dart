// ignore_for_file: unused_element, unnecessary_cast

class GetVolumeFilter {
  final String name;
  final List<String> values;

  GetVolumeFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['values'] = values;
    return map;
  }

  factory GetVolumeFilter.fromMap(Map<String, dynamic> map) {
    return GetVolumeFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
