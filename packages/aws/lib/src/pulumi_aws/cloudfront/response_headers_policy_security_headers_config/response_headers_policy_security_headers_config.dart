// ignore_for_file: unused_element, unnecessary_cast

import '../response_headers_policy_security_headers_config_content_security_policy/response_headers_policy_security_headers_config_content_security_policy.dart';
import '../response_headers_policy_security_headers_config_content_type_options/response_headers_policy_security_headers_config_content_type_options.dart';
import '../response_headers_policy_security_headers_config_frame_options/response_headers_policy_security_headers_config_frame_options.dart';
import '../response_headers_policy_security_headers_config_referrer_policy/response_headers_policy_security_headers_config_referrer_policy.dart';
import '../response_headers_policy_security_headers_config_strict_transport_security/response_headers_policy_security_headers_config_strict_transport_security.dart';
import '../response_headers_policy_security_headers_config_xss_protection/response_headers_policy_security_headers_config_xss_protection.dart';

class ResponseHeadersPolicySecurityHeadersConfig {
  /// The policy directives and their values that CloudFront includes as values for the `Content-Security-Policy` HTTP response header. See Content Security Policy for more information.
  final ResponseHeadersPolicySecurityHeadersConfigContentSecurityPolicy?
      contentSecurityPolicy;

  /// Determines whether CloudFront includes the `X-Content-Type-Options` HTTP response header with its value set to `nosniff`. See Content Type Options for more information.
  final ResponseHeadersPolicySecurityHeadersConfigContentTypeOptions?
      contentTypeOptions;

  /// Determines whether CloudFront includes the `X-Frame-Options` HTTP response header and the header’s value. See Frame Options for more information.
  final ResponseHeadersPolicySecurityHeadersConfigFrameOptions? frameOptions;

  /// Determines whether CloudFront includes the `Referrer-Policy` HTTP response header and the header’s value. See Referrer Policy for more information.
  final ResponseHeadersPolicySecurityHeadersConfigReferrerPolicy?
      referrerPolicy;

  /// Determines whether CloudFront includes the `Strict-Transport-Security` HTTP response header and the header’s value. See Strict Transport Security for more information.
  final ResponseHeadersPolicySecurityHeadersConfigStrictTransportSecurity?
      strictTransportSecurity;

  /// Determine whether CloudFront includes the `X-XSS-Protection` HTTP response header and the header’s value. See XSS Protection for more information.
  final ResponseHeadersPolicySecurityHeadersConfigXssProtection? xssProtection;

  ResponseHeadersPolicySecurityHeadersConfig({
    this.contentSecurityPolicy,
    this.contentTypeOptions,
    this.frameOptions,
    this.referrerPolicy,
    this.strictTransportSecurity,
    this.xssProtection,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final contentSecurityPolicyValue = contentSecurityPolicy;
    if (contentSecurityPolicyValue != null) {
      map['contentSecurityPolicy'] = contentSecurityPolicyValue.toMap();
    }
    final contentTypeOptionsValue = contentTypeOptions;
    if (contentTypeOptionsValue != null) {
      map['contentTypeOptions'] = contentTypeOptionsValue.toMap();
    }
    final frameOptionsValue = frameOptions;
    if (frameOptionsValue != null) {
      map['frameOptions'] = frameOptionsValue.toMap();
    }
    final referrerPolicyValue = referrerPolicy;
    if (referrerPolicyValue != null) {
      map['referrerPolicy'] = referrerPolicyValue.toMap();
    }
    final strictTransportSecurityValue = strictTransportSecurity;
    if (strictTransportSecurityValue != null) {
      map['strictTransportSecurity'] = strictTransportSecurityValue.toMap();
    }
    final xssProtectionValue = xssProtection;
    if (xssProtectionValue != null) {
      map['xssProtection'] = xssProtectionValue.toMap();
    }
    return map;
  }

  factory ResponseHeadersPolicySecurityHeadersConfig.fromMap(
      Map<String, dynamic> map) {
    return ResponseHeadersPolicySecurityHeadersConfig(
      contentSecurityPolicy: map['contentSecurityPolicy'] == null
          ? null
          : ResponseHeadersPolicySecurityHeadersConfigContentSecurityPolicy
              .fromMap((map['contentSecurityPolicy'] as Map)
                  .cast<String, dynamic>()),
      contentTypeOptions: map['contentTypeOptions'] == null
          ? null
          : ResponseHeadersPolicySecurityHeadersConfigContentTypeOptions
              .fromMap(
                  (map['contentTypeOptions'] as Map).cast<String, dynamic>()),
      frameOptions: map['frameOptions'] == null
          ? null
          : ResponseHeadersPolicySecurityHeadersConfigFrameOptions.fromMap(
              (map['frameOptions'] as Map).cast<String, dynamic>()),
      referrerPolicy: map['referrerPolicy'] == null
          ? null
          : ResponseHeadersPolicySecurityHeadersConfigReferrerPolicy.fromMap(
              (map['referrerPolicy'] as Map).cast<String, dynamic>()),
      strictTransportSecurity: map['strictTransportSecurity'] == null
          ? null
          : ResponseHeadersPolicySecurityHeadersConfigStrictTransportSecurity
              .fromMap((map['strictTransportSecurity'] as Map)
                  .cast<String, dynamic>()),
      xssProtection: map['xssProtection'] == null
          ? null
          : ResponseHeadersPolicySecurityHeadersConfigXssProtection.fromMap(
              (map['xssProtection'] as Map).cast<String, dynamic>()),
    );
  }
}
