// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of LegacyCustomOrigin
class LegacyCustomOrigin {
  /// Property dnsName
  final pulumi.Input<String>? dnsName;
  /// Property httpPort
  final pulumi.Input<int>? httpPort;
  /// Property httpsPort
  final pulumi.Input<int>? httpsPort;
  /// Property originProtocolPolicy
  final pulumi.Input<String>? originProtocolPolicy;
  /// Property originSSLProtocols
  final pulumi.Input<List<String>>? originSSLProtocols;

  /// Creates a new [LegacyCustomOrigin].
  /// [dnsName] Property dnsName
  /// [httpPort] Property httpPort
  /// [httpsPort] Property httpsPort
  /// [originProtocolPolicy] Property originProtocolPolicy
  /// [originSSLProtocols] Property originSSLProtocols
  const LegacyCustomOrigin({
    this.dnsName,
    this.httpPort,
    this.httpsPort,
    this.originProtocolPolicy,
    this.originSSLProtocols,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsName': ?dnsName,
      'httpPort': ?httpPort,
      'httpsPort': ?httpsPort,
      'originProtocolPolicy': ?originProtocolPolicy,
      'originSSLProtocols': ?originSSLProtocols,
    };
  }

  factory LegacyCustomOrigin.fromMap(Map<String, dynamic> map) {
    return LegacyCustomOrigin(
      dnsName: (() { final guardedValue = map['dnsName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      httpPort: (() { final guardedValue = map['httpPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      httpsPort: (() { final guardedValue = map['httpsPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      originProtocolPolicy: (() { final guardedValue = map['originProtocolPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      originSSLProtocols: (() { final guardedValue = map['originSSLProtocols']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
