// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'lb_certificate_domain_validation_record.dart';

/// Input properties used for looking up and filtering LbCertificate resources.
class LbCertificateState {
  /// ARN of the lightsail certificate.
  final pulumi.Input<String>? arn;
  /// Timestamp when the instance was created.
  final pulumi.Input<String>? createdAt;
  /// Domain name (e.g., example.com) for your SSL/TLS certificate.
  final pulumi.Input<String>? domainName;
  /// Set of domain validation objects which can be used to complete certificate validation. Can have more than one element, e.g., if SANs are defined. Each element contains the following attributes:
  final pulumi.Input<List<LbCertificateDomainValidationRecord>>? domainValidationRecords;
  /// Load balancer name where you want to create the SSL/TLS certificate.
  final pulumi.Input<String>? lbName;
  /// SSL/TLS certificate name.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Set of domains that should be SANs in the issued certificate. `domainName` attribute is automatically added as a Subject Alternative Name.
  final pulumi.Input<List<String>>? subjectAlternativeNames;
  /// Support code for the certificate.
  final pulumi.Input<String>? supportCode;

  /// Creates a new [LbCertificateState].
  /// [arn] ARN of the lightsail certificate.
  /// [createdAt] Timestamp when the instance was created.
  /// [domainName] Domain name (e.g., example.com) for your SSL/TLS certificate.
  /// [domainValidationRecords] Set of domain validation objects which can be used to complete certificate validation. Can have more than one element, e.g., if SANs are defined. Each element contains the following attributes:
  /// [lbName] Load balancer name where you want to create the SSL/TLS certificate.
  /// [name] SSL/TLS certificate name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [subjectAlternativeNames] Set of domains that should be SANs in the issued certificate. `domainName` attribute is automatically added as a Subject Alternative Name.
  /// [supportCode] Support code for the certificate.
  const LbCertificateState({
    this.arn,
    this.createdAt,
    this.domainName,
    this.domainValidationRecords,
    this.lbName,
    this.name,
    this.region,
    this.subjectAlternativeNames,
    this.supportCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'createdAt': ?createdAt,
      'domainName': ?domainName,
      'domainValidationRecords': ?pulumi.Input.mapOptionalInputValue<List<LbCertificateDomainValidationRecord>, List<Map<String, dynamic>>>(domainValidationRecords, (value) => pulumi.Input.encodeList<LbCertificateDomainValidationRecord, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lbName': ?lbName,
      'name': ?name,
      'region': ?region,
      'subjectAlternativeNames': ?subjectAlternativeNames,
      'supportCode': ?supportCode,
    };
  }

  factory LbCertificateState.fromMap(Map<String, dynamic> map) {
    return LbCertificateState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainValidationRecords: (() { final guardedValue = map['domainValidationRecords']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LbCertificateDomainValidationRecord>(guardedValue, (value) => LbCertificateDomainValidationRecord.fromMap((value as Map).cast<String, dynamic>()))); })(),
      lbName: (() { final guardedValue = map['lbName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subjectAlternativeNames: (() { final guardedValue = map['subjectAlternativeNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      supportCode: (() { final guardedValue = map['supportCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
