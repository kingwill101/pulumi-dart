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
  /// Set of domain validation objects which can be used to complete certificate validation. Can have more than one element, e.g., if SANs are defined.
  final pulumi.Input<List<LbCertificateDomainValidationRecord>>? domainValidationRecords;
  /// Load balancer name where you want to create the SSL/TLS certificate.
  final pulumi.Input<String>? lbName;
  /// SSL/TLS certificate name.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Set of domains that should be SANs in the issued certificate. `domain_name` attribute is automatically added as a Subject Alternative Name.
  final pulumi.Input<List<String>>? subjectAlternativeNames;
  /// Support code for the certificate.
  final pulumi.Input<String>? supportCode;

  /// Creates a new [LbCertificateState].
  /// [arn] ARN of the lightsail certificate.
  /// [createdAt] Timestamp when the instance was created.
  /// [domainName] Domain name (e.g., example.com) for your SSL/TLS certificate.
  /// [domainValidationRecords] Set of domain validation objects which can be used to complete certificate validation. Can have more than one element, e.g., if SANs are defined.
  /// [lbName] Load balancer name where you want to create the SSL/TLS certificate.
  /// [name] SSL/TLS certificate name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [subjectAlternativeNames] Set of domains that should be SANs in the issued certificate. `domain_name` attribute is automatically added as a Subject Alternative Name.
  /// [supportCode] Support code for the certificate.
  LbCertificateState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? createdAt,
    pulumi.Output<String>? domainName,
    pulumi.Output<List<LbCertificateDomainValidationRecord>>? domainValidationRecords,
    pulumi.Output<String>? lbName,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<List<String>>? subjectAlternativeNames,
    pulumi.Output<String>? supportCode,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      domainName = pulumi.Input.asOptionalInput<String>(domainName),
      domainValidationRecords = pulumi.Input.asOptionalInput<List<LbCertificateDomainValidationRecord>>(domainValidationRecords),
      lbName = pulumi.Input.asOptionalInput<String>(lbName),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      subjectAlternativeNames = pulumi.Input.asOptionalInput<List<String>>(subjectAlternativeNames),
      supportCode = pulumi.Input.asOptionalInput<String>(supportCode);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<String>(map['createdAt'] as String),
      domainName: map['domainName'] == null ? null : pulumi.Output.create<String>(map['domainName'] as String),
      domainValidationRecords: map['domainValidationRecords'] == null ? null : pulumi.Output.create<List<LbCertificateDomainValidationRecord>>(pulumi.Input.decodeList<LbCertificateDomainValidationRecord>(map['domainValidationRecords'], (value) => LbCertificateDomainValidationRecord.fromMap((value as Map).cast<String, dynamic>()))),
      lbName: map['lbName'] == null ? null : pulumi.Output.create<String>(map['lbName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      subjectAlternativeNames: map['subjectAlternativeNames'] == null ? null : pulumi.Output.create<List<String>>((map['subjectAlternativeNames'] as List).cast<String>()),
      supportCode: map['supportCode'] == null ? null : pulumi.Output.create<String>(map['supportCode'] as String),
    );
  }
}

