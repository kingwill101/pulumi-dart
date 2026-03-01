// ignore_for_file: unused_element, unnecessary_cast

class GetSnapshotIdsFilter {
  final String name;
  final List<String> values;

  /// Creates a new [GetSnapshotIdsFilter].
  /// [name] Required.
  /// [values] Required.
  GetSnapshotIdsFilter({required this.name, required this.values});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'values': values};
  }

  factory GetSnapshotIdsFilter.fromMap(Map<String, dynamic> map) {
    return GetSnapshotIdsFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
