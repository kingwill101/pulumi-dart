// ignore_for_file: unused_element, unnecessary_cast

class GetLocalGatewayVirtualInterfaceFilter {
  /// Name of the filter.
  final String name;

  /// List of one or more values for the filter.
  final List<String> values;

  GetLocalGatewayVirtualInterfaceFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['values'] = values;
    return map;
  }

  factory GetLocalGatewayVirtualInterfaceFilter.fromMap(
      Map<String, dynamic> map) {
    return GetLocalGatewayVirtualInterfaceFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
