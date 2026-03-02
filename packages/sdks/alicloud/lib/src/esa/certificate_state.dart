// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Certificate resources.
class CertificateState {
  /// Cloud certificate ID.
  final pulumi.Input<String>? casId;
  /// The certificate Id.
  final pulumi.Input<String>? certId;
  /// The certificate name.
  final pulumi.Input<String>? certName;
  /// Certificate content.
  final pulumi.Input<String>? certificate;
  /// Creation time.
  final pulumi.Input<String>? createTime;
  final pulumi.Input<String>? createdType;
  /// A list of domain names. Multiple domain names are separated by commas.
  final pulumi.Input<String>? domains;
  final pulumi.Input<String>? privateKey;
  /// Region. This parameter is required if the type is CAS.
  /// For accounts on the Chinese site, this parameter value is: cn-hangzhou
  /// For accounts on the international site, this parameter value is: ap-southeast-1
  final pulumi.Input<String>? region;
  /// The site ID, which can be obtained by calling the ListSites interface.
  final pulumi.Input<String>? siteId;
  /// Certificate status.(within 30 days).- issued.- applying.- application failed.- canceled.
  final pulumi.Input<String>? status;
  /// Certificate type. Possible values: lets_encrypt: Let's Encrypt certificate;
  final pulumi.Input<String>? type;

  /// Creates a new [CertificateState].
  /// [casId] Cloud certificate ID.
  /// [certId] The certificate Id.
  /// [certName] The certificate name.
  /// [certificate] Certificate content.
  /// [createTime] Creation time.
  /// [createdType] Optional.
  /// [domains] A list of domain names. Multiple domain names are separated by commas.
  /// [privateKey] Optional.
  /// [region] Region. This parameter is required if the type is CAS.
  /// [siteId] The site ID, which can be obtained by calling the ListSites interface.
  /// [status] Certificate status.(within 30 days).- issued.- applying.- application failed.- canceled.
  /// [type] Certificate type. Possible values: lets_encrypt: Let's Encrypt certificate;
  CertificateState({
    this.casId,
    this.certId,
    this.certName,
    this.certificate,
    this.createTime,
    this.createdType,
    this.domains,
    this.privateKey,
    this.region,
    this.siteId,
    this.status,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'casId': ?casId,
      'certId': ?certId,
      'certName': ?certName,
      'certificate': ?certificate,
      'createTime': ?createTime,
      'createdType': ?createdType,
      'domains': ?domains,
      'privateKey': ?privateKey,
      'region': ?region,
      'siteId': ?siteId,
      'status': ?status,
      'type': ?type,
    };
  }

  factory CertificateState.fromMap(Map<String, dynamic> map) {
    return CertificateState(
      casId: map['casId'] == null ? null : (map['casId'] as String).input(),
      certId: map['certId'] == null ? null : (map['certId'] as String).input(),
      certName: map['certName'] == null ? null : (map['certName'] as String).input(),
      certificate: map['certificate'] == null ? null : (map['certificate'] as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      createdType: map['createdType'] == null ? null : (map['createdType'] as String).input(),
      domains: map['domains'] == null ? null : (map['domains'] as String).input(),
      privateKey: map['privateKey'] == null ? null : (map['privateKey'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      siteId: map['siteId'] == null ? null : (map['siteId'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

