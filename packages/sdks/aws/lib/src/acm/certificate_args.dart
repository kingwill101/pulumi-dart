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
  const CertificateArgs({
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
      certificateAuthorityArn: (() { final guardedValue = map['certificateAuthorityArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificateBody: (() { final guardedValue = map['certificateBody']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificateChain: (() { final guardedValue = map['certificateChain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      earlyRenewalDuration: (() { final guardedValue = map['earlyRenewalDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyAlgorithm: (() { final guardedValue = map['keyAlgorithm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      options: (() { final guardedValue = map['options']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CertificateOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      privateKey: (() { final guardedValue = map['privateKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subjectAlternativeNames: (() { final guardedValue = map['subjectAlternativeNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      validationMethod: (() { final guardedValue = map['validationMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      validationOptions: (() { final guardedValue = map['validationOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CertificateValidationOption>(guardedValue, (value) => CertificateValidationOption.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

