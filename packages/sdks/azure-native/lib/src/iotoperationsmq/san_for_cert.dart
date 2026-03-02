// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SANs for certificate.
class SanForCert {
  /// DNS SANs.
  final pulumi.Input<List<String>> dns;
  /// IP address SANs.
  final pulumi.Input<List<String>> ip;

  /// Creates a new [SanForCert].
  /// [dns] DNS SANs.
  /// [ip] IP address SANs.
  SanForCert({
    required this.dns,
    required this.ip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dns': dns,
      'ip': ip,
    };
  }

  factory SanForCert.fromMap(Map<String, dynamic> map) {
    return SanForCert(
      dns: ((map['dns'] as List).cast<String>()).input(),
      ip: ((map['ip'] as List).cast<String>()).input(),
    );
  }
}

