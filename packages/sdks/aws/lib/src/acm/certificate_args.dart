// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_options.dart';
import 'certificate_validation_option.dart';

/// {@template pulumi_acm_certificate_certificate_args_doc}
/// The set of arguments for Certificate.
/// {@endtemplate}
/// {@macro pulumi_acm_certificate_certificate_args_doc}
class CertificateArgs {
  final pulumi.Input<String>? certificateAuthorityArn;
  final pulumi.Input<String>? certificateBody;
  final pulumi.Input<String>? certificateChain;
  /// Fully qualified domain name (FQDN) in the certificate.
  final pulumi.Input<String>? domainName;
  final pulumi.Input<String>? earlyRenewalDuration;
  final pulumi.Input<String>? keyAlgorithm;
  final pulumi.Input<CertificateOptions>? options;
  final pulumi.Input<String>? privateKey;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// * Creating an Amazon issued certificate
  final pulumi.Input<String>? region;
  final pulumi.Input<List<String>>? subjectAlternativeNames;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<String>? validationMethod;
  final pulumi.Input<List<CertificateValidationOption>>? validationOptions;

  /// Creates a new [CertificateArgs].
  /// [certificateAuthorityArn] Optional.
  /// [certificateBody] Optional.
  /// [certificateChain] Optional.
  /// [domainName] Fully qualified domain name (FQDN) in the certificate.
  /// [earlyRenewalDuration] Optional.
  /// [keyAlgorithm] Optional.
  /// [options] Optional.
  /// [privateKey] Optional.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [subjectAlternativeNames] Optional.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [validationMethod] Optional.
  /// [validationOptions] Optional.
  CertificateArgs({
    this.certificateAuthorityArn,
    this.certificateBody,
    this.certificateChain,
    this.domainName,
    this.earlyRenewalDuration,
    this.keyAlgorithm,
    this.options,
    this.privateKey,
    this.region,
    this.subjectAlternativeNames,
    this.tags,
    this.validationMethod,
    this.validationOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateAuthorityArn': ?certificateAuthorityArn,
      'certificateBody': ?certificateBody,
      'certificateChain': ?certificateChain,
      'domainName': ?domainName,
      'earlyRenewalDuration': ?earlyRenewalDuration,
      'keyAlgorithm': ?keyAlgorithm,
      'options': ?pulumi.Input.mapOptionalInputValue<CertificateOptions, Map<String, dynamic>>(options, (value) => value.toMap()),
      'privateKey': ?privateKey,
      'region': ?region,
      'subjectAlternativeNames': ?subjectAlternativeNames,
      'tags': ?tags,
      'validationMethod': ?validationMethod,
      'validationOptions': ?pulumi.Input.mapOptionalInputValue<List<CertificateValidationOption>, List<Map<String, dynamic>>>(validationOptions, (value) => pulumi.Input.encodeList<CertificateValidationOption, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CertificateArgs.fromMap(Map<String, dynamic> map) {
    return CertificateArgs(
      certificateAuthorityArn: map['certificateAuthorityArn'] == null ? null : ((map['certificateAuthorityArn'] as String).input()).input(),
      certificateBody: map['certificateBody'] == null ? null : ((map['certificateBody'] as String).input()).input(),
      certificateChain: map['certificateChain'] == null ? null : ((map['certificateChain'] as String).input()).input(),
      domainName: map['domainName'] == null ? null : ((map['domainName'] as String).input()).input(),
      earlyRenewalDuration: map['earlyRenewalDuration'] == null ? null : ((map['earlyRenewalDuration'] as String).input()).input(),
      keyAlgorithm: map['keyAlgorithm'] == null ? null : ((map['keyAlgorithm'] as String).input()).input(),
      options: map['options'] == null ? null : ((CertificateOptions.fromMap((map['options']! as Map).cast<String, dynamic>())).input()).input(),
      privateKey: map['privateKey'] == null ? null : ((map['privateKey'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      subjectAlternativeNames: map['subjectAlternativeNames'] == null ? null : (((map['subjectAlternativeNames'] as List).cast<String>()).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      validationMethod: map['validationMethod'] == null ? null : ((map['validationMethod'] as String).input()).input(),
      validationOptions: map['validationOptions'] == null ? null : ((pulumi.Input.decodeList<CertificateValidationOption>(map['validationOptions']!, (value) => CertificateValidationOption.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
    );
  }
}

