// ignore_for_file: unused_element, unnecessary_cast

class ContainerServicePublicDomainNamesCertificate {
  /// Name of the certificate.
  final String certificateName;

  /// List of domain names for the certificate.
  final List<String> domainNames;

  ContainerServicePublicDomainNamesCertificate({
    required this.certificateName,
    required this.domainNames,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificateName'] = certificateName;
    map['domainNames'] = domainNames;
    return map;
  }

  factory ContainerServicePublicDomainNamesCertificate.fromMap(
      Map<String, dynamic> map) {
    return ContainerServicePublicDomainNamesCertificate(
      certificateName: map['certificateName'] as String,
      domainNames: (map['domainNames'] as List).cast<String>(),
    );
  }
}
