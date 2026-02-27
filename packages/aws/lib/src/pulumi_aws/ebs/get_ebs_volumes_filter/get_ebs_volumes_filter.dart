// ignore_for_file: unused_element, unnecessary_cast

class GetEbsVolumesFilter {
  /// Name of the field to filter by, as defined by
  /// [the underlying AWS API](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeVolumes.html).
  /// For example, if matching against the `size` filter, use:
  final String name;

  /// Set of values that are accepted for the given field.
  /// EBS Volume IDs will be selected if any one of the given values match.
  final List<String> values;

  GetEbsVolumesFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['values'] = values;
    return map;
  }

  factory GetEbsVolumesFilter.fromMap(Map<String, dynamic> map) {
    return GetEbsVolumesFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
