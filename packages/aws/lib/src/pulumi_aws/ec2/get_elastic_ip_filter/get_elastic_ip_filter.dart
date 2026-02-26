// ignore_for_file: unused_element, unnecessary_cast

class GetElasticIpFilter {
  final String name;
  final List<String> values;

  GetElasticIpFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['values'] = values;
    return map;
  }

  factory GetElasticIpFilter.fromMap(Map<String, dynamic> map) {
    return GetElasticIpFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
