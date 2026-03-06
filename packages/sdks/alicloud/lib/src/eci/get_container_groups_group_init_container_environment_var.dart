// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetContainerGroupsGroupInitContainerEnvironmentVar {
  /// The name of the variable.
  final pulumi.Input<String> key;
  /// The value of the variable.
  final pulumi.Input<String> value;

  /// Creates a new [GetContainerGroupsGroupInitContainerEnvironmentVar].
  /// [key] The name of the variable.
  /// [value] The value of the variable.
  const GetContainerGroupsGroupInitContainerEnvironmentVar({
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
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

