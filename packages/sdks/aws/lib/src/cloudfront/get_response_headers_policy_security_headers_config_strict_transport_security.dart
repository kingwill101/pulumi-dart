// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetResponseHeadersPolicySecurityHeadersConfigStrictTransportSecurity {
  /// A number that CloudFront uses as the value for the max-age directive in the Strict-Transport-Security HTTP response header.
  final pulumi.Input<int> accessControlMaxAgeSec;
  /// Whether CloudFront includes the includeSubDomains directive in the Strict-Transport-Security HTTP response header.
  final pulumi.Input<bool> includeSubdomains;
  /// Whether CloudFront overrides the X-XSS-Protection HTTP response header received from the origin with the one specified in this response headers policy.
  final pulumi.Input<bool> override;
  /// Whether CloudFront includes the preload directive in the Strict-Transport-Security HTTP response header.
  final pulumi.Input<bool> preload;

  /// Creates a new [GetResponseHeadersPolicySecurityHeadersConfigStrictTransportSecurity].
  /// [accessControlMaxAgeSec] A number that CloudFront uses as the value for the max-age directive in the Strict-Transport-Security HTTP response header.
  /// [includeSubdomains] Whether CloudFront includes the includeSubDomains directive in the Strict-Transport-Security HTTP response header.
  /// [override] Whether CloudFront overrides the X-XSS-Protection HTTP response header received from the origin with the one specified in this response headers policy.
  /// [preload] Whether CloudFront includes the preload directive in the Strict-Transport-Security HTTP response header.
  GetResponseHeadersPolicySecurityHeadersConfigStrictTransportSecurity({
    required this.accessControlMaxAgeSec,
    required this.includeSubdomains,
    required this.override,
    required this.preload,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessControlMaxAgeSec': accessControlMaxAgeSec,
      'includeSubdomains': includeSubdomains,
      'override': override,
      'preload': preload,
    };
  }

  factory GetResponseHeadersPolicySecurityHeadersConfigStrictTransportSecurity.fromMap(Map<String, dynamic> map) {
    return GetResponseHeadersPolicySecurityHeadersConfigStrictTransportSecurity(
      accessControlMaxAgeSec: pulumi.Input.fromValue(map['accessControlMaxAgeSec'] as int),
      includeSubdomains: pulumi.Input.fromValue(map['includeSubdomains'] as bool),
      override: pulumi.Input.fromValue(map['override'] as bool),
      preload: pulumi.Input.fromValue(map['preload'] as bool),
    );
  }
}

