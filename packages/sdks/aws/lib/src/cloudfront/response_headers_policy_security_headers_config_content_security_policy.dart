// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResponseHeadersPolicySecurityHeadersConfigContentSecurityPolicy {
  /// The policy directives and their values that CloudFront includes as values for the `Content-Security-Policy` HTTP response header.
  final pulumi.Input<String> contentSecurityPolicy;
  /// Whether CloudFront overrides the `Content-Security-Policy` HTTP response header received from the origin with the one specified in this response headers policy.
  final pulumi.Input<bool> override;

  /// Creates a new [ResponseHeadersPolicySecurityHeadersConfigContentSecurityPolicy].
  /// [contentSecurityPolicy] The policy directives and their values that CloudFront includes as values for the `Content-Security-Policy` HTTP response header.
  /// [override] Whether CloudFront overrides the `Content-Security-Policy` HTTP response header received from the origin with the one specified in this response headers policy.
  const ResponseHeadersPolicySecurityHeadersConfigContentSecurityPolicy({
    required this.contentSecurityPolicy,
    required this.override,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentSecurityPolicy': contentSecurityPolicy,
      'override': override,
    };
  }

  factory ResponseHeadersPolicySecurityHeadersConfigContentSecurityPolicy.fromMap(Map<String, dynamic> map) {
    return ResponseHeadersPolicySecurityHeadersConfigContentSecurityPolicy(
      contentSecurityPolicy: pulumi.Input.fromValue(map['contentSecurityPolicy'] as String),
      override: pulumi.Input.fromValue(map['override'] as bool),
    );
  }
}

