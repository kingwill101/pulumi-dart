// ignore_for_file: unused_element, unnecessary_cast


/// Definition of LegacyCustomOrigin
class LegacyCustomOriginResponse {
  /// Property dnsName
  final String? dnsName;
  /// Property httpPort
  final int? httpPort;
  /// Property httpsPort
  final int? httpsPort;
  /// Property originProtocolPolicy
  final String? originProtocolPolicy;
  /// Property originSSLProtocols
  final List<String>? originSSLProtocols;

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
      dnsName: map['dnsName'] == null ? null : map['dnsName'] as String,
      httpPort: map['httpPort'] == null ? null : map['httpPort'] as int,
      httpsPort: map['httpsPort'] == null ? null : map['httpsPort'] as int,
      originProtocolPolicy: map['originProtocolPolicy'] == null ? null : map['originProtocolPolicy'] as String,
      originSSLProtocols: map['originSSLProtocols'] == null ? null : (map['originSSLProtocols'] as List).cast<String>(),
    );
  }
}

