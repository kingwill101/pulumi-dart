// ignore_for_file: unused_element, unnecessary_cast


class GetOpenZfsSnapshotFilter {
  /// Name of the snapshot.
  final String name;
  final List<String> values;

  /// Creates a new [GetOpenZfsSnapshotFilter].
  /// [name] Name of the snapshot.
  /// [values] Required.
  GetOpenZfsSnapshotFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory GetOpenZfsSnapshotFilter.fromMap(Map<String, dynamic> map) {
    return GetOpenZfsSnapshotFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

