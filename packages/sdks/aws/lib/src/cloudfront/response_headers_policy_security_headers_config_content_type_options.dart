// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResponseHeadersPolicySecurityHeadersConfigContentTypeOptions {
  /// Whether CloudFront overrides the `X-Content-Type-Options` HTTP response header received from the origin with the one specified in this response headers policy.
  final pulumi.Input<bool> override;

  /// Creates a new [ResponseHeadersPolicySecurityHeadersConfigContentTypeOptions].
  /// [override] Whether CloudFront overrides the `X-Content-Type-Options` HTTP response header received from the origin with the one specified in this response headers policy.
  ResponseHeadersPolicySecurityHeadersConfigContentTypeOptions({
    required this.override,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'override': override,
    };
  }

  factory ResponseHeadersPolicySecurityHeadersConfigContentTypeOptions.fromMap(Map<String, dynamic> map) {
    return ResponseHeadersPolicySecurityHeadersConfigContentTypeOptions(
      override: (map['override'] as bool).input(),
    );
  }
}

