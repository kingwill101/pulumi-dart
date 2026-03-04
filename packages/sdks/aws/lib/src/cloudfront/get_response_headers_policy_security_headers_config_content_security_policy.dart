// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetResponseHeadersPolicySecurityHeadersConfigContentSecurityPolicy {
  /// The policy directives and their values that CloudFront includes as values for the Content-Security-Policy HTTP response header.
  final pulumi.Input<String> contentSecurityPolicy;

  /// Whether CloudFront overrides the X-XSS-Protection HTTP response header received from the origin with the one specified in this response headers policy.
  final pulumi.Input<bool> override;

  /// Creates a new [GetResponseHeadersPolicySecurityHeadersConfigContentSecurityPolicy].
  /// [contentSecurityPolicy] The policy directives and their values that CloudFront includes as values for the Content-Security-Policy HTTP response header.
  /// [override] Whether CloudFront overrides the X-XSS-Protection HTTP response header received from the origin with the one specified in this response headers policy.
  GetResponseHeadersPolicySecurityHeadersConfigContentSecurityPolicy({
    required this.contentSecurityPolicy,
    required this.override,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentSecurityPolicy': contentSecurityPolicy,
      'override': override,
    };
  }

  factory GetResponseHeadersPolicySecurityHeadersConfigContentSecurityPolicy.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetResponseHeadersPolicySecurityHeadersConfigContentSecurityPolicy(
      contentSecurityPolicy: pulumi.Input.fromValue(
        map['contentSecurityPolicy'] as String,
      ),
      override: pulumi.Input.fromValue(map['override'] as bool),
    );
  }
}
