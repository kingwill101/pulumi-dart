// ignore_for_file: unused_element, unnecessary_cast


/// Definition of CertificateTypeEnumValue
class CertificateTypeEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [CertificateTypeEnumValueResponse].
  /// [value] Property value
  CertificateTypeEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory CertificateTypeEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return CertificateTypeEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

