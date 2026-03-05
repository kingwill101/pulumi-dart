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
      certName: (() { final guardedValue = map['certName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificate: (() { final guardedValue = map['certificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateKey: (() { final guardedValue = map['privateKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

