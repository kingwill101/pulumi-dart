// ignore_for_file: unused_element, unnecessary_cast


/// Definition of CertificateStatusEnumValue
class CertificateStatusEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [CertificateStatusEnumValue].
  /// [value] Property value
  CertificateStatusEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory CertificateStatusEnumValue.fromMap(Map<String, dynamic> map) {
    return CertificateStatusEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

