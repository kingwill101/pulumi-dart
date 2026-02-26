// ignore_for_file: unused_element, unnecessary_cast

class GetRouteTableFilter2 {
  /// Name of the filter.
  final String name;

  /// List of one or more values for the filter.
  final List<String> values;

  GetRouteTableFilter2({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['values'] = values;
    return map;
  }

  factory GetRouteTableFilter2.fromMap(Map<String, dynamic> map) {
    return GetRouteTableFilter2(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
