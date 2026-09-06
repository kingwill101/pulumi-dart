// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Certificate resource specific properties
class ManagedCertificateProperties {
  /// Selected type of domain control validation for managed certificates.
  final pulumi.Input<dynamic>? domainControlValidation;
  /// Subject name of the certificate.
  final pulumi.Input<String?>? subjectName;

  /// Creates a new [ManagedCertificateProperties].
  /// [domainControlValidation] Selected type of domain control validation for managed certificates.
  /// [subjectName] Subject name of the certificate.
  const ManagedCertificateProperties({
    this.domainControlValidation,
    this.subjectName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainControlValidation': ?domainControlValidation,
      'subjectName': ?subjectName,
    };
  }

  factory ManagedCertificateProperties.fromMap(Map<String, dynamic> map) {
    return ManagedCertificateProperties(
      domainControlValidation: (() { final guardedValue = map['domainControlValidation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      subjectName: (() { final guardedValue = map['subjectName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
