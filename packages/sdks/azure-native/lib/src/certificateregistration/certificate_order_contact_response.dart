// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CertificateOrderContactResponse {
  final pulumi.Input<String>? email;
  final pulumi.Input<String>? nameFirst;
  final pulumi.Input<String>? nameLast;
  final pulumi.Input<String>? phone;

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
      email: map['email'] == null ? null : (map['email'] as String).input(),
      nameFirst: map['nameFirst'] == null ? null : (map['nameFirst'] as String).input(),
      nameLast: map['nameLast'] == null ? null : (map['nameLast'] as String).input(),
      phone: map['phone'] == null ? null : (map['phone'] as String).input(),
    );
  }
}

