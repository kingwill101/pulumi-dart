// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApplicationInfosApplicationDimension {
  final pulumi.Input<String> key;
  final pulumi.Input<String> value;

  /// Creates a new [GetApplicationInfosApplicationDimension].
  /// [key] Required.
  /// [value] Required.
  const GetApplicationInfosApplicationDimension({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory GetApplicationInfosApplicationDimension.fromMap(Map<String, dynamic> map) {
    return GetApplicationInfosApplicationDimension(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

