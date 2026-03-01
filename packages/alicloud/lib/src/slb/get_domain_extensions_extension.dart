// ignore_for_file: unused_element, unnecessary_cast


class GetDomainExtensionsExtension {
  /// The domain name.
  final String domain;
  /// The ID of the domain extension.
  final String id;
  /// The ID of the certificate used by the domain name.
  final String serverCertificateId;

  /// Creates a new [GetDomainExtensionsExtension].
  /// [domain] The domain name.
  /// [id] The ID of the domain extension.
  /// [serverCertificateId] The ID of the certificate used by the domain name.
  GetDomainExtensionsExtension({
    required this.domain,
    required this.id,
    required this.serverCertificateId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
      'id': id,
      'serverCertificateId': serverCertificateId,
    };
  }

  factory GetDomainExtensionsExtension.fromMap(Map<String, dynamic> map) {
    return GetDomainExtensionsExtension(
      domain: map['domain'] as String,
      id: map['id'] as String,
      serverCertificateId: map['serverCertificateId'] as String,
    );
  }
}

