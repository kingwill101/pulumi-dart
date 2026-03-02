// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDomainExtensionsExtension {
  /// The domain name.
  final pulumi.Input<String> domain;
  /// The ID of the domain extension.
  final pulumi.Input<String> id;
  /// The ID of the certificate used by the domain name.
  final pulumi.Input<String> serverCertificateId;

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
      domain: (map['domain'] as String).input(),
      id: (map['id'] as String).input(),
      serverCertificateId: (map['serverCertificateId'] as String).input(),
    );
  }
}

