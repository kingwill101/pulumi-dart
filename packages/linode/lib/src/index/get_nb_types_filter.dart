// ignore_for_file: unused_element, unnecessary_cast


class GetNbTypesFilter {
  /// The type of comparison to use for this filter.
  final String? matchBy;
  /// The name of the attribute to filter on.
  final String name;
  /// The value(s) to be used in the filter.
  final List<String> values;

  /// Creates a new [GetNbTypesFilter].
  /// [matchBy] The type of comparison to use for this filter.
  /// [name] The name of the attribute to filter on.
  /// [values] The value(s) to be used in the filter.
  GetNbTypesFilter({
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

  factory GetNbTypesFilter.fromMap(Map<String, dynamic> map) {
    return GetNbTypesFilter(
      matchBy: map['matchBy'] == null ? null : map['matchBy'] as String,
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

