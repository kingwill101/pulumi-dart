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
      casId: (() { final guardedValue = map['casId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certId: (() { final guardedValue = map['certId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certName: (() { final guardedValue = map['certName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificate: (() { final guardedValue = map['certificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdType: (() { final guardedValue = map['createdType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domains: (() { final guardedValue = map['domains']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateKey: (() { final guardedValue = map['privateKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      siteId: (() { final guardedValue = map['siteId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

