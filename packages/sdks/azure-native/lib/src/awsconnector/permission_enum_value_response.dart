// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of PermissionEnumValue
class PermissionEnumValueResponse {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [PermissionEnumValueResponse].
  /// [value] Property value
  const PermissionEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory PermissionEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return PermissionEnumValueResponse(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
