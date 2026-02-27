// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../certificate_options/certificate_options.dart';
import '../certificate_validation_option/certificate_validation_option.dart';

/// The set of arguments for Certificate.
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
    final map = <String, dynamic>{};
    final certificateAuthorityArnValue = certificateAuthorityArn;
    if (certificateAuthorityArnValue != null) {
      map['certificateAuthorityArn'] = certificateAuthorityArnValue;
    }
    final certificateBodyValue = certificateBody;
    if (certificateBodyValue != null) {
      map['certificateBody'] = certificateBodyValue;
    }
    final certificateChainValue = certificateChain;
    if (certificateChainValue != null) {
      map['certificateChain'] = certificateChainValue;
    }
    final domainNameValue = domainName;
    if (domainNameValue != null) {
      map['domainName'] = domainNameValue;
    }
    final earlyRenewalDurationValue = earlyRenewalDuration;
    if (earlyRenewalDurationValue != null) {
      map['earlyRenewalDuration'] = earlyRenewalDurationValue;
    }
    final keyAlgorithmValue = keyAlgorithm;
    if (keyAlgorithmValue != null) {
      map['keyAlgorithm'] = keyAlgorithmValue;
    }
    final optionsValue = options;
    if (optionsValue != null) {
      map['options'] = pulumi.Input.mapOptionalInputValue<CertificateOptions,
          Map<String, dynamic>>(optionsValue, (value) => value.toMap());
    }
    final privateKeyValue = privateKey;
    if (privateKeyValue != null) {
      map['privateKey'] = privateKeyValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final subjectAlternativeNamesValue = subjectAlternativeNames;
    if (subjectAlternativeNamesValue != null) {
      map['subjectAlternativeNames'] = subjectAlternativeNamesValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final validationMethodValue = validationMethod;
    if (validationMethodValue != null) {
      map['validationMethod'] = validationMethodValue;
    }
    final validationOptionsValue = validationOptions;
    if (validationOptionsValue != null) {
      map['validationOptions'] = pulumi.Input.mapOptionalInputValue<
              List<CertificateValidationOption>, List<Map<String, dynamic>>>(
          validationOptionsValue,
          (value) => pulumi.Input.encodeList<CertificateValidationOption,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory CertificateArgs.fromMap(Map<String, dynamic> map) {
    return CertificateArgs(
      certificateAuthorityArn:
          pulumi.Input.asOptionalInput<String>(map['certificateAuthorityArn']),
      certificateBody:
          pulumi.Input.asOptionalInput<String>(map['certificateBody']),
      certificateChain:
          pulumi.Input.asOptionalInput<String>(map['certificateChain']),
      domainName: pulumi.Input.asOptionalInput<String>(map['domainName']),
      earlyRenewalDuration:
          pulumi.Input.asOptionalInput<String>(map['earlyRenewalDuration']),
      keyAlgorithm: pulumi.Input.asOptionalInput<String>(map['keyAlgorithm']),
      options: pulumi.Input.asOptionalInput<CertificateOptions>(map['options']),
      privateKey: pulumi.Input.asOptionalInput<String>(map['privateKey']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      subjectAlternativeNames: pulumi.Input.asOptionalInput<List<String>>(
          map['subjectAlternativeNames']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      validationMethod:
          pulumi.Input.asOptionalInput<String>(map['validationMethod']),
      validationOptions:
          pulumi.Input.asOptionalInput<List<CertificateValidationOption>>(
              map['validationOptions']),
    );
  }
}
