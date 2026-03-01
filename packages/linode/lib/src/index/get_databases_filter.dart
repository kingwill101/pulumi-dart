// ignore_for_file: unused_element, unnecessary_cast


class GetDatabasesFilter {
  /// The method to match the field by. (`exact`, `regex`, `substring`; default `exact`)
  final String? matchBy;
  /// The name of the field to filter by.
  final String name;
  /// A list of values for the filter to allow. These values should all be in string form.
  final List<String> values;

  /// Creates a new [GetDatabasesFilter].
  /// [matchBy] The method to match the field by. (`exact`, `regex`, `substring`; default `exact`)
  /// [name] The name of the field to filter by.
  /// [values] A list of values for the filter to allow. These values should all be in string form.
  GetDatabasesFilter({
    this.matchBy,
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchBy': ?matchBy,
      'name': name,
      'values': values,
    };
  }

  factory GetDatabasesFilter.fromMap(Map<String, dynamic> map) {
    return GetDatabasesFilter(
      matchBy: map['matchBy'] == null ? null : map['matchBy'] as String,
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

