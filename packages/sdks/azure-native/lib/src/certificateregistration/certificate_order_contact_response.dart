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
  const CertificateOrderContactResponse({
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
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nameFirst: (() { final guardedValue = map['nameFirst']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nameLast: (() { final guardedValue = map['nameLast']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      phone: (() { final guardedValue = map['phone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
