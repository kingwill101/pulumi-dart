// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certifiate_certificate_policy_issuer_parameters.dart';
import 'certifiate_certificate_policy_key_properties.dart';
import 'certifiate_certificate_policy_lifetime_action.dart';
import 'certifiate_certificate_policy_secret_properties.dart';
import 'certifiate_certificate_policy_x509_certificate_properties.dart';

class CertifiateCertificatePolicy {
  /// A `issuer_parameters` block as defined below.
  final CertifiateCertificatePolicyIssuerParameters issuerParameters;
  /// A `key_properties` block as defined below.
  final CertifiateCertificatePolicyKeyProperties keyProperties;
  /// A `lifetime_action` block as defined below.
  final List<CertifiateCertificatePolicyLifetimeAction>? lifetimeActions;
  /// A `secret_properties` block as defined below.
  final CertifiateCertificatePolicySecretProperties secretProperties;
  /// A `x509_certificate_properties` block as defined below. Required when `certificate` block is not specified.
  final CertifiateCertificatePolicyX509CertificateProperties? x509CertificateProperties;

  /// Creates a new [CertifiateCertificatePolicy].
  /// [issuerParameters] A `issuer_parameters` block as defined below.
  /// [keyProperties] A `key_properties` block as defined below.
  /// [lifetimeActions] A `lifetime_action` block as defined below.
  /// [secretProperties] A `secret_properties` block as defined below.
  /// [x509CertificateProperties] A `x509_certificate_properties` block as defined below. Required when `certificate` block is not specified.
  CertifiateCertificatePolicy({
    required this.issuerParameters,
    required this.keyProperties,
    this.lifetimeActions,
    required this.secretProperties,
    this.x509CertificateProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'issuerParameters': issuerParameters.toMap(),
      'keyProperties': keyProperties.toMap(),
      'lifetimeActions': ?lifetimeActions == null ? null : pulumi.Input.encodeList<CertifiateCertificatePolicyLifetimeAction, Map<String, dynamic>>(lifetimeActions!, (value) => value.toMap()),
      'secretProperties': secretProperties.toMap(),
      'x509CertificateProperties': ?x509CertificateProperties == null ? null : x509CertificateProperties!.toMap(),
    };
  }

  factory CertifiateCertificatePolicy.fromMap(Map<String, dynamic> map) {
    return CertifiateCertificatePolicy(
      issuerParameters: CertifiateCertificatePolicyIssuerParameters.fromMap((map['issuerParameters'] as Map).cast<String, dynamic>()),
      keyProperties: CertifiateCertificatePolicyKeyProperties.fromMap((map['keyProperties'] as Map).cast<String, dynamic>()),
      lifetimeActions: map['lifetimeActions'] == null ? null : pulumi.Input.decodeList<CertifiateCertificatePolicyLifetimeAction>(map['lifetimeActions'], (value) => CertifiateCertificatePolicyLifetimeAction.fromMap((value as Map).cast<String, dynamic>())),
      secretProperties: CertifiateCertificatePolicySecretProperties.fromMap((map['secretProperties'] as Map).cast<String, dynamic>()),
      x509CertificateProperties: map['x509CertificateProperties'] == null ? null : CertifiateCertificatePolicyX509CertificateProperties.fromMap((map['x509CertificateProperties'] as Map).cast<String, dynamic>()),
    );
  }
}

