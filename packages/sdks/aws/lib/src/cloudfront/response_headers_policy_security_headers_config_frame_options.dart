// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResponseHeadersPolicySecurityHeadersConfigFrameOptions {
  /// The value of the `X-Frame-Options` HTTP response header. Valid values: `DENY` | `SAMEORIGIN`
  final pulumi.Input<String> frameOption;
  /// Whether CloudFront overrides the `X-Frame-Options` HTTP response header received from the origin with the one specified in this response headers policy.
  final pulumi.Input<bool> override;

  /// Creates a new [ResponseHeadersPolicySecurityHeadersConfigFrameOptions].
  /// [frameOption] The value of the `X-Frame-Options` HTTP response header. Valid values: `DENY` | `SAMEORIGIN`
  /// [override] Whether CloudFront overrides the `X-Frame-Options` HTTP response header received from the origin with the one specified in this response headers policy.
  const ResponseHeadersPolicySecurityHeadersConfigFrameOptions({
    required this.frameOption,
    required this.override,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frameOption': frameOption,
      'override': override,
    };
  }

  factory ResponseHeadersPolicySecurityHeadersConfigFrameOptions.fromMap(Map<String, dynamic> map) {
    return ResponseHeadersPolicySecurityHeadersConfigFrameOptions(
      frameOption: pulumi.Input.fromValue(map['frameOption'] as String),
      override: pulumi.Input.fromValue(map['override'] as bool),
    );
  }
}
