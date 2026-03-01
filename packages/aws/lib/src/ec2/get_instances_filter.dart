// ignore_for_file: unused_element, unnecessary_cast


class GetInstancesFilter {
  /// Name of the filter.
  /// For a full reference of filter names, see [describe-instances in the AWS CLI reference][1].
  final String name;
  /// One or more values to match.
  final List<String> values;

  /// Creates a new [GetInstancesFilter].
  /// [name] Name of the filter.
  /// [values] One or more values to match.
  GetInstancesFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory GetInstancesFilter.fromMap(Map<String, dynamic> map) {
    return GetInstancesFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

