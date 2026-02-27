// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../keystores_aliases_self_signed_cert_subject/keystores_aliases_self_signed_cert_subject.dart';
import '../keystores_aliases_self_signed_cert_subject_alternative_dns_names/keystores_aliases_self_signed_cert_subject_alternative_dns_names.dart';

/// The set of arguments for KeystoresAliasesSelfSignedCert.
class KeystoresAliasesSelfSignedCertArgs {
  /// Alias for the key/certificate pair. Values must match the regular expression [\w\s-.]{1,255}.
  /// This must be provided for all formats except selfsignedcert; self-signed certs may specify the alias in either
  /// this parameter or the JSON body.
  final pulumi.Input<String> alias;

  /// Validity duration of certificate, in days. Accepts positive non-zero value. Defaults to 365.
  final pulumi.Input<int>? certValidityInDays;

  /// The Apigee environment name
  final pulumi.Input<String> environment;

  /// Key size. Default and maximum value is 2048 bits.
  final pulumi.Input<String>? keySize;

  /// The Apigee keystore name associated in an Apigee environment
  final pulumi.Input<String> keystore;

  /// The Apigee Organization name associated with the Apigee environment
  final pulumi.Input<String> orgId;

  /// Signature algorithm to generate private key. Valid values are SHA512withRSA, SHA384withRSA, and SHA256withRSA
  final pulumi.Input<String> sigAlg;

  /// Subject details.
  /// Structure is documented below.
  final pulumi.Input<KeystoresAliasesSelfSignedCertSubject> subject;

  /// List of alternative host names. Maximum length is 255 characters for each value.
  /// Structure is documented below.
  final pulumi.Input<KeystoresAliasesSelfSignedCertSubjectAlternativeDnsNames>?
      subjectAlternativeDnsNames;

  KeystoresAliasesSelfSignedCertArgs({
    required this.alias,
    this.certValidityInDays,
    required this.environment,
    this.keySize,
    required this.keystore,
    required this.orgId,
    required this.sigAlg,
    required this.subject,
    this.subjectAlternativeDnsNames,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['alias'] = alias;
    final certValidityInDaysValue = certValidityInDays;
    if (certValidityInDaysValue != null) {
      map['certValidityInDays'] = certValidityInDaysValue;
    }
    map['environment'] = environment;
    final keySizeValue = keySize;
    if (keySizeValue != null) {
      map['keySize'] = keySizeValue;
    }
    map['keystore'] = keystore;
    map['orgId'] = orgId;
    map['sigAlg'] = sigAlg;
    map['subject'] = pulumi.Input.mapInputValue<
        KeystoresAliasesSelfSignedCertSubject,
        Map<String, dynamic>>(subject, (value) => value.toMap());
    final subjectAlternativeDnsNamesValue = subjectAlternativeDnsNames;
    if (subjectAlternativeDnsNamesValue != null) {
      map['subjectAlternativeDnsNames'] = pulumi.Input.mapOptionalInputValue<
              KeystoresAliasesSelfSignedCertSubjectAlternativeDnsNames,
              Map<String, dynamic>>(
          subjectAlternativeDnsNamesValue, (value) => value.toMap());
    }
    return map;
  }

  factory KeystoresAliasesSelfSignedCertArgs.fromMap(Map<String, dynamic> map) {
    return KeystoresAliasesSelfSignedCertArgs(
      alias: pulumi.Input.asInput<String>(map['alias']),
      certValidityInDays:
          pulumi.Input.asOptionalInput<int>(map['certValidityInDays']),
      environment: pulumi.Input.asInput<String>(map['environment']),
      keySize: pulumi.Input.asOptionalInput<String>(map['keySize']),
      keystore: pulumi.Input.asInput<String>(map['keystore']),
      orgId: pulumi.Input.asInput<String>(map['orgId']),
      sigAlg: pulumi.Input.asInput<String>(map['sigAlg']),
      subject: pulumi.Input.asInput<KeystoresAliasesSelfSignedCertSubject>(
          map['subject']),
      subjectAlternativeDnsNames: pulumi.Input.asOptionalInput<
              KeystoresAliasesSelfSignedCertSubjectAlternativeDnsNames>(
          map['subjectAlternativeDnsNames']),
    );
  }
}
