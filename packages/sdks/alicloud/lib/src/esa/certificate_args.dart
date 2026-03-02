// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_esa_certificate_certificate_args_doc}
/// The set of arguments for Certificate.
/// {@endtemplate}
/// {@macro pulumi_esa_certificate_certificate_args_doc}
class CertificateArgs {
  /// Cloud certificate ID.
  final pulumi.Input<String>? casId;
  /// The certificate Id.
  final pulumi.Input<String>? certId;
  /// The certificate name.
  final pulumi.Input<String>? certName;
  /// Certificate content.
  final pulumi.Input<String>? certificate;
  final pulumi.Input<String> createdType;
  /// A list of domain names. Multiple domain names are separated by commas.
  final pulumi.Input<String>? domains;
  final pulumi.Input<String>? privateKey;
  /// Region. This parameter is required if the type is CAS.
  /// For accounts on the Chinese site, this parameter value is: cn-hangzhou
  /// For accounts on the international site, this parameter value is: ap-southeast-1
  final pulumi.Input<String>? region;
  /// The site ID, which can be obtained by calling the ListSites interface.
  final pulumi.Input<String> siteId;
  /// Certificate type. Possible values: lets_encrypt: Let's Encrypt certificate;
  final pulumi.Input<String>? type;

  /// Creates a new [CertificateArgs].
  /// [casId] Cloud certificate ID.
  /// [certId] The certificate Id.
  /// [certName] The certificate name.
  /// [certificate] Certificate content.
  /// [createdType] Required.
  /// [domains] A list of domain names. Multiple domain names are separated by commas.
  /// [privateKey] Optional.
  /// [region] Region. This parameter is required if the type is CAS.
  /// [siteId] The site ID, which can be obtained by calling the ListSites interface.
  /// [type] Certificate type. Possible values: lets_encrypt: Let's Encrypt certificate;
  CertificateArgs({
    this.casId,
    this.certId,
    this.certName,
    this.certificate,
    required this.createdType,
    this.domains,
    this.privateKey,
    this.region,
    required this.siteId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'casId': ?casId,
      'certId': ?certId,
      'certName': ?certName,
      'certificate': ?certificate,
      'createdType': createdType,
      'domains': ?domains,
      'privateKey': ?privateKey,
      'region': ?region,
      'siteId': siteId,
      'type': ?type,
    };
  }

  factory CertificateArgs.fromMap(Map<String, dynamic> map) {
    return CertificateArgs(
      casId: map['casId'] == null ? null : (map['casId'] as String).input(),
      certId: map['certId'] == null ? null : (map['certId'] as String).input(),
      certName: map['certName'] == null ? null : (map['certName'] as String).input(),
      certificate: map['certificate'] == null ? null : (map['certificate'] as String).input(),
      createdType: (map['createdType'] as String).input(),
      domains: map['domains'] == null ? null : (map['domains'] as String).input(),
      privateKey: map['privateKey'] == null ? null : (map['privateKey'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      siteId: (map['siteId'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

