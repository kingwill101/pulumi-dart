// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of CertificateStatusEnumValue
class CertificateStatusEnumValueResponse {
  /// Property value
  final pulumi.Input<String?>? value;

  /// Creates a new [CertificateStatusEnumValueResponse].
  /// [value] Property value
  const CertificateStatusEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory CertificateStatusEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return CertificateStatusEnumValueResponse(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
