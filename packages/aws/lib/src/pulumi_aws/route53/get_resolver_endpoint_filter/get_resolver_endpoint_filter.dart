// ignore_for_file: unused_element, unnecessary_cast

class GetResolverEndpointFilter {
  final String name;
  final List<String> values;

  GetResolverEndpointFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['values'] = values;
    return map;
  }

  factory GetResolverEndpointFilter.fromMap(Map<String, dynamic> map) {
    return GetResolverEndpointFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
