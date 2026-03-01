// ignore_for_file: unused_element, unnecessary_cast


/// Certificate resource specific properties
class ManagedCertificateResponseProperties {
  /// Selected type of domain control validation for managed certificates.
  final String? domainControlValidation;
  /// Any error occurred during the certificate provision.
  final String error;
  /// Provisioning state of the certificate.
  final String provisioningState;
  /// Subject name of the certificate.
  final String? subjectName;
  /// A TXT token used for DNS TXT domain control validation when issuing this type of managed certificates.
  final String validationToken;

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

  factory ManagedCertificateResponseProperties.fromMap(Map<String, dynamic> map) {
    return ManagedCertificateResponseProperties(
      domainControlValidation: map['domainControlValidation'] == null ? null : map['domainControlValidation'] as String,
      error: map['error'] as String,
      provisioningState: map['provisioningState'] as String,
      subjectName: map['subjectName'] == null ? null : map['subjectName'] as String,
      validationToken: map['validationToken'] as String,
    );
  }
}

