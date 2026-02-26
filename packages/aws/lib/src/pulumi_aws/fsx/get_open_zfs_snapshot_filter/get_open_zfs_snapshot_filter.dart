// ignore_for_file: unused_element, unnecessary_cast

class GetOpenZfsSnapshotFilter {
  /// Name of the snapshot.
  final String name;
  final List<String> values;

  GetOpenZfsSnapshotFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['values'] = values;
    return map;
  }

  factory GetOpenZfsSnapshotFilter.fromMap(Map<String, dynamic> map) {
    return GetOpenZfsSnapshotFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
