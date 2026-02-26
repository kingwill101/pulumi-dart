// ignore_for_file: unused_element, unnecessary_cast

class GetNetworkInterfaceFilter {
  final String name;
  final List<String> values;

  GetNetworkInterfaceFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['values'] = values;
    return map;
  }

  factory GetNetworkInterfaceFilter.fromMap(Map<String, dynamic> map) {
    return GetNetworkInterfaceFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
