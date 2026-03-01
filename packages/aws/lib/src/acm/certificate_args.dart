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
    String? certificateAuthorityArn,
    String? certificateBody,
    String? certificateChain,
    String? domainName,
    String? earlyRenewalDuration,
    String? keyAlgorithm,
    CertificateOptions? options,
    String? privateKey,
    String? region,
    List<String>? subjectAlternativeNames,
    Map<String, String>? tags,
    String? validationMethod,
    List<CertificateValidationOption>? validationOptions,
  }) : certificateAuthorityArn = pulumi.Input.asOptionalInput<String>(
         certificateAuthorityArn,
       ),
       certificateBody = pulumi.Input.asOptionalInput<String>(certificateBody),
       certificateChain = pulumi.Input.asOptionalInput<String>(
         certificateChain,
       ),
       domainName = pulumi.Input.asOptionalInput<String>(domainName),
       earlyRenewalDuration = pulumi.Input.asOptionalInput<String>(
         earlyRenewalDuration,
       ),
       keyAlgorithm = pulumi.Input.asOptionalInput<String>(keyAlgorithm),
       options = pulumi.Input.asOptionalInput<CertificateOptions>(options),
       privateKey = pulumi.Input.asOptionalInput<String>(privateKey),
       region = pulumi.Input.asOptionalInput<String>(region),
       subjectAlternativeNames = pulumi.Input.asOptionalInput<List<String>>(
         subjectAlternativeNames,
       ),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
       validationMethod = pulumi.Input.asOptionalInput<String>(
         validationMethod,
       ),
       validationOptions =
           pulumi.Input.asOptionalInput<List<CertificateValidationOption>>(
             validationOptions,
           );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateAuthorityArn': ?certificateAuthorityArn,
      'certificateBody': ?certificateBody,
      'certificateChain': ?certificateChain,
      'domainName': ?domainName,
      'earlyRenewalDuration': ?earlyRenewalDuration,
      'keyAlgorithm': ?keyAlgorithm,
      'options':
          ?pulumi.Input.mapOptionalInputValue<
            CertificateOptions,
            Map<String, dynamic>
          >(options, (value) => value.toMap()),
      'privateKey': ?privateKey,
      'region': ?region,
      'subjectAlternativeNames': ?subjectAlternativeNames,
      'tags': ?tags,
      'validationMethod': ?validationMethod,
      'validationOptions':
          ?pulumi.Input.mapOptionalInputValue<
            List<CertificateValidationOption>,
            List<Map<String, dynamic>>
          >(
            validationOptions,
            (value) =>
                pulumi.Input.encodeList<
                  CertificateValidationOption,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory CertificateArgs.fromMap(Map<String, dynamic> map) {
    return CertificateArgs(
      certificateAuthorityArn: map['certificateAuthorityArn'] == null
          ? null
          : map['certificateAuthorityArn'] as String,
      certificateBody: map['certificateBody'] == null
          ? null
          : map['certificateBody'] as String,
      certificateChain: map['certificateChain'] == null
          ? null
          : map['certificateChain'] as String,
      domainName: map['domainName'] == null
          ? null
          : map['domainName'] as String,
      earlyRenewalDuration: map['earlyRenewalDuration'] == null
          ? null
          : map['earlyRenewalDuration'] as String,
      keyAlgorithm: map['keyAlgorithm'] == null
          ? null
          : map['keyAlgorithm'] as String,
      options: map['options'] == null
          ? null
          : CertificateOptions.fromMap(
              (map['options'] as Map).cast<String, dynamic>(),
            ),
      privateKey: map['privateKey'] == null
          ? null
          : map['privateKey'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      subjectAlternativeNames: map['subjectAlternativeNames'] == null
          ? null
          : (map['subjectAlternativeNames'] as List).cast<String>(),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      validationMethod: map['validationMethod'] == null
          ? null
          : map['validationMethod'] as String,
      validationOptions: map['validationOptions'] == null
          ? null
          : pulumi.Input.decodeList<CertificateValidationOption>(
              map['validationOptions'],
              (value) => CertificateValidationOption.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
