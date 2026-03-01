// ignore_for_file: unused_element, unnecessary_cast


/// Definition of CertificateStatusEnumValue
class CertificateStatusEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [CertificateStatusEnumValueResponse].
  /// [value] Property value
  CertificateStatusEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory CertificateStatusEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return CertificateStatusEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

