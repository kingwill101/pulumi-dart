// ignore_for_file: unused_element, unnecessary_cast


class GetContainerGroupsGroupInitContainerEnvironmentVar {
  /// The name of the variable.
  final String key;
  /// The value of the variable.
  final String value;

  /// Creates a new [GetContainerGroupsGroupInitContainerEnvironmentVar].
  /// [key] The name of the variable.
  /// [value] The value of the variable.
  GetContainerGroupsGroupInitContainerEnvironmentVar({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory GetContainerGroupsGroupInitContainerEnvironmentVar.fromMap(Map<String, dynamic> map) {
    return GetContainerGroupsGroupInitContainerEnvironmentVar(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}

