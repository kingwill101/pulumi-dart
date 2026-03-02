// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCustomDomainsDomainCertConfig {
  /// The name of the certificate.
  final pulumi.Input<String> certName;
  /// Certificate data of the HTTPS certificates, follow the 'pem'.
  final pulumi.Input<String> certificate;

  /// Creates a new [GetCustomDomainsDomainCertConfig].
  /// [certName] The name of the certificate.
  /// [certificate] Certificate data of the HTTPS certificates, follow the 'pem'.
  GetCustomDomainsDomainCertConfig({
    required this.certName,
    required this.certificate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certName': certName,
      'certificate': certificate,
    };
  }

  factory GetCustomDomainsDomainCertConfig.fromMap(Map<String, dynamic> map) {
    return GetCustomDomainsDomainCertConfig(
      certName: (map['certName'] as String).input(),
      certificate: (map['certificate'] as String).input(),
    );
  }
}

