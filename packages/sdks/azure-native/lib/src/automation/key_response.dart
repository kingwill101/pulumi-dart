// ignore_for_file: unused_element, unnecessary_cast


/// Automation key which is used to register a DSC Node
class KeyResponse {
  /// Automation key name.
  final String keyName;
  /// Automation key permissions.
  final String permissions;
  /// Value of the Automation Key used for registration.
  final String value;

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
      keyName: map['keyName'] as String,
      permissions: map['permissions'] as String,
      value: map['value'] as String,
    );
  }
}

