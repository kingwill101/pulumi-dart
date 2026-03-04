// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cert_manager_issuer_ref.dart';
import 'cert_manager_private_key.dart';
import 'san_for_cert.dart';

/// Automatic TLS server certificate management with cert-manager
class AutomaticCertMethod {
  /// Lifetime of automatically-managed certificate.
  final pulumi.Input<String>? duration;

  /// cert-manager issuerRef.
  final pulumi.Input<CertManagerIssuerRef> issuerRef;

  /// Cert Manager private key.
  final pulumi.Input<CertManagerPrivateKey>? privateKey;

  /// When to begin renewing automatically-managed certificate.
  final pulumi.Input<String>? renewBefore;

  /// Additional SANs to include in the certificate.
  final pulumi.Input<SanForCert>? san;

  /// Secret for storing server certificate. Any existing data will be overwritten.
  final pulumi.Input<String>? secretName;

  /// Certificate K8S namespace. Omit to use default namespace.
  final pulumi.Input<String>? secretNamespace;

  /// Creates a new [AutomaticCertMethod].
  /// [duration] Lifetime of automatically-managed certificate.
  /// [issuerRef] cert-manager issuerRef.
  /// [privateKey] Cert Manager private key.
  /// [renewBefore] When to begin renewing automatically-managed certificate.
  /// [san] Additional SANs to include in the certificate.
  /// [secretName] Secret for storing server certificate. Any existing data will be overwritten.
  /// [secretNamespace] Certificate K8S namespace. Omit to use default namespace.
  AutomaticCertMethod({
    this.duration,
    required this.issuerRef,
    this.privateKey,
    this.renewBefore,
    this.san,
    this.secretName,
    this.secretNamespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'duration': ?duration,
      'issuerRef':
          pulumi.Input.mapInputValue<
            CertManagerIssuerRef,
            Map<String, dynamic>
          >(issuerRef, (value) => value.toMap()),
      'privateKey':
          ?pulumi.Input.mapOptionalInputValue<
            CertManagerPrivateKey,
            Map<String, dynamic>
          >(privateKey, (value) => value.toMap()),
      'renewBefore': ?renewBefore,
      'san':
          ?pulumi.Input.mapOptionalInputValue<SanForCert, Map<String, dynamic>>(
            san,
            (value) => value.toMap(),
          ),
      'secretName': ?secretName,
      'secretNamespace': ?secretNamespace,
    };
  }

  factory AutomaticCertMethod.fromMap(Map<String, dynamic> map) {
    return AutomaticCertMethod(
      duration: (() {
        final guardedValue = map['duration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      issuerRef: pulumi.Input.fromValue(
        CertManagerIssuerRef.fromMap(
          (map['issuerRef']! as Map).cast<String, dynamic>(),
        ),
      ),
      privateKey: (() {
        final guardedValue = map['privateKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CertManagerPrivateKey.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      renewBefore: (() {
        final guardedValue = map['renewBefore'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      san: (() {
        final guardedValue = map['san'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SanForCert.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      secretName: (() {
        final guardedValue = map['secretName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secretNamespace: (() {
        final guardedValue = map['secretNamespace'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
