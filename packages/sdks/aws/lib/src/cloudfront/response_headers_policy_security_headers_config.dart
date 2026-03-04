// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'response_headers_policy_security_headers_config_content_security_policy.dart';
import 'response_headers_policy_security_headers_config_content_type_options.dart';
import 'response_headers_policy_security_headers_config_frame_options.dart';
import 'response_headers_policy_security_headers_config_referrer_policy.dart';
import 'response_headers_policy_security_headers_config_strict_transport_security.dart';
import 'response_headers_policy_security_headers_config_xss_protection.dart';

class ResponseHeadersPolicySecurityHeadersConfig {
  /// The policy directives and their values that CloudFront includes as values for the `Content-Security-Policy` HTTP response header. See Content Security Policy for more information.
  final pulumi.Input<
    ResponseHeadersPolicySecurityHeadersConfigContentSecurityPolicy
  >?
  contentSecurityPolicy;

  /// Determines whether CloudFront includes the `X-Content-Type-Options` HTTP response header with its value set to `nosniff`. See Content Type Options for more information.
  final pulumi.Input<
    ResponseHeadersPolicySecurityHeadersConfigContentTypeOptions
  >?
  contentTypeOptions;

  /// Determines whether CloudFront includes the `X-Frame-Options` HTTP response header and the header’s value. See Frame Options for more information.
  final pulumi.Input<ResponseHeadersPolicySecurityHeadersConfigFrameOptions>?
  frameOptions;

  /// Determines whether CloudFront includes the `Referrer-Policy` HTTP response header and the header’s value. See Referrer Policy for more information.
  final pulumi.Input<ResponseHeadersPolicySecurityHeadersConfigReferrerPolicy>?
  referrerPolicy;

  /// Determines whether CloudFront includes the `Strict-Transport-Security` HTTP response header and the header’s value. See Strict Transport Security for more information.
  final pulumi.Input<
    ResponseHeadersPolicySecurityHeadersConfigStrictTransportSecurity
  >?
  strictTransportSecurity;

  /// Determine whether CloudFront includes the `X-XSS-Protection` HTTP response header and the header’s value. See XSS Protection for more information.
  final pulumi.Input<ResponseHeadersPolicySecurityHeadersConfigXssProtection>?
  xssProtection;

  /// Creates a new [ResponseHeadersPolicySecurityHeadersConfig].
  /// [contentSecurityPolicy] The policy directives and their values that CloudFront includes as values for the `Content-Security-Policy` HTTP response header. See Content Security Policy for more information.
  /// [contentTypeOptions] Determines whether CloudFront includes the `X-Content-Type-Options` HTTP response header with its value set to `nosniff`. See Content Type Options for more information.
  /// [frameOptions] Determines whether CloudFront includes the `X-Frame-Options` HTTP response header and the header’s value. See Frame Options for more information.
  /// [referrerPolicy] Determines whether CloudFront includes the `Referrer-Policy` HTTP response header and the header’s value. See Referrer Policy for more information.
  /// [strictTransportSecurity] Determines whether CloudFront includes the `Strict-Transport-Security` HTTP response header and the header’s value. See Strict Transport Security for more information.
  /// [xssProtection] Determine whether CloudFront includes the `X-XSS-Protection` HTTP response header and the header’s value. See XSS Protection for more information.
  ResponseHeadersPolicySecurityHeadersConfig({
    this.contentSecurityPolicy,
    this.contentTypeOptions,
    this.frameOptions,
    this.referrerPolicy,
    this.strictTransportSecurity,
    this.xssProtection,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentSecurityPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            ResponseHeadersPolicySecurityHeadersConfigContentSecurityPolicy,
            Map<String, dynamic>
          >(contentSecurityPolicy, (value) => value.toMap()),
      'contentTypeOptions':
          ?pulumi.Input.mapOptionalInputValue<
            ResponseHeadersPolicySecurityHeadersConfigContentTypeOptions,
            Map<String, dynamic>
          >(contentTypeOptions, (value) => value.toMap()),
      'frameOptions':
          ?pulumi.Input.mapOptionalInputValue<
            ResponseHeadersPolicySecurityHeadersConfigFrameOptions,
            Map<String, dynamic>
          >(frameOptions, (value) => value.toMap()),
      'referrerPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            ResponseHeadersPolicySecurityHeadersConfigReferrerPolicy,
            Map<String, dynamic>
          >(referrerPolicy, (value) => value.toMap()),
      'strictTransportSecurity':
          ?pulumi.Input.mapOptionalInputValue<
            ResponseHeadersPolicySecurityHeadersConfigStrictTransportSecurity,
            Map<String, dynamic>
          >(strictTransportSecurity, (value) => value.toMap()),
      'xssProtection':
          ?pulumi.Input.mapOptionalInputValue<
            ResponseHeadersPolicySecurityHeadersConfigXssProtection,
            Map<String, dynamic>
          >(xssProtection, (value) => value.toMap()),
    };
  }

  factory ResponseHeadersPolicySecurityHeadersConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return ResponseHeadersPolicySecurityHeadersConfig(
      contentSecurityPolicy: (() {
        final guardedValue = map['contentSecurityPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ResponseHeadersPolicySecurityHeadersConfigContentSecurityPolicy.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      contentTypeOptions: (() {
        final guardedValue = map['contentTypeOptions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ResponseHeadersPolicySecurityHeadersConfigContentTypeOptions.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      frameOptions: (() {
        final guardedValue = map['frameOptions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ResponseHeadersPolicySecurityHeadersConfigFrameOptions.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      referrerPolicy: (() {
        final guardedValue = map['referrerPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ResponseHeadersPolicySecurityHeadersConfigReferrerPolicy.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      strictTransportSecurity: (() {
        final guardedValue = map['strictTransportSecurity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ResponseHeadersPolicySecurityHeadersConfigStrictTransportSecurity.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      xssProtection: (() {
        final guardedValue = map['xssProtection'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ResponseHeadersPolicySecurityHeadersConfigXssProtection.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
