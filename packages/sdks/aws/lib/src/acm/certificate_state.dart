// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_domain_validation_option.dart';
import 'certificate_options.dart';
import 'certificate_renewal_summary.dart';
import 'certificate_validation_option.dart';

/// Input properties used for looking up and filtering Certificate resources.
class CertificateState {
  /// ARN of the certificate
  final pulumi.Input<String>? arn;
  final pulumi.Input<String>? certificateAuthorityArn;
  final pulumi.Input<String>? certificateBody;
  final pulumi.Input<String>? certificateChain;
  /// Fully qualified domain name (FQDN) in the certificate.
  final pulumi.Input<String>? domainName;
  /// Set of domain validation objects which can be used to complete certificate validation.
  /// Can have more than one element, e.g., if SANs are defined.
  /// Only set if `DNS`-validation was used.
  final pulumi.Input<List<CertificateDomainValidationOption>>? domainValidationOptions;
  final pulumi.Input<String>? earlyRenewalDuration;
  final pulumi.Input<String>? keyAlgorithm;
  /// Expiration date and time of the certificate.
  final pulumi.Input<String>? notAfter;
  /// Start of the validity period of the certificate.
  final pulumi.Input<String>? notBefore;
  final pulumi.Input<CertificateOptions>? options;
  /// `true` if a Private certificate eligible for managed renewal is within the `early_renewal_duration` period.
  final pulumi.Input<bool>? pendingRenewal;
  final pulumi.Input<String>? privateKey;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// * Creating an Amazon issued certificate
  final pulumi.Input<String>? region;
  /// Whether the certificate is eligible for managed renewal.
  final pulumi.Input<String>? renewalEligibility;
  /// Contains information about the status of ACM's [managed renewal](https://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html) for the certificate.
  final pulumi.Input<List<CertificateRenewalSummary>>? renewalSummaries;
  /// Status of the certificate.
  final pulumi.Input<String>? status;
  final pulumi.Input<List<String>>? subjectAlternativeNames;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Source of the certificate.
  final pulumi.Input<String>? type;
  /// List of addresses that received a validation email. Only set if `EMAIL` validation was used.
  final pulumi.Input<List<String>>? validationEmails;
  final pulumi.Input<String>? validationMethod;
  final pulumi.Input<List<CertificateValidationOption>>? validationOptions;

  /// Creates a new [CertificateState].
  /// [arn] ARN of the certificate
  /// [certificateAuthorityArn] Optional.
  /// [certificateBody] Optional.
  /// [certificateChain] Optional.
  /// [domainName] Fully qualified domain name (FQDN) in the certificate.
  /// [domainValidationOptions] Set of domain validation objects which can be used to complete certificate validation.
  /// [earlyRenewalDuration] Optional.
  /// [keyAlgorithm] Optional.
  /// [notAfter] Expiration date and time of the certificate.
  /// [notBefore] Start of the validity period of the certificate.
  /// [options] Optional.
  /// [pendingRenewal] `true` if a Private certificate eligible for managed renewal is within the `early_renewal_duration` period.
  /// [privateKey] Optional.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [renewalEligibility] Whether the certificate is eligible for managed renewal.
  /// [renewalSummaries] Contains information about the status of ACM's [managed renewal](https://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html) for the certificate.
  /// [status] Status of the certificate.
  /// [subjectAlternativeNames] Optional.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [type] Source of the certificate.
  /// [validationEmails] List of addresses that received a validation email. Only set if `EMAIL` validation was used.
  /// [validationMethod] Optional.
  /// [validationOptions] Optional.
  CertificateState({
    this.arn,
    this.certificateAuthorityArn,
    this.certificateBody,
    this.certificateChain,
    this.domainName,
    this.domainValidationOptions,
    this.earlyRenewalDuration,
    this.keyAlgorithm,
    this.notAfter,
    this.notBefore,
    this.options,
    this.pendingRenewal,
    this.privateKey,
    this.region,
    this.renewalEligibility,
    this.renewalSummaries,
    this.status,
    this.subjectAlternativeNames,
    this.tags,
    this.tagsAll,
    this.type,
    this.validationEmails,
    this.validationMethod,
    this.validationOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'certificateAuthorityArn': ?certificateAuthorityArn,
      'certificateBody': ?certificateBody,
      'certificateChain': ?certificateChain,
      'domainName': ?domainName,
      'domainValidationOptions': ?pulumi.Input.mapOptionalInputValue<List<CertificateDomainValidationOption>, List<Map<String, dynamic>>>(domainValidationOptions, (value) => pulumi.Input.encodeList<CertificateDomainValidationOption, Map<String, dynamic>>(value, (value) => value.toMap())),
      'earlyRenewalDuration': ?earlyRenewalDuration,
      'keyAlgorithm': ?keyAlgorithm,
      'notAfter': ?notAfter,
      'notBefore': ?notBefore,
      'options': ?pulumi.Input.mapOptionalInputValue<CertificateOptions, Map<String, dynamic>>(options, (value) => value.toMap()),
      'pendingRenewal': ?pendingRenewal,
      'privateKey': ?privateKey,
      'region': ?region,
      'renewalEligibility': ?renewalEligibility,
      'renewalSummaries': ?pulumi.Input.mapOptionalInputValue<List<CertificateRenewalSummary>, List<Map<String, dynamic>>>(renewalSummaries, (value) => pulumi.Input.encodeList<CertificateRenewalSummary, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': ?status,
      'subjectAlternativeNames': ?subjectAlternativeNames,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'type': ?type,
      'validationEmails': ?validationEmails,
      'validationMethod': ?validationMethod,
      'validationOptions': ?pulumi.Input.mapOptionalInputValue<List<CertificateValidationOption>, List<Map<String, dynamic>>>(validationOptions, (value) => pulumi.Input.encodeList<CertificateValidationOption, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CertificateState.fromMap(Map<String, dynamic> map) {
    return CertificateState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificateAuthorityArn: (() { final guardedValue = map['certificateAuthorityArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificateBody: (() { final guardedValue = map['certificateBody']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificateChain: (() { final guardedValue = map['certificateChain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainValidationOptions: (() { final guardedValue = map['domainValidationOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CertificateDomainValidationOption>(guardedValue, (value) => CertificateDomainValidationOption.fromMap((value as Map).cast<String, dynamic>()))); })(),
      earlyRenewalDuration: (() { final guardedValue = map['earlyRenewalDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyAlgorithm: (() { final guardedValue = map['keyAlgorithm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notAfter: (() { final guardedValue = map['notAfter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notBefore: (() { final guardedValue = map['notBefore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      options: (() { final guardedValue = map['options']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CertificateOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      pendingRenewal: (() { final guardedValue = map['pendingRenewal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      privateKey: (() { final guardedValue = map['privateKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      renewalEligibility: (() { final guardedValue = map['renewalEligibility']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      renewalSummaries: (() { final guardedValue = map['renewalSummaries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CertificateRenewalSummary>(guardedValue, (value) => CertificateRenewalSummary.fromMap((value as Map).cast<String, dynamic>()))); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subjectAlternativeNames: (() { final guardedValue = map['subjectAlternativeNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      validationEmails: (() { final guardedValue = map['validationEmails']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      validationMethod: (() { final guardedValue = map['validationMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      validationOptions: (() { final guardedValue = map['validationOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CertificateValidationOption>(guardedValue, (value) => CertificateValidationOption.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

