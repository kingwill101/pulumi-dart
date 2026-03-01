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
    String? casId,
    String? certId,
    String? certName,
    String? certificate,
    required String createdType,
    String? domains,
    String? privateKey,
    String? region,
    required String siteId,
    String? type,
  }) :
      casId = pulumi.Input.asOptionalInput<String>(casId),
      certId = pulumi.Input.asOptionalInput<String>(certId),
      certName = pulumi.Input.asOptionalInput<String>(certName),
      certificate = pulumi.Input.asOptionalInput<String>(certificate),
      createdType = pulumi.Input.asInput<String>(createdType),
      domains = pulumi.Input.asOptionalInput<String>(domains),
      privateKey = pulumi.Input.asOptionalInput<String>(privateKey),
      region = pulumi.Input.asOptionalInput<String>(region),
      siteId = pulumi.Input.asInput<String>(siteId),
      type = pulumi.Input.asOptionalInput<String>(type);

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
      casId: map['casId'] == null ? null : map['casId'] as String,
      certId: map['certId'] == null ? null : map['certId'] as String,
      certName: map['certName'] == null ? null : map['certName'] as String,
      certificate: map['certificate'] == null ? null : map['certificate'] as String,
      createdType: map['createdType'] as String,
      domains: map['domains'] == null ? null : map['domains'] as String,
      privateKey: map['privateKey'] == null ? null : map['privateKey'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      siteId: map['siteId'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

