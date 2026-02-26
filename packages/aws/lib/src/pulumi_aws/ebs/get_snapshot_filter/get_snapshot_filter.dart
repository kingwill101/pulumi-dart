// ignore_for_file: unused_element, unnecessary_cast

class GetSnapshotFilter {
  final String name;
  final List<String> values;

  GetSnapshotFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['values'] = values;
    return map;
  }

  factory GetSnapshotFilter.fromMap(Map<String, dynamic> map) {
    return GetSnapshotFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
