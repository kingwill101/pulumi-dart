// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_response_headers_policy_security_headers_config_content_security_policy/get_response_headers_policy_security_headers_config_content_security_policy.dart';
import '../get_response_headers_policy_security_headers_config_content_type_option/get_response_headers_policy_security_headers_config_content_type_option.dart';
import '../get_response_headers_policy_security_headers_config_frame_option/get_response_headers_policy_security_headers_config_frame_option.dart';
import '../get_response_headers_policy_security_headers_config_referrer_policy/get_response_headers_policy_security_headers_config_referrer_policy.dart';
import '../get_response_headers_policy_security_headers_config_strict_transport_security/get_response_headers_policy_security_headers_config_strict_transport_security.dart';
import '../get_response_headers_policy_security_headers_config_xss_protection/get_response_headers_policy_security_headers_config_xss_protection.dart';

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

  /// Value of the Referrer-Policy HTTP response header. Valid Values: `no-referrer` | `no-referrer-when-downgrade` | <span pulumi-lang-nodejs="`origin`" pulumi-lang-dotnet="`Origin`" pulumi-lang-go="`origin`" pulumi-lang-python="`origin`" pulumi-lang-yaml="`origin`" pulumi-lang-java="`origin`">`origin`</span> | `origin-when-cross-origin` | `same-origin` | `strict-origin` | `strict-origin-when-cross-origin` | `unsafe-url`
  final List<GetResponseHeadersPolicySecurityHeadersConfigReferrerPolicy>
      referrerPolicies;

  /// Settings that determine whether CloudFront includes the Strict-Transport-Security HTTP response header and the header’s value. See Strict Transport Security for more information.
  final List<
          GetResponseHeadersPolicySecurityHeadersConfigStrictTransportSecurity>
      strictTransportSecurities;

  /// Settings that determine whether CloudFront includes the X-XSS-Protection HTTP response header and the header’s value. See XSS Protection for more information.
  final List<GetResponseHeadersPolicySecurityHeadersConfigXssProtection>
      xssProtections;

  GetResponseHeadersPolicySecurityHeadersConfig({
    required this.contentSecurityPolicies,
    required this.contentTypeOptions,
    required this.frameOptions,
    required this.referrerPolicies,
    required this.strictTransportSecurities,
    required this.xssProtections,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['contentSecurityPolicies'] = Input.encodeList<
            GetResponseHeadersPolicySecurityHeadersConfigContentSecurityPolicy,
            Map<String, dynamic>>(
        contentSecurityPolicies, (value) => value.toMap());
    map['contentTypeOptions'] = Input.encodeList<
        GetResponseHeadersPolicySecurityHeadersConfigContentTypeOption,
        Map<String, dynamic>>(contentTypeOptions, (value) => value.toMap());
    map['frameOptions'] = Input.encodeList<
        GetResponseHeadersPolicySecurityHeadersConfigFrameOption,
        Map<String, dynamic>>(frameOptions, (value) => value.toMap());
    map['referrerPolicies'] = Input.encodeList<
        GetResponseHeadersPolicySecurityHeadersConfigReferrerPolicy,
        Map<String, dynamic>>(referrerPolicies, (value) => value.toMap());
    map['strictTransportSecurities'] = Input.encodeList<
        GetResponseHeadersPolicySecurityHeadersConfigStrictTransportSecurity,
        Map<String,
            dynamic>>(strictTransportSecurities, (value) => value.toMap());
    map['xssProtections'] = Input.encodeList<
        GetResponseHeadersPolicySecurityHeadersConfigXssProtection,
        Map<String, dynamic>>(xssProtections, (value) => value.toMap());
    return map;
  }

  factory GetResponseHeadersPolicySecurityHeadersConfig.fromMap(
      Map<String, dynamic> map) {
    return GetResponseHeadersPolicySecurityHeadersConfig(
      contentSecurityPolicies: Input.decodeList<
              GetResponseHeadersPolicySecurityHeadersConfigContentSecurityPolicy>(
          map['contentSecurityPolicies'],
          (value) =>
              GetResponseHeadersPolicySecurityHeadersConfigContentSecurityPolicy
                  .fromMap((value as Map).cast<String, dynamic>())),
      contentTypeOptions: Input.decodeList<
              GetResponseHeadersPolicySecurityHeadersConfigContentTypeOption>(
          map['contentTypeOptions'],
          (value) =>
              GetResponseHeadersPolicySecurityHeadersConfigContentTypeOption
                  .fromMap((value as Map).cast<String, dynamic>())),
      frameOptions: Input.decodeList<
              GetResponseHeadersPolicySecurityHeadersConfigFrameOption>(
          map['frameOptions'],
          (value) =>
              GetResponseHeadersPolicySecurityHeadersConfigFrameOption.fromMap(
                  (value as Map).cast<String, dynamic>())),
      referrerPolicies: Input.decodeList<
              GetResponseHeadersPolicySecurityHeadersConfigReferrerPolicy>(
          map['referrerPolicies'],
          (value) => GetResponseHeadersPolicySecurityHeadersConfigReferrerPolicy
              .fromMap((value as Map).cast<String, dynamic>())),
      strictTransportSecurities: Input.decodeList<
              GetResponseHeadersPolicySecurityHeadersConfigStrictTransportSecurity>(
          map['strictTransportSecurities'],
          (value) =>
              GetResponseHeadersPolicySecurityHeadersConfigStrictTransportSecurity
                  .fromMap((value as Map).cast<String, dynamic>())),
      xssProtections: Input.decodeList<
              GetResponseHeadersPolicySecurityHeadersConfigXssProtection>(
          map['xssProtections'],
          (value) => GetResponseHeadersPolicySecurityHeadersConfigXssProtection
              .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
