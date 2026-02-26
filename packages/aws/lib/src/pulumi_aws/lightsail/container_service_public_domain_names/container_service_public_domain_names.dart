// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../container_service_public_domain_names_certificate/container_service_public_domain_names_certificate.dart';

class ContainerServicePublicDomainNames {
  /// Set of certificate configurations for the public domain names. Each element contains the following attributes:
  final List<ContainerServicePublicDomainNamesCertificate> certificates;

  ContainerServicePublicDomainNames({
    required this.certificates,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificates'] = Input.encodeList<
        ContainerServicePublicDomainNamesCertificate,
        Map<String, dynamic>>(certificates, (value) => value.toMap());
    return map;
  }

  factory ContainerServicePublicDomainNames.fromMap(Map<String, dynamic> map) {
    return ContainerServicePublicDomainNames(
      certificates:
          Input.decodeList<ContainerServicePublicDomainNamesCertificate>(
              map['certificates'],
              (value) => ContainerServicePublicDomainNamesCertificate.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
