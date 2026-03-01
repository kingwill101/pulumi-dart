// ignore_for_file: unused_element, unnecessary_cast

class GetLocalGatewayVirtualInterfaceGroupsFilter {
  /// Name of the filter.
  final String name;

  /// List of one or more values for the filter.
  final List<String> values;

  /// Creates a new [GetLocalGatewayVirtualInterfaceGroupsFilter].
  /// [name] Name of the filter.
  /// [values] List of one or more values for the filter.
  GetLocalGatewayVirtualInterfaceGroupsFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'values': values};
  }

  factory GetLocalGatewayVirtualInterfaceGroupsFilter.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetLocalGatewayVirtualInterfaceGroupsFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
