// ignore_for_file: unused_element, unnecessary_cast


class GetCertificatesCertificate {
  /// Certificate recording ID.
  final String certificateId;
  /// Your certificate name.
  final String certificateName;
  /// Certificate bound to the domain name.
  final String commonName;
  /// WAF domain name.
  final String domain;
  /// The ID of the Certificate.
  final String id;
  /// WAF instance ID.
  final String instanceId;
  final bool isUsing;
  final List<String> sans;

  /// Creates a new [GetCertificatesCertificate].
  /// [certificateId] Certificate recording ID.
  /// [certificateName] Your certificate name.
  /// [commonName] Certificate bound to the domain name.
  /// [domain] WAF domain name.
  /// [id] The ID of the Certificate.
  /// [instanceId] WAF instance ID.
  /// [isUsing] Required.
  /// [sans] Required.
  GetCertificatesCertificate({
    required this.certificateId,
    required this.certificateName,
    required this.commonName,
    required this.domain,
    required this.id,
    required this.instanceId,
    required this.isUsing,
    required this.sans,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateId': certificateId,
      'certificateName': certificateName,
      'commonName': commonName,
      'domain': domain,
      'id': id,
      'instanceId': instanceId,
      'isUsing': isUsing,
      'sans': sans,
    };
  }

  factory GetCertificatesCertificate.fromMap(Map<String, dynamic> map) {
    return GetCertificatesCertificate(
      certificateId: map['certificateId'] as String,
      certificateName: map['certificateName'] as String,
      commonName: map['commonName'] as String,
      domain: map['domain'] as String,
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      isUsing: map['isUsing'] as bool,
      sans: (map['sans'] as List).cast<String>(),
    );
  }
}

