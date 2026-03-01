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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? certificateAuthorityArn,
    pulumi.Output<String>? certificateBody,
    pulumi.Output<String>? certificateChain,
    pulumi.Output<String>? domainName,
    pulumi.Output<List<CertificateDomainValidationOption>>? domainValidationOptions,
    pulumi.Output<String>? earlyRenewalDuration,
    pulumi.Output<String>? keyAlgorithm,
    pulumi.Output<String>? notAfter,
    pulumi.Output<String>? notBefore,
    pulumi.Output<CertificateOptions>? options,
    pulumi.Output<bool>? pendingRenewal,
    pulumi.Output<String>? privateKey,
    pulumi.Output<String>? region,
    pulumi.Output<String>? renewalEligibility,
    pulumi.Output<List<CertificateRenewalSummary>>? renewalSummaries,
    pulumi.Output<String>? status,
    pulumi.Output<List<String>>? subjectAlternativeNames,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? type,
    pulumi.Output<List<String>>? validationEmails,
    pulumi.Output<String>? validationMethod,
    pulumi.Output<List<CertificateValidationOption>>? validationOptions,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      certificateAuthorityArn = pulumi.Input.asOptionalInput<String>(certificateAuthorityArn),
      certificateBody = pulumi.Input.asOptionalInput<String>(certificateBody),
      certificateChain = pulumi.Input.asOptionalInput<String>(certificateChain),
      domainName = pulumi.Input.asOptionalInput<String>(domainName),
      domainValidationOptions = pulumi.Input.asOptionalInput<List<CertificateDomainValidationOption>>(domainValidationOptions),
      earlyRenewalDuration = pulumi.Input.asOptionalInput<String>(earlyRenewalDuration),
      keyAlgorithm = pulumi.Input.asOptionalInput<String>(keyAlgorithm),
      notAfter = pulumi.Input.asOptionalInput<String>(notAfter),
      notBefore = pulumi.Input.asOptionalInput<String>(notBefore),
      options = pulumi.Input.asOptionalInput<CertificateOptions>(options),
      pendingRenewal = pulumi.Input.asOptionalInput<bool>(pendingRenewal),
      privateKey = pulumi.Input.asOptionalInput<String>(privateKey),
      region = pulumi.Input.asOptionalInput<String>(region),
      renewalEligibility = pulumi.Input.asOptionalInput<String>(renewalEligibility),
      renewalSummaries = pulumi.Input.asOptionalInput<List<CertificateRenewalSummary>>(renewalSummaries),
      status = pulumi.Input.asOptionalInput<String>(status),
      subjectAlternativeNames = pulumi.Input.asOptionalInput<List<String>>(subjectAlternativeNames),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      type = pulumi.Input.asOptionalInput<String>(type),
      validationEmails = pulumi.Input.asOptionalInput<List<String>>(validationEmails),
      validationMethod = pulumi.Input.asOptionalInput<String>(validationMethod),
      validationOptions = pulumi.Input.asOptionalInput<List<CertificateValidationOption>>(validationOptions);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      certificateAuthorityArn: map['certificateAuthorityArn'] == null ? null : pulumi.Output.create<String>(map['certificateAuthorityArn'] as String),
      certificateBody: map['certificateBody'] == null ? null : pulumi.Output.create<String>(map['certificateBody'] as String),
      certificateChain: map['certificateChain'] == null ? null : pulumi.Output.create<String>(map['certificateChain'] as String),
      domainName: map['domainName'] == null ? null : pulumi.Output.create<String>(map['domainName'] as String),
      domainValidationOptions: map['domainValidationOptions'] == null ? null : pulumi.Output.create<List<CertificateDomainValidationOption>>(pulumi.Input.decodeList<CertificateDomainValidationOption>(map['domainValidationOptions'], (value) => CertificateDomainValidationOption.fromMap((value as Map).cast<String, dynamic>()))),
      earlyRenewalDuration: map['earlyRenewalDuration'] == null ? null : pulumi.Output.create<String>(map['earlyRenewalDuration'] as String),
      keyAlgorithm: map['keyAlgorithm'] == null ? null : pulumi.Output.create<String>(map['keyAlgorithm'] as String),
      notAfter: map['notAfter'] == null ? null : pulumi.Output.create<String>(map['notAfter'] as String),
      notBefore: map['notBefore'] == null ? null : pulumi.Output.create<String>(map['notBefore'] as String),
      options: map['options'] == null ? null : pulumi.Output.create<CertificateOptions>(CertificateOptions.fromMap((map['options'] as Map).cast<String, dynamic>())),
      pendingRenewal: map['pendingRenewal'] == null ? null : pulumi.Output.create<bool>(map['pendingRenewal'] as bool),
      privateKey: map['privateKey'] == null ? null : pulumi.Output.create<String>(map['privateKey'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      renewalEligibility: map['renewalEligibility'] == null ? null : pulumi.Output.create<String>(map['renewalEligibility'] as String),
      renewalSummaries: map['renewalSummaries'] == null ? null : pulumi.Output.create<List<CertificateRenewalSummary>>(pulumi.Input.decodeList<CertificateRenewalSummary>(map['renewalSummaries'], (value) => CertificateRenewalSummary.fromMap((value as Map).cast<String, dynamic>()))),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      subjectAlternativeNames: map['subjectAlternativeNames'] == null ? null : pulumi.Output.create<List<String>>((map['subjectAlternativeNames'] as List).cast<String>()),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      validationEmails: map['validationEmails'] == null ? null : pulumi.Output.create<List<String>>((map['validationEmails'] as List).cast<String>()),
      validationMethod: map['validationMethod'] == null ? null : pulumi.Output.create<String>(map['validationMethod'] as String),
      validationOptions: map['validationOptions'] == null ? null : pulumi.Output.create<List<CertificateValidationOption>>(pulumi.Input.decodeList<CertificateValidationOption>(map['validationOptions'], (value) => CertificateValidationOption.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

