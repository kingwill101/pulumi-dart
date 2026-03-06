// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFrameworkControlInputParameter {
  /// Backup framework name.
  final pulumi.Input<String> name;
  /// Value of parameter, for example, hourly.
  final pulumi.Input<String> value;

  /// Creates a new [GetFrameworkControlInputParameter].
  /// [name] Backup framework name.
  /// [value] Value of parameter, for example, hourly.
  const GetFrameworkControlInputParameter({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory GetFrameworkControlInputParameter.fromMap(Map<String, dynamic> map) {
    return GetFrameworkControlInputParameter(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

