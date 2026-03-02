// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_service_public_domain_names_certificate.dart';

class ContainerServicePublicDomainNames {
  /// Set of certificate configurations for the public domain names. Each element contains the following attributes:
  final pulumi.Input<List<ContainerServicePublicDomainNamesCertificate>> certificates;

  /// Creates a new [ContainerServicePublicDomainNames].
  /// [certificates] Set of certificate configurations for the public domain names. Each element contains the following attributes:
  ContainerServicePublicDomainNames({
    required this.certificates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificates': pulumi.Input.mapInputValue<List<ContainerServicePublicDomainNamesCertificate>, List<Map<String, dynamic>>>(certificates, (value) => pulumi.Input.encodeList<ContainerServicePublicDomainNamesCertificate, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ContainerServicePublicDomainNames.fromMap(Map<String, dynamic> map) {
    return ContainerServicePublicDomainNames(
      certificates: (pulumi.Input.decodeList<ContainerServicePublicDomainNamesCertificate>(map['certificates']!, (value) => ContainerServicePublicDomainNamesCertificate.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

