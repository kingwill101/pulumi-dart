// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCaCertificatesCertificate {
  /// (Available in v1.123.1+) CA certificate ID.
  final pulumi.Input<String> caCertificateId;
  /// (Available in v1.123.1+) CA certificate name.
  final pulumi.Input<String> caCertificateName;
  /// CA certificate common name.
  final pulumi.Input<String> commonName;
  /// CA certificate created timestamp.
  final pulumi.Input<int> createdTimestamp;
  /// CA certificate expired time.
  final pulumi.Input<String> expiredTime;
  /// CA certificate expired timestamp.
  final pulumi.Input<int> expiredTimestamp;
  /// CA certificate fingerprint.
  final pulumi.Input<String> fingerprint;
  /// CA certificate ID.
  final pulumi.Input<String> id;
  /// (Deprecated from v1.123.1) Deprecated and replace by `ca_certificate_name`.
  final pulumi.Input<String> name;
  /// The Id of resource group which ca certificates belongs.
  final pulumi.Input<String> resourceGroupId;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>> tags;

  /// Creates a new [GetCaCertificatesCertificate].
  /// [caCertificateId] (Available in v1.123.1+) CA certificate ID.
  /// [caCertificateName] (Available in v1.123.1+) CA certificate name.
  /// [commonName] CA certificate common name.
  /// [createdTimestamp] CA certificate created timestamp.
  /// [expiredTime] CA certificate expired time.
  /// [expiredTimestamp] CA certificate expired timestamp.
  /// [fingerprint] CA certificate fingerprint.
  /// [id] CA certificate ID.
  /// [name] (Deprecated from v1.123.1) Deprecated and replace by `ca_certificate_name`.
  /// [resourceGroupId] The Id of resource group which ca certificates belongs.
  /// [tags] A mapping of tags to assign to the resource.
  GetCaCertificatesCertificate({
    required this.caCertificateId,
    required this.caCertificateName,
    required this.commonName,
    required this.createdTimestamp,
    required this.expiredTime,
    required this.expiredTimestamp,
    required this.fingerprint,
    required this.id,
    required this.name,
    required this.resourceGroupId,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caCertificateId': caCertificateId,
      'caCertificateName': caCertificateName,
      'commonName': commonName,
      'createdTimestamp': createdTimestamp,
      'expiredTime': expiredTime,
      'expiredTimestamp': expiredTimestamp,
      'fingerprint': fingerprint,
      'id': id,
      'name': name,
      'resourceGroupId': resourceGroupId,
      'tags': tags,
    };
  }

  factory GetCaCertificatesCertificate.fromMap(Map<String, dynamic> map) {
    return GetCaCertificatesCertificate(
      caCertificateId: (map['caCertificateId'] as String).input(),
      caCertificateName: (map['caCertificateName'] as String).input(),
      commonName: (map['commonName'] as String).input(),
      createdTimestamp: (map['createdTimestamp'] as int).input(),
      expiredTime: (map['expiredTime'] as String).input(),
      expiredTimestamp: (map['expiredTimestamp'] as int).input(),
      fingerprint: (map['fingerprint'] as String).input(),
      id: (map['id'] as String).input(),
      name: (map['name'] as String).input(),
      resourceGroupId: (map['resourceGroupId'] as String).input(),
      tags: ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

