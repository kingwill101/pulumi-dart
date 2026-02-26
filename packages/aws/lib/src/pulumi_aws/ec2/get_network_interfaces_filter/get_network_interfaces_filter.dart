// ignore_for_file: unused_element, unnecessary_cast

class GetNetworkInterfacesFilter {
  /// Name of the field to filter by, as defined by
  /// [the underlying AWS API](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeNetworkInterfaces.html).
  final String name;

  /// Set of values that are accepted for the given field.
  final List<String> values;

  GetNetworkInterfacesFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['values'] = values;
    return map;
  }

  factory GetNetworkInterfacesFilter.fromMap(Map<String, dynamic> map) {
    return GetNetworkInterfacesFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
