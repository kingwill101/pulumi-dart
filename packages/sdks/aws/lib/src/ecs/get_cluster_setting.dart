// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterSetting {
  final pulumi.Input<String> name;
  final pulumi.Input<String> value;

  /// Creates a new [GetClusterSetting].
  /// [name] Required.
  /// [value] Required.
  const GetClusterSetting({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory GetClusterSetting.fromMap(Map<String, dynamic> map) {
    return GetClusterSetting(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
