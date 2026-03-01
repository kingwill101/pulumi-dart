// ignore_for_file: unused_element, unnecessary_cast

class GetAmiIdsFilter {
  /// Name of the DescribeAutoScalingGroup filter. The recommended values are: `tag-key`, `tag-value`, and `tag:<tag name>`
  final String name;

  /// Value of the filter.
  final List<String> values;

  /// Creates a new [GetAmiIdsFilter].
  /// [name] Name of the DescribeAutoScalingGroup filter. The recommended values are: `tag-key`, `tag-value`, and `tag:<tag name>`
  /// [values] Value of the filter.
  GetAmiIdsFilter({required this.name, required this.values});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'values': values};
  }

  factory GetAmiIdsFilter.fromMap(Map<String, dynamic> map) {
    return GetAmiIdsFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
