// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetOpenZfsSnapshotFilter {
  /// Name of the field to filter by.
  final pulumi.Input<String> name;
  /// Set of values that are used to filter. A snapshot is returned only if it matches all of the specified filters.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetOpenZfsSnapshotFilter].
  /// [name] Name of the field to filter by.
  /// [values] Set of values that are used to filter. A snapshot is returned only if it matches all of the specified filters.
  const GetOpenZfsSnapshotFilter({
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
      name: pulumi.Input.fromValue(map['name'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
