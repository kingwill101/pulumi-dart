// ignore_for_file: unused_element, unnecessary_cast


class GetResourceShareFilter {
  /// Name of the tag key to filter on.
  final String name;
  /// Value of the tag key.
  final List<String> values;

  /// Creates a new [GetResourceShareFilter].
  /// [name] Name of the tag key to filter on.
  /// [values] Value of the tag key.
  GetResourceShareFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory GetResourceShareFilter.fromMap(Map<String, dynamic> map) {
    return GetResourceShareFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

