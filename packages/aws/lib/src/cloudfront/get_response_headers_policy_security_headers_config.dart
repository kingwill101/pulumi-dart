// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_response_headers_policy_security_headers_config_content_security_policy.dart';
import 'get_response_headers_policy_security_headers_config_content_type_option.dart';
import 'get_response_headers_policy_security_headers_config_frame_option.dart';
import 'get_response_headers_policy_security_headers_config_referrer_policy.dart';
import 'get_response_headers_policy_security_headers_config_strict_transport_security.dart';
import 'get_response_headers_policy_security_headers_config_xss_protection.dart';

class GetResponseHeadersPolicySecurityHeadersConfig {
  /// The policy directives and their values that CloudFront includes as values for the Content-Security-Policy HTTP response header.
  final List<GetResponseHeadersPolicySecurityHeadersConfigContentSecurityPolicy>
  contentSecurityPolicies;

  /// A setting that determines whether CloudFront includes the X-Content-Type-Options HTTP response header with its value set to nosniff. See Content Type Options for more information.
  final List<GetResponseHeadersPolicySecurityHeadersConfigContentTypeOption>
  contentTypeOptions;

  /// Setting that determines whether CloudFront includes the X-Frame-Options HTTP response header and the header’s value. See Frame Options for more information.
  final List<GetResponseHeadersPolicySecurityHeadersConfigFrameOption>
  frameOptions;

  /// Value of the Referrer-Policy HTTP response header. Valid Values: `no-referrer` | `no-referrer-when-downgrade` | `origin` | `origin-when-cross-origin` | `same-origin` | `strict-origin` | `strict-origin-when-cross-origin` | `unsafe-url`
  final List<GetResponseHeadersPolicySecurityHeadersConfigReferrerPolicy>
  referrerPolicies;

  /// Settings that determine whether CloudFront includes the Strict-Transport-Security HTTP response header and the header’s value. See Strict Transport Security for more information.
  final List<
    GetResponseHeadersPolicySecurityHeadersConfigStrictTransportSecurity
  >
  strictTransportSecurities;

  /// Settings that determine whether CloudFront includes the X-XSS-Protection HTTP response header and the header’s value. See XSS Protection for more information.
  final List<GetResponseHeadersPolicySecurityHeadersConfigXssProtection>
  xssProtections;

  /// Creates a new [GetResponseHeadersPolicySecurityHeadersConfig].
  /// [contentSecurityPolicies] The policy directives and their values that CloudFront includes as values for the Content-Security-Policy HTTP response header.
  /// [contentTypeOptions] A setting that determines whether CloudFront includes the X-Content-Type-Options HTTP response header with its value set to nosniff. See Content Type Options for more information.
  /// [frameOptions] Setting that determines whether CloudFront includes the X-Frame-Options HTTP response header and the header’s value. See Frame Options for more information.
  /// [referrerPolicies] Value of the Referrer-Policy HTTP response header. Valid Values: `no-referrer` | `no-referrer-when-downgrade` | `origin` | `origin-when-cross-origin` | `same-origin` | `strict-origin` | `strict-origin-when-cross-origin` | `unsafe-url`
  /// [strictTransportSecurities] Settings that determine whether CloudFront includes the Strict-Transport-Security HTTP response header and the header’s value. See Strict Transport Security for more information.
  /// [xssProtections] Settings that determine whether CloudFront includes the X-XSS-Protection HTTP response header and the header’s value. See XSS Protection for more information.
  GetResponseHeadersPolicySecurityHeadersConfig({
    required this.contentSecurityPolicies,
    required this.contentTypeOptions,
    required this.frameOptions,
    required this.referrerPolicies,
    required this.strictTransportSecurities,
    required this.xssProtections,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentSecurityPolicies':
          pulumi.Input.encodeList<
            GetResponseHeadersPolicySecurityHeadersConfigContentSecurityPolicy,
            Map<String, dynamic>
          >(contentSecurityPolicies, (value) => value.toMap()),
      'contentTypeOptions':
          pulumi.Input.encodeList<
            GetResponseHeadersPolicySecurityHeadersConfigContentTypeOption,
            Map<String, dynamic>
          >(contentTypeOptions, (value) => value.toMap()),
      'frameOptions':
          pulumi.Input.encodeList<
            GetResponseHeadersPolicySecurityHeadersConfigFrameOption,
            Map<String, dynamic>
          >(frameOptions, (value) => value.toMap()),
      'referrerPolicies':
          pulumi.Input.encodeList<
            GetResponseHeadersPolicySecurityHeadersConfigReferrerPolicy,
            Map<String, dynamic>
          >(referrerPolicies, (value) => value.toMap()),
      'strictTransportSecurities':
          pulumi.Input.encodeList<
            GetResponseHeadersPolicySecurityHeadersConfigStrictTransportSecurity,
            Map<String, dynamic>
          >(strictTransportSecurities, (value) => value.toMap()),
      'xssProtections':
          pulumi.Input.encodeList<
            GetResponseHeadersPolicySecurityHeadersConfigXssProtection,
            Map<String, dynamic>
          >(xssProtections, (value) => value.toMap()),
    };
  }

  factory GetResponseHeadersPolicySecurityHeadersConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetResponseHeadersPolicySecurityHeadersConfig(
      contentSecurityPolicies:
          pulumi.Input.decodeList<
            GetResponseHeadersPolicySecurityHeadersConfigContentSecurityPolicy
          >(
            map['contentSecurityPolicies'],
            (value) =>
                GetResponseHeadersPolicySecurityHeadersConfigContentSecurityPolicy.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      contentTypeOptions:
          pulumi.Input.decodeList<
            GetResponseHeadersPolicySecurityHeadersConfigContentTypeOption
          >(
            map['contentTypeOptions'],
            (value) =>
                GetResponseHeadersPolicySecurityHeadersConfigContentTypeOption.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      frameOptions:
          pulumi.Input.decodeList<
            GetResponseHeadersPolicySecurityHeadersConfigFrameOption
          >(
            map['frameOptions'],
            (value) =>
                GetResponseHeadersPolicySecurityHeadersConfigFrameOption.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      referrerPolicies:
          pulumi.Input.decodeList<
            GetResponseHeadersPolicySecurityHeadersConfigReferrerPolicy
          >(
            map['referrerPolicies'],
            (value) =>
                GetResponseHeadersPolicySecurityHeadersConfigReferrerPolicy.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      strictTransportSecurities:
          pulumi.Input.decodeList<
            GetResponseHeadersPolicySecurityHeadersConfigStrictTransportSecurity
          >(
            map['strictTransportSecurities'],
            (value) =>
                GetResponseHeadersPolicySecurityHeadersConfigStrictTransportSecurity.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      xssProtections:
          pulumi.Input.decodeList<
            GetResponseHeadersPolicySecurityHeadersConfigXssProtection
          >(
            map['xssProtections'],
            (value) =>
                GetResponseHeadersPolicySecurityHeadersConfigXssProtection.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
    );
  }
}
