// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PasswordResponse {
  final pulumi.Input<String> name;
  final pulumi.Input<String> value;

  /// Creates a new [PasswordResponse].
  /// [name] Required.
  /// [value] Required.
  PasswordResponse({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory PasswordResponse.fromMap(Map<String, dynamic> map) {
    return PasswordResponse(
      name: (map['name'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

