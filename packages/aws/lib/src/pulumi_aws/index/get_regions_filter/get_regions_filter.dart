// ignore_for_file: unused_element, unnecessary_cast

class GetRegionsFilter {
  /// Name of the filter field. Valid values can be found in the [describe-regions AWS CLI Reference][1].
  final String name;

  /// Set of values that are accepted for the given filter field. Results will be selected if any given value matches.
  final List<String> values;

  GetRegionsFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['values'] = values;
    return map;
  }

  factory GetRegionsFilter.fromMap(Map<String, dynamic> map) {
    return GetRegionsFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
