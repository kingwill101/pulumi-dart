// ignore_for_file: unused_element, unnecessary_cast


class GetContainerGroupsGroupEciSecurityContextSysctl {
  /// The name of the variable.
  final String name;
  /// The value of the variable.
  final String value;

  /// Creates a new [GetContainerGroupsGroupEciSecurityContextSysctl].
  /// [name] The name of the variable.
  /// [value] The value of the variable.
  GetContainerGroupsGroupEciSecurityContextSysctl({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory GetContainerGroupsGroupEciSecurityContextSysctl.fromMap(Map<String, dynamic> map) {
    return GetContainerGroupsGroupEciSecurityContextSysctl(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

