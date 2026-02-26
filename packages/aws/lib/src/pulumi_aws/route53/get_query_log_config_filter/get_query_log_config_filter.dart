// ignore_for_file: unused_element, unnecessary_cast

class GetQueryLogConfigFilter {
  /// The name of the query logging configuration.
  final String name;
  final List<String> values;

  GetQueryLogConfigFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['values'] = values;
    return map;
  }

  factory GetQueryLogConfigFilter.fromMap(Map<String, dynamic> map) {
    return GetQueryLogConfigFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
