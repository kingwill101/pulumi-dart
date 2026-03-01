// ignore_for_file: unused_element, unnecessary_cast


class CertificateOrderContactResponse {
  final String? email;
  final String? nameFirst;
  final String? nameLast;
  final String? phone;

  /// Creates a new [CertificateOrderContactResponse].
  /// [email] Optional.
  /// [nameFirst] Optional.
  /// [nameLast] Optional.
  /// [phone] Optional.
  CertificateOrderContactResponse({
    this.email,
    this.nameFirst,
    this.nameLast,
    this.phone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': ?email,
      'nameFirst': ?nameFirst,
      'nameLast': ?nameLast,
      'phone': ?phone,
    };
  }

  factory CertificateOrderContactResponse.fromMap(Map<String, dynamic> map) {
    return CertificateOrderContactResponse(
      email: map['email'] == null ? null : map['email'] as String,
      nameFirst: map['nameFirst'] == null ? null : map['nameFirst'] as String,
      nameLast: map['nameLast'] == null ? null : map['nameLast'] as String,
      phone: map['phone'] == null ? null : map['phone'] as String,
    );
  }
}

