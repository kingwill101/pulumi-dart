// ignore_for_file: unused_element, unnecessary_cast


class GetNetworkInterfaceFilter {
  final String name;
  final List<String> values;

  /// Creates a new [GetNetworkInterfaceFilter].
  /// [name] Required.
  /// [values] Required.
  GetNetworkInterfaceFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory GetNetworkInterfaceFilter.fromMap(Map<String, dynamic> map) {
    return GetNetworkInterfaceFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

