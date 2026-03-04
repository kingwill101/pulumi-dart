// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetContainerGroupsGroupContainerEnvironmentVar {
  /// The name of the variable.
  final pulumi.Input<String> key;

  /// The value of the variable.
  final pulumi.Input<String> value;

  /// Creates a new [GetContainerGroupsGroupContainerEnvironmentVar].
  /// [key] The name of the variable.
  /// [value] The value of the variable.
  GetContainerGroupsGroupContainerEnvironmentVar({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': key, 'value': value};
  }

  factory GetContainerGroupsGroupContainerEnvironmentVar.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetContainerGroupsGroupContainerEnvironmentVar(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
