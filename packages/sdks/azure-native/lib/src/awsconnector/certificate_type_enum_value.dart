// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of CertificateTypeEnumValue
class CertificateTypeEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [CertificateTypeEnumValue].
  /// [value] Property value
  CertificateTypeEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory CertificateTypeEnumValue.fromMap(Map<String, dynamic> map) {
    return CertificateTypeEnumValue(
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

