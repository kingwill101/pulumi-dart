// ignore_for_file: unused_element, unnecessary_cast

class GetSnapshotIdsFilter {
  final String name;
  final List<String> values;

  /// Creates a new [GetSnapshotIdsFilter].
  /// [name] Required.
  /// [values] Required.
  GetSnapshotIdsFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['values'] = values;
    return map;
  }

  factory GetSnapshotIdsFilter.fromMap(Map<String, dynamic> map) {
    return GetSnapshotIdsFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
