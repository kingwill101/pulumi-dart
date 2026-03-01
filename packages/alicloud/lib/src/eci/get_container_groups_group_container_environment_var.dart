// ignore_for_file: unused_element, unnecessary_cast


class GetContainerGroupsGroupContainerEnvironmentVar {
  /// The name of the variable.
  final String key;
  /// The value of the variable.
  final String value;

  /// Creates a new [GetContainerGroupsGroupContainerEnvironmentVar].
  /// [key] The name of the variable.
  /// [value] The value of the variable.
  GetContainerGroupsGroupContainerEnvironmentVar({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory GetContainerGroupsGroupContainerEnvironmentVar.fromMap(Map<String, dynamic> map) {
    return GetContainerGroupsGroupContainerEnvironmentVar(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}

