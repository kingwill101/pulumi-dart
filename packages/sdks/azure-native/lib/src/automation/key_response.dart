// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Automation key which is used to register a DSC Node
class KeyResponse {
  /// Automation key name.
  final pulumi.Input<String> keyName;

  /// Automation key permissions.
  final pulumi.Input<String> permissions;

  /// Value of the Automation Key used for registration.
  final pulumi.Input<String> value;

  /// Creates a new [KeyResponse].
  /// [keyName] Automation key name.
  /// [permissions] Automation key permissions.
  /// [value] Value of the Automation Key used for registration.
  KeyResponse({
    required this.keyName,
    required this.permissions,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyName': keyName,
      'permissions': permissions,
      'value': value,
    };
  }

  factory KeyResponse.fromMap(Map<String, dynamic> map) {
    return KeyResponse(
      keyName: pulumi.Input.fromValue(map['keyName'] as String),
      permissions: pulumi.Input.fromValue(map['permissions'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
