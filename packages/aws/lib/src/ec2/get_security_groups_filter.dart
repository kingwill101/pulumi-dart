// ignore_for_file: unused_element, unnecessary_cast

class GetSecurityGroupsFilter {
  final String name;
  final List<String> values;

  /// Creates a new [GetSecurityGroupsFilter].
  /// [name] Required.
  /// [values] Required.
  GetSecurityGroupsFilter({required this.name, required this.values});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'values': values};
  }

  factory GetSecurityGroupsFilter.fromMap(Map<String, dynamic> map) {
    return GetSecurityGroupsFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
