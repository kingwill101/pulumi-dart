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
    final map = <String, dynamic>{};
    map['name'] = name;
    map['values'] = values;
    return map;
  }

  factory GetVpcIpamPoolsFilter.fromMap(Map<String, dynamic> map) {
    return GetVpcIpamPoolsFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
