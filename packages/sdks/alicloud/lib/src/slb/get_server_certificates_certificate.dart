// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServerCertificatesCertificate {
  /// Id of server certificate issued by alibaba cloud.
  final pulumi.Input<String> alicloudCertificateId;
  /// Name of server certificate issued by alibaba cloud.
  final pulumi.Input<String> alicloudCertificateName;
  /// Server certificate common name.
  final pulumi.Input<String> commonName;
  /// Server certificate created time.
  final pulumi.Input<String> createdTime;
  /// Server certificate created timestamp.
  final pulumi.Input<int> createdTimestamp;
  /// Server certificate expired time.
  final pulumi.Input<String> expiredTime;
  /// Server certificate expired timestamp.
  final pulumi.Input<int> expiredTimestamp;
  /// Server certificate fingerprint.
  final pulumi.Input<String> fingerprint;
  /// Server certificate ID.
  final pulumi.Input<String> id;
  /// Is server certificate issued by alibaba cloud or not.
  final pulumi.Input<bool> isAlicloudCertificate;
  /// Server certificate name.
  final pulumi.Input<String> name;
  /// The Id of resource group which the slb server certificates belongs.
  final pulumi.Input<String>? resourceGroupId;
  /// Server certificate subject alternative name list.
  final pulumi.Input<List<String>> subjectAlternativeNames;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetServerCertificatesCertificate].
  /// [alicloudCertificateId] Id of server certificate issued by alibaba cloud.
  /// [alicloudCertificateName] Name of server certificate issued by alibaba cloud.
  /// [commonName] Server certificate common name.
  /// [createdTime] Server certificate created time.
  /// [createdTimestamp] Server certificate created timestamp.
  /// [expiredTime] Server certificate expired time.
  /// [expiredTimestamp] Server certificate expired timestamp.
  /// [fingerprint] Server certificate fingerprint.
  /// [id] Server certificate ID.
  /// [isAlicloudCertificate] Is server certificate issued by alibaba cloud or not.
  /// [name] Server certificate name.
  /// [resourceGroupId] The Id of resource group which the slb server certificates belongs.
  /// [subjectAlternativeNames] Server certificate subject alternative name list.
  /// [tags] A mapping of tags to assign to the resource.
  const GetServerCertificatesCertificate({
    required this.alicloudCertificateId,
    required this.alicloudCertificateName,
    required this.commonName,
    required this.createdTime,
    required this.createdTimestamp,
    required this.expiredTime,
    required this.expiredTimestamp,
    required this.fingerprint,
    required this.id,
    required this.isAlicloudCertificate,
    required this.name,
    this.resourceGroupId,
    required this.subjectAlternativeNames,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alicloudCertificateId': alicloudCertificateId,
      'alicloudCertificateName': alicloudCertificateName,
      'commonName': commonName,
      'createdTime': createdTime,
      'createdTimestamp': createdTimestamp,
      'expiredTime': expiredTime,
      'expiredTimestamp': expiredTimestamp,
      'fingerprint': fingerprint,
      'id': id,
      'isAlicloudCertificate': isAlicloudCertificate,
      'name': name,
      'resourceGroupId': ?resourceGroupId,
      'subjectAlternativeNames': subjectAlternativeNames,
      'tags': ?tags,
    };
  }

  factory GetServerCertificatesCertificate.fromMap(Map<String, dynamic> map) {
    return GetServerCertificatesCertificate(
      alicloudCertificateId: pulumi.Input.fromValue(map['alicloudCertificateId'] as String),
      alicloudCertificateName: pulumi.Input.fromValue(map['alicloudCertificateName'] as String),
      commonName: pulumi.Input.fromValue(map['commonName'] as String),
      createdTime: pulumi.Input.fromValue(map['createdTime'] as String),
      createdTimestamp: pulumi.Input.fromValue(map['createdTimestamp'] as int),
      expiredTime: pulumi.Input.fromValue(map['expiredTime'] as String),
      expiredTimestamp: pulumi.Input.fromValue(map['expiredTimestamp'] as int),
      fingerprint: pulumi.Input.fromValue(map['fingerprint'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      isAlicloudCertificate: pulumi.Input.fromValue(map['isAlicloudCertificate'] as bool),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subjectAlternativeNames: pulumi.Input.fromValue((map['subjectAlternativeNames'] as List).cast<String>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

