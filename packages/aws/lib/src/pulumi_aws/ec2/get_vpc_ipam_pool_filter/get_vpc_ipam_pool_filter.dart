// ignore_for_file: unused_element, unnecessary_cast

class GetVpcIpamPoolFilter {
  /// The name of the filter. Filter names are case-sensitive.
  final String name;

  /// The filter values. Filter values are case-sensitive.
  final List<String> values;

  GetVpcIpamPoolFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['values'] = values;
    return map;
  }

  factory GetVpcIpamPoolFilter.fromMap(Map<String, dynamic> map) {
    return GetVpcIpamPoolFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
