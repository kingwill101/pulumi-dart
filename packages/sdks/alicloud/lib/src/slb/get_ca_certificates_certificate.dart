// ignore_for_file: unused_element, unnecessary_cast


class GetCaCertificatesCertificate {
  /// (Available in v1.123.1+) CA certificate ID.
  final String caCertificateId;
  /// (Available in v1.123.1+) CA certificate name.
  final String caCertificateName;
  /// CA certificate common name.
  final String commonName;
  /// CA certificate created timestamp.
  final int createdTimestamp;
  /// CA certificate expired time.
  final String expiredTime;
  /// CA certificate expired timestamp.
  final int expiredTimestamp;
  /// CA certificate fingerprint.
  final String fingerprint;
  /// CA certificate ID.
  final String id;
  /// (Deprecated from v1.123.1) Deprecated and replace by `ca_certificate_name`.
  final String name;
  /// The Id of resource group which ca certificates belongs.
  final String resourceGroupId;
  /// A mapping of tags to assign to the resource.
  final Map<String, String> tags;

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
      caCertificateId: map['caCertificateId'] as String,
      caCertificateName: map['caCertificateName'] as String,
      commonName: map['commonName'] as String,
      createdTimestamp: map['createdTimestamp'] as int,
      expiredTime: map['expiredTime'] as String,
      expiredTimestamp: map['expiredTimestamp'] as int,
      fingerprint: map['fingerprint'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      resourceGroupId: map['resourceGroupId'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

