// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of CredentialProviderTypeEnumValue
class CredentialProviderTypeEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [CredentialProviderTypeEnumValue].
  /// [value] Property value
  CredentialProviderTypeEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory CredentialProviderTypeEnumValue.fromMap(Map<String, dynamic> map) {
    return CredentialProviderTypeEnumValue(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

