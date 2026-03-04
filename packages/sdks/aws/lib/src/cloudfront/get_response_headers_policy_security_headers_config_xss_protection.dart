// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetResponseHeadersPolicySecurityHeadersConfigXssProtection {
  /// Whether CloudFront includes the mode=block directive in the X-XSS-Protection header.
  final pulumi.Input<bool> modeBlock;

  /// Whether CloudFront overrides the X-XSS-Protection HTTP response header received from the origin with the one specified in this response headers policy.
  final pulumi.Input<bool> override;

  /// Boolean value that determines the value of the X-XSS-Protection HTTP response header. When this setting is true, the value of the X-XSS-Protection header is 1. When this setting is false, the value of the X-XSS-Protection header is 0.
  final pulumi.Input<bool> protection;

  /// Whether CloudFront sets a reporting URI in the X-XSS-Protection header.
  final pulumi.Input<String> reportUri;

  /// Creates a new [GetResponseHeadersPolicySecurityHeadersConfigXssProtection].
  /// [modeBlock] Whether CloudFront includes the mode=block directive in the X-XSS-Protection header.
  /// [override] Whether CloudFront overrides the X-XSS-Protection HTTP response header received from the origin with the one specified in this response headers policy.
  /// [protection] Boolean value that determines the value of the X-XSS-Protection HTTP response header. When this setting is true, the value of the X-XSS-Protection header is 1. When this setting is false, the value of the X-XSS-Protection header is 0.
  /// [reportUri] Whether CloudFront sets a reporting URI in the X-XSS-Protection header.
  GetResponseHeadersPolicySecurityHeadersConfigXssProtection({
    required this.modeBlock,
    required this.override,
    required this.protection,
    required this.reportUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modeBlock': modeBlock,
      'override': override,
      'protection': protection,
      'reportUri': reportUri,
    };
  }

  factory GetResponseHeadersPolicySecurityHeadersConfigXssProtection.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetResponseHeadersPolicySecurityHeadersConfigXssProtection(
      modeBlock: pulumi.Input.fromValue(map['modeBlock'] as bool),
      override: pulumi.Input.fromValue(map['override'] as bool),
      protection: pulumi.Input.fromValue(map['protection'] as bool),
      reportUri: pulumi.Input.fromValue(map['reportUri'] as String),
    );
  }
}
