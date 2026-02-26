// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getCertificate.
class GetCertificateResult {
  final String certificate;
  final int certificateId;
  final String creationTimestamp;
  final String description;
  final String expireTime;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String namePrefix;
  final String privateKey;
  final String? project;
  final String selfLink;

  GetCertificateResult({
    required this.certificate,
    required this.certificateId,
    required this.creationTimestamp,
    required this.description,
    required this.expireTime,
    required this.id,
    required this.name,
    required this.namePrefix,
    required this.privateKey,
    this.project,
    required this.selfLink,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificate'] = certificate;
    map['certificateId'] = certificateId;
    map['creationTimestamp'] = creationTimestamp;
    map['description'] = description;
    map['expireTime'] = expireTime;
    map['id'] = id;
    map['name'] = name;
    map['namePrefix'] = namePrefix;
    map['privateKey'] = privateKey;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['selfLink'] = selfLink;
    return map;
  }

  factory GetCertificateResult.fromMap(Map<String, dynamic> map) {
    return GetCertificateResult(
      certificate: map['certificate'] as String,
      certificateId: map['certificateId'] as int,
      creationTimestamp: map['creationTimestamp'] as String,
      description: map['description'] as String,
      expireTime: map['expireTime'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      namePrefix: map['namePrefix'] as String,
      privateKey: map['privateKey'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      selfLink: map['selfLink'] as String,
    );
  }
}
