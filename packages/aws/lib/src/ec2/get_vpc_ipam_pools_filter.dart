// ignore_for_file: unused_element, unnecessary_cast


class GetVpcIpamPoolsFilter {
  /// The name of the filter. Filter names are case-sensitive.
  final String name;
  /// The filter values. Filter values are case-sensitive.
  final List<String> values;

  /// Creates a new [GetVpcIpamPoolsFilter].
  /// [name] The name of the filter. Filter names are case-sensitive.
  /// [values] The filter values. Filter values are case-sensitive.
  GetVpcIpamPoolsFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory GetVpcIpamPoolsFilter.fromMap(Map<String, dynamic> map) {
    return GetVpcIpamPoolsFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

