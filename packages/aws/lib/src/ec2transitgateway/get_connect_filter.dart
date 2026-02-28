// ignore_for_file: unused_element, unnecessary_cast

class GetConnectFilter {
  /// Name of the filter.
  final String name;

  /// List of one or more values for the filter.
  final List<String> values;

  /// Creates a new [GetConnectFilter].
  /// [name] Name of the filter.
  /// [values] List of one or more values for the filter.
  GetConnectFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['values'] = values;
    return map;
  }

  factory GetConnectFilter.fromMap(Map<String, dynamic> map) {
    return GetConnectFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
