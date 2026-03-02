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
  GetListenerDefaultActionJwtValidationAdditionalClaim({
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
      format: (map['format'] as String).input(),
      name: (map['name'] as String).input(),
      values: ((map['values'] as List).cast<String>()).input(),
    );
  }
}

