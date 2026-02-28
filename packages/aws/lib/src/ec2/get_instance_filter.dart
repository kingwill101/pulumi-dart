// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceFilter {
  /// Name of the filter.
  /// For a full reference of filter names, see [describe-instances in the AWS CLI reference][1].
  final String name;

  /// One or more values to match.
  final List<String> values;

  /// Creates a new [GetInstanceFilter].
  /// [name] Name of the filter.
  /// [values] One or more values to match.
  GetInstanceFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['values'] = values;
    return map;
  }

  factory GetInstanceFilter.fromMap(Map<String, dynamic> map) {
    return GetInstanceFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
