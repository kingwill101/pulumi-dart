// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainCertificateConfig {
  final pulumi.Input<String>? privateKey;
  final pulumi.Input<String>? serverCertificate;
  final pulumi.Input<String>? serverCertificateStatus;

  /// Creates a new [DomainCertificateConfig].
  /// [privateKey] Optional.
  /// [serverCertificate] Optional.
  /// [serverCertificateStatus] Optional.
  DomainCertificateConfig({
    this.privateKey,
    this.serverCertificate,
    this.serverCertificateStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateKey': ?privateKey,
      'serverCertificate': ?serverCertificate,
      'serverCertificateStatus': ?serverCertificateStatus,
    };
  }

  factory DomainCertificateConfig.fromMap(Map<String, dynamic> map) {
    return DomainCertificateConfig(
      privateKey: (() { final guardedValue = map['privateKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverCertificate: (() { final guardedValue = map['serverCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverCertificateStatus: (() { final guardedValue = map['serverCertificateStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

