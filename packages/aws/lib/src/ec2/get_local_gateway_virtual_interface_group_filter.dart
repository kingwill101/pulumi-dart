// ignore_for_file: unused_element, unnecessary_cast


class GetLocalGatewayVirtualInterfaceGroupFilter {
  /// Name of the filter.
  final String name;
  /// List of one or more values for the filter.
  final List<String> values;

  /// Creates a new [GetLocalGatewayVirtualInterfaceGroupFilter].
  /// [name] Name of the filter.
  /// [values] List of one or more values for the filter.
  GetLocalGatewayVirtualInterfaceGroupFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory GetLocalGatewayVirtualInterfaceGroupFilter.fromMap(Map<String, dynamic> map) {
    return GetLocalGatewayVirtualInterfaceGroupFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

