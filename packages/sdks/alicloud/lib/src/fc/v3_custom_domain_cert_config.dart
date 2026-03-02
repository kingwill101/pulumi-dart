// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V3CustomDomainCertConfig {
  /// Certificate Name
  final pulumi.Input<String>? certName;
  /// PEM format certificate
  final pulumi.Input<String>? certificate;
  /// Private Key in PEM format
  final pulumi.Input<String>? privateKey;

  /// Creates a new [V3CustomDomainCertConfig].
  /// [certName] Certificate Name
  /// [certificate] PEM format certificate
  /// [privateKey] Private Key in PEM format
  V3CustomDomainCertConfig({
    this.certName,
    this.certificate,
    this.privateKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certName': ?certName,
      'certificate': ?certificate,
      'privateKey': ?privateKey,
    };
  }

  factory V3CustomDomainCertConfig.fromMap(Map<String, dynamic> map) {
    return V3CustomDomainCertConfig(
      certName: map['certName'] == null ? null : (map['certName']! as String).input(),
      certificate: map['certificate'] == null ? null : (map['certificate']! as String).input(),
      privateKey: map['privateKey'] == null ? null : (map['privateKey']! as String).input(),
    );
  }
}

