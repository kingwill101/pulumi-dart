// ignore_for_file: unused_element, unnecessary_cast


class GetCustomerGatewayFilter {
  final String name;
  final List<String> values;

  /// Creates a new [GetCustomerGatewayFilter].
  /// [name] Required.
  /// [values] Required.
  GetCustomerGatewayFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory GetCustomerGatewayFilter.fromMap(Map<String, dynamic> map) {
    return GetCustomerGatewayFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

