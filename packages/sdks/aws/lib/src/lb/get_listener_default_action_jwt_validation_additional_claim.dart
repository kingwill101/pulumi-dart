// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetListenerDefaultActionJwtValidationAdditionalClaim {
  final pulumi.Input<String> format;
  final pulumi.Input<String> name;
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetListenerDefaultActionJwtValidationAdditionalClaim].
  /// [format] Required.
  /// [name] Required.
  /// [values] Required.
  const GetListenerDefaultActionJwtValidationAdditionalClaim({
    required this.format,
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'format': format,
      'name': name,
      'values': values,
    };
  }

  factory GetListenerDefaultActionJwtValidationAdditionalClaim.fromMap(Map<String, dynamic> map) {
    return GetListenerDefaultActionJwtValidationAdditionalClaim(
      format: pulumi.Input.fromValue(map['format'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}

