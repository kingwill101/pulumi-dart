// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Certificate resource specific properties
class ManagedCertificateResponseProperties {
  /// Selected type of domain control validation for managed certificates.
  final pulumi.Input<String>? domainControlValidation;

  /// Any error occurred during the certificate provision.
  final pulumi.Input<String> error;

  /// Provisioning state of the certificate.
  final pulumi.Input<String> provisioningState;

  /// Subject name of the certificate.
  final pulumi.Input<String>? subjectName;

  /// A TXT token used for DNS TXT domain control validation when issuing this type of managed certificates.
  final pulumi.Input<String> validationToken;

  /// Creates a new [ManagedCertificateResponseProperties].
  /// [domainControlValidation] Selected type of domain control validation for managed certificates.
  /// [error] Any error occurred during the certificate provision.
  /// [provisioningState] Provisioning state of the certificate.
  /// [subjectName] Subject name of the certificate.
  /// [validationToken] A TXT token used for DNS TXT domain control validation when issuing this type of managed certificates.
  ManagedCertificateResponseProperties({
    this.domainControlValidation,
    required this.error,
    required this.provisioningState,
    this.subjectName,
    required this.validationToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainControlValidation': ?domainControlValidation,
      'error': error,
      'provisioningState': provisioningState,
      'subjectName': ?subjectName,
      'validationToken': validationToken,
    };
  }

  factory ManagedCertificateResponseProperties.fromMap(
    Map<String, dynamic> map,
  ) {
    return ManagedCertificateResponseProperties(
      domainControlValidation: (() {
        final guardedValue = map['domainControlValidation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      error: pulumi.Input.fromValue(map['error'] as String),
      provisioningState: pulumi.Input.fromValue(
        map['provisioningState'] as String,
      ),
      subjectName: (() {
        final guardedValue = map['subjectName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      validationToken: pulumi.Input.fromValue(map['validationToken'] as String),
    );
  }
}
