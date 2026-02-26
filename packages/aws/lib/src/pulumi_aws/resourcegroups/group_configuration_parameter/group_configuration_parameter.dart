// ignore_for_file: unused_element, unnecessary_cast

class GroupConfigurationParameter {
  /// The name of the group configuration parameter.
  final String name;

  /// The value or values to be used for the specified parameter.
  final List<String> values;

  GroupConfigurationParameter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['values'] = values;
    return map;
  }

  factory GroupConfigurationParameter.fromMap(Map<String, dynamic> map) {
    return GroupConfigurationParameter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
