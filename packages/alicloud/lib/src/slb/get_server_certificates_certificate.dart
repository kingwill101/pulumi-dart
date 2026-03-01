// ignore_for_file: unused_element, unnecessary_cast


class GetServerCertificatesCertificate {
  /// Id of server certificate issued by alibaba cloud.
  final String alicloudCertificateId;
  /// Name of server certificate issued by alibaba cloud.
  final String alicloudCertificateName;
  /// Server certificate common name.
  final String commonName;
  /// Server certificate created time.
  final String createdTime;
  /// Server certificate created timestamp.
  final int createdTimestamp;
  /// Server certificate expired time.
  final String expiredTime;
  /// Server certificate expired timestamp.
  final int expiredTimestamp;
  /// Server certificate fingerprint.
  final String fingerprint;
  /// Server certificate ID.
  final String id;
  /// Is server certificate issued by alibaba cloud or not.
  final bool isAlicloudCertificate;
  /// Server certificate name.
  final String name;
  /// The Id of resource group which the slb server certificates belongs.
  final String? resourceGroupId;
  /// Server certificate subject alternative name list.
  final List<String> subjectAlternativeNames;
  /// A mapping of tags to assign to the resource.
  final Map<String, String>? tags;

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
      alicloudCertificateId: map['alicloudCertificateId'] as String,
      alicloudCertificateName: map['alicloudCertificateName'] as String,
      commonName: map['commonName'] as String,
      createdTime: map['createdTime'] as String,
      createdTimestamp: map['createdTimestamp'] as int,
      expiredTime: map['expiredTime'] as String,
      expiredTimestamp: map['expiredTimestamp'] as int,
      fingerprint: map['fingerprint'] as String,
      id: map['id'] as String,
      isAlicloudCertificate: map['isAlicloudCertificate'] as bool,
      name: map['name'] as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      subjectAlternativeNames: (map['subjectAlternativeNames'] as List).cast<String>(),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

