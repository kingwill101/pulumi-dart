// ignore_for_file: unused_element, unnecessary_cast

class ContainerServicePublicDomainNamesCertificate {
  /// Name of the certificate.
  final String certificateName;

  /// List of domain names for the certificate.
  final List<String> domainNames;

  /// Creates a new [ContainerServicePublicDomainNamesCertificate].
  /// [certificateName] Name of the certificate.
  /// [domainNames] List of domain names for the certificate.
  ContainerServicePublicDomainNamesCertificate({
    required this.certificateName,
    required this.domainNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateName': certificateName,
      'domainNames': domainNames,
    };
  }

  factory ContainerServicePublicDomainNamesCertificate.fromMap(
    Map<String, dynamic> map,
  ) {
    return ContainerServicePublicDomainNamesCertificate(
      certificateName: map['certificateName'] as String,
      domainNames: (map['domainNames'] as List).cast<String>(),
    );
  }
}
