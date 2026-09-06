// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of CredentialProviderTypeEnumValue
class CredentialProviderTypeEnumValueResponse {
  /// Property value
  final pulumi.Input<String?>? value;

  /// Creates a new [CredentialProviderTypeEnumValueResponse].
  /// [value] Property value
  const CredentialProviderTypeEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory CredentialProviderTypeEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return CredentialProviderTypeEnumValueResponse(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
