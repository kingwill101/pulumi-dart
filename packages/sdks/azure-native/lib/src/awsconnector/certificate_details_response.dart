// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of CertificateDetails
class CertificateDetailsResponse {
  /// The CA identifier of the CA certificate used for the DB instance's server certificate.
  final pulumi.Input<String>? caIdentifier;
  /// The expiration date of the DB instance’s server certificate.
  final pulumi.Input<String>? validTill;

  /// Creates a new [CertificateDetailsResponse].
  /// [caIdentifier] The CA identifier of the CA certificate used for the DB instance's server certificate.
  /// [validTill] The expiration date of the DB instance’s server certificate.
  CertificateDetailsResponse({
    this.caIdentifier,
    this.validTill,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caIdentifier': ?caIdentifier,
      'validTill': ?validTill,
    };
  }

  factory CertificateDetailsResponse.fromMap(Map<String, dynamic> map) {
    return CertificateDetailsResponse(
      caIdentifier: (() { final guardedValue = map['caIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      validTill: (() { final guardedValue = map['validTill']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

