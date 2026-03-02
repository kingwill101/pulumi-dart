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
  GetServerCertificatesCertificate({
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
      alicloudCertificateId: (map['alicloudCertificateId'] as String).input(),
      alicloudCertificateName: (map['alicloudCertificateName'] as String).input(),
      commonName: (map['commonName'] as String).input(),
      createdTime: (map['createdTime'] as String).input(),
      createdTimestamp: (map['createdTimestamp'] as int).input(),
      expiredTime: (map['expiredTime'] as String).input(),
      expiredTimestamp: (map['expiredTimestamp'] as int).input(),
      fingerprint: (map['fingerprint'] as String).input(),
      id: (map['id'] as String).input(),
      isAlicloudCertificate: (map['isAlicloudCertificate'] as bool).input(),
      name: (map['name'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
      subjectAlternativeNames: ((map['subjectAlternativeNames'] as List).cast<String>()).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

