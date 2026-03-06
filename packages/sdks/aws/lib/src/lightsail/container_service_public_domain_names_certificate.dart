// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ContainerServicePublicDomainNamesCertificate {
  /// Name of the certificate.
  final pulumi.Input<String> certificateName;
  /// List of domain names for the certificate.
  final pulumi.Input<List<String>> domainNames;

  /// Creates a new [ContainerServicePublicDomainNamesCertificate].
  /// [certificateName] Name of the certificate.
  /// [domainNames] List of domain names for the certificate.
  const ContainerServicePublicDomainNamesCertificate({
    required this.certificateName,
    required this.domainNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateName': certificateName,
      'domainNames': domainNames,
    };
  }

  factory ContainerServicePublicDomainNamesCertificate.fromMap(Map<String, dynamic> map) {
    return ContainerServicePublicDomainNamesCertificate(
      certificateName: pulumi.Input.fromValue(map['certificateName'] as String),
      domainNames: pulumi.Input.fromValue((map['domainNames'] as List).cast<String>()),
    );
  }
}

