// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of LegacyCustomOrigin
class LegacyCustomOriginResponse {
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

  /// Creates a new [LegacyCustomOriginResponse].
  /// [dnsName] Property dnsName
  /// [httpPort] Property httpPort
  /// [httpsPort] Property httpsPort
  /// [originProtocolPolicy] Property originProtocolPolicy
  /// [originSSLProtocols] Property originSSLProtocols
  LegacyCustomOriginResponse({
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

  factory LegacyCustomOriginResponse.fromMap(Map<String, dynamic> map) {
    return LegacyCustomOriginResponse(
      dnsName: map['dnsName'] == null ? null : (map['dnsName']! as String).input(),
      httpPort: map['httpPort'] == null ? null : (map['httpPort']! as int).input(),
      httpsPort: map['httpsPort'] == null ? null : (map['httpsPort']! as int).input(),
      originProtocolPolicy: map['originProtocolPolicy'] == null ? null : (map['originProtocolPolicy']! as String).input(),
      originSSLProtocols: map['originSSLProtocols'] == null ? null : ((map['originSSLProtocols']! as List).cast<String>()).input(),
    );
  }
}

