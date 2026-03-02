// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of CertificateDetails
class CertificateDetails {
  /// The CA identifier of the CA certificate used for the DB instance's server certificate.
  final pulumi.Input<String>? caIdentifier;
  /// The expiration date of the DB instance’s server certificate.
  final pulumi.Input<String>? validTill;

  /// Creates a new [CertificateDetails].
  /// [caIdentifier] The CA identifier of the CA certificate used for the DB instance's server certificate.
  /// [validTill] The expiration date of the DB instance’s server certificate.
  CertificateDetails({
    this.caIdentifier,
    this.validTill,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caIdentifier': ?caIdentifier,
      'validTill': ?validTill,
    };
  }

  factory CertificateDetails.fromMap(Map<String, dynamic> map) {
    return CertificateDetails(
      caIdentifier: map['caIdentifier'] == null ? null : (map['caIdentifier'] as String).input(),
      validTill: map['validTill'] == null ? null : (map['validTill'] as String).input(),
    );
  }
}

