// ignore_for_file: unused_element, unnecessary_cast

class GetSecurityGroupsFilter {
  final String name;
  final List<String> values;

  GetSecurityGroupsFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['values'] = values;
    return map;
  }

  factory GetSecurityGroupsFilter.fromMap(Map<String, dynamic> map) {
    return GetSecurityGroupsFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
