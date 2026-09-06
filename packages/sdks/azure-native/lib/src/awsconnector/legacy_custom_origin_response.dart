// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of LegacyCustomOrigin
class LegacyCustomOriginResponse {
  /// Property dnsName
  final pulumi.Input<String?>? dnsName;
  /// Property httpPort
  final pulumi.Input<int?>? httpPort;
  /// Property httpsPort
  final pulumi.Input<int?>? httpsPort;
  /// Property originProtocolPolicy
  final pulumi.Input<String?>? originProtocolPolicy;
  /// Property originSSLProtocols
  final pulumi.Input<List<String>?>? originSSLProtocols;

  /// Creates a new [LegacyCustomOriginResponse].
  /// [dnsName] Property dnsName
  /// [httpPort] Property httpPort
  /// [httpsPort] Property httpsPort
  /// [originProtocolPolicy] Property originProtocolPolicy
  /// [originSSLProtocols] Property originSSLProtocols
  LegacyCustomOriginResponse({
    this.dnsName,
    pulumi.Input<int?>? httpPort,
    pulumi.Input<int?>? httpsPort,
    this.originProtocolPolicy,
    this.originSSLProtocols,
  }) : httpPort = httpPort ?? pulumi.Input.fromValue(80), httpsPort = httpsPort ?? pulumi.Input.fromValue(443);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsName': ?dnsName,
      'httpPort': ?httpPort,
      'httpsPort': ?httpsPort,
      'originProtocolPolicy': ?originProtocolPolicy,
      'originSSLProtocols': ?originSSLProtocols,
    };
  }

  factory LegacyCustomOriginResponse.fromMap(Map<String, dynamic> map) {
    return LegacyCustomOriginResponse(
      dnsName: (() { final guardedValue = map['dnsName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      httpPort: (() { final guardedValue = map['httpPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      httpsPort: (() { final guardedValue = map['httpsPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      originProtocolPolicy: (() { final guardedValue = map['originProtocolPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      originSSLProtocols: (() { final guardedValue = map['originSSLProtocols']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
