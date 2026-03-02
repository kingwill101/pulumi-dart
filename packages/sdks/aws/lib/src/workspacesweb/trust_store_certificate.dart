// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TrustStoreCertificate {
  /// Certificate body in PEM format.
  final pulumi.Input<String> body;
  /// Certificate issuer.
  final pulumi.Input<String>? issuer;
  /// Date and time when the certificate expires in RFC3339 format.
  final pulumi.Input<String>? notValidAfter;
  /// Date and time when the certificate becomes valid in RFC3339 format.
  final pulumi.Input<String>? notValidBefore;
  /// Certificate subject.
  final pulumi.Input<String>? subject;
  /// Certificate thumbprint.
  final pulumi.Input<String>? thumbprint;

  /// Creates a new [TrustStoreCertificate].
  /// [body] Certificate body in PEM format.
  /// [issuer] Certificate issuer.
  /// [notValidAfter] Date and time when the certificate expires in RFC3339 format.
  /// [notValidBefore] Date and time when the certificate becomes valid in RFC3339 format.
  /// [subject] Certificate subject.
  /// [thumbprint] Certificate thumbprint.
  TrustStoreCertificate({
    required this.body,
    this.issuer,
    this.notValidAfter,
    this.notValidBefore,
    this.subject,
    this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'body': body,
      'issuer': ?issuer,
      'notValidAfter': ?notValidAfter,
      'notValidBefore': ?notValidBefore,
      'subject': ?subject,
      'thumbprint': ?thumbprint,
    };
  }

  factory TrustStoreCertificate.fromMap(Map<String, dynamic> map) {
    return TrustStoreCertificate(
      body: (map['body'] as String).input(),
      issuer: map['issuer'] == null ? null : ((map['issuer'] as String).input()).input(),
      notValidAfter: map['notValidAfter'] == null ? null : ((map['notValidAfter'] as String).input()).input(),
      notValidBefore: map['notValidBefore'] == null ? null : ((map['notValidBefore'] as String).input()).input(),
      subject: map['subject'] == null ? null : ((map['subject'] as String).input()).input(),
      thumbprint: map['thumbprint'] == null ? null : ((map['thumbprint'] as String).input()).input(),
    );
  }
}

