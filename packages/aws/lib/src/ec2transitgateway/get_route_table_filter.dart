// ignore_for_file: unused_element, unnecessary_cast

class GetRouteTableFilter {
  /// Name of the filter.
  final String name;

  /// List of one or more values for the filter.
  final List<String> values;

  /// Creates a new [GetRouteTableFilter].
  /// [name] Name of the filter.
  /// [values] List of one or more values for the filter.
  GetRouteTableFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['values'] = values;
    return map;
  }

  factory GetRouteTableFilter.fromMap(Map<String, dynamic> map) {
    return GetRouteTableFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
