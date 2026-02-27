// ignore_for_file: unused_element, unnecessary_cast

class GetRouteTableFilterEc2transitgateway {
  /// Name of the filter.
  final String name;

  /// List of one or more values for the filter.
  final List<String> values;

  GetRouteTableFilterEc2transitgateway({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['values'] = values;
    return map;
  }

  factory GetRouteTableFilterEc2transitgateway.fromMap(
      Map<String, dynamic> map) {
    return GetRouteTableFilterEc2transitgateway(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
