// ignore_for_file: unused_element, unnecessary_cast


class CertificateIssuerAdmin {
  /// E-mail address of the admin.
  final String emailAddress;
  /// First name of the admin.
  final String? firstName;
  /// Last name of the admin.
  final String? lastName;
  /// Phone number of the admin.
  final String? phone;

  /// Creates a new [CertificateIssuerAdmin].
  /// [emailAddress] E-mail address of the admin.
  /// [firstName] First name of the admin.
  /// [lastName] Last name of the admin.
  /// [phone] Phone number of the admin.
  CertificateIssuerAdmin({
    required this.emailAddress,
    this.firstName,
    this.lastName,
    this.phone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emailAddress': emailAddress,
      'firstName': ?firstName,
      'lastName': ?lastName,
      'phone': ?phone,
    };
  }

  factory CertificateIssuerAdmin.fromMap(Map<String, dynamic> map) {
    return CertificateIssuerAdmin(
      emailAddress: map['emailAddress'] as String,
      firstName: map['firstName'] == null ? null : map['firstName'] as String,
      lastName: map['lastName'] == null ? null : map['lastName'] as String,
      phone: map['phone'] == null ? null : map['phone'] as String,
    );
  }
}

