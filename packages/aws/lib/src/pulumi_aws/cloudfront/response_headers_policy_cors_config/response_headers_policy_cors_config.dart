// ignore_for_file: unused_element, unnecessary_cast

import '../response_headers_policy_cors_config_access_control_allow_headers/response_headers_policy_cors_config_access_control_allow_headers.dart';
import '../response_headers_policy_cors_config_access_control_allow_methods/response_headers_policy_cors_config_access_control_allow_methods.dart';
import '../response_headers_policy_cors_config_access_control_allow_origins/response_headers_policy_cors_config_access_control_allow_origins.dart';
import '../response_headers_policy_cors_config_access_control_expose_headers/response_headers_policy_cors_config_access_control_expose_headers.dart';

class ResponseHeadersPolicyCorsConfig {
  /// A Boolean value that CloudFront uses as the value for the `Access-Control-Allow-Credentials` HTTP response header.
  final bool accessControlAllowCredentials;

  /// Object that contains an attribute `items` that contains a list of HTTP header names that CloudFront includes as values for the `Access-Control-Allow-Headers` HTTP response header.
  final ResponseHeadersPolicyCorsConfigAccessControlAllowHeaders
      accessControlAllowHeaders;

  /// Object that contains an attribute `items` that contains a list of HTTP methods that CloudFront includes as values for the `Access-Control-Allow-Methods` HTTP response header. Valid values: `GET` | `POST` | `OPTIONS` | `PUT` | `DELETE` | `HEAD` | `ALL`
  final ResponseHeadersPolicyCorsConfigAccessControlAllowMethods
      accessControlAllowMethods;

  /// Object that contains an attribute `items` that contains a list of origins that CloudFront can use as the value for the `Access-Control-Allow-Origin` HTTP response header.
  final ResponseHeadersPolicyCorsConfigAccessControlAllowOrigins
      accessControlAllowOrigins;

  /// Object that contains an attribute `items` that contains a list of HTTP headers that CloudFront includes as values for the `Access-Control-Expose-Headers` HTTP response header.
  final ResponseHeadersPolicyCorsConfigAccessControlExposeHeaders?
      accessControlExposeHeaders;

  /// A number that CloudFront uses as the value for the `Access-Control-Max-Age` HTTP response header.
  final int? accessControlMaxAgeSec;

  /// A Boolean value that determines how CloudFront behaves for the HTTP response header.
  final bool originOverride;

  ResponseHeadersPolicyCorsConfig({
    required this.accessControlAllowCredentials,
    required this.accessControlAllowHeaders,
    required this.accessControlAllowMethods,
    required this.accessControlAllowOrigins,
    this.accessControlExposeHeaders,
    this.accessControlMaxAgeSec,
    required this.originOverride,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accessControlAllowCredentials'] = accessControlAllowCredentials;
    map['accessControlAllowHeaders'] = accessControlAllowHeaders.toMap();
    map['accessControlAllowMethods'] = accessControlAllowMethods.toMap();
    map['accessControlAllowOrigins'] = accessControlAllowOrigins.toMap();
    final accessControlExposeHeadersValue = accessControlExposeHeaders;
    if (accessControlExposeHeadersValue != null) {
      map['accessControlExposeHeaders'] =
          accessControlExposeHeadersValue.toMap();
    }
    final accessControlMaxAgeSecValue = accessControlMaxAgeSec;
    if (accessControlMaxAgeSecValue != null) {
      map['accessControlMaxAgeSec'] = accessControlMaxAgeSecValue;
    }
    map['originOverride'] = originOverride;
    return map;
  }

  factory ResponseHeadersPolicyCorsConfig.fromMap(Map<String, dynamic> map) {
    return ResponseHeadersPolicyCorsConfig(
      accessControlAllowCredentials:
          map['accessControlAllowCredentials'] as bool,
      accessControlAllowHeaders:
          ResponseHeadersPolicyCorsConfigAccessControlAllowHeaders.fromMap(
              (map['accessControlAllowHeaders'] as Map)
                  .cast<String, dynamic>()),
      accessControlAllowMethods:
          ResponseHeadersPolicyCorsConfigAccessControlAllowMethods.fromMap(
              (map['accessControlAllowMethods'] as Map)
                  .cast<String, dynamic>()),
      accessControlAllowOrigins:
          ResponseHeadersPolicyCorsConfigAccessControlAllowOrigins.fromMap(
              (map['accessControlAllowOrigins'] as Map)
                  .cast<String, dynamic>()),
      accessControlExposeHeaders: map['accessControlExposeHeaders'] == null
          ? null
          : ResponseHeadersPolicyCorsConfigAccessControlExposeHeaders.fromMap(
              (map['accessControlExposeHeaders'] as Map)
                  .cast<String, dynamic>()),
      accessControlMaxAgeSec: map['accessControlMaxAgeSec'] == null
          ? null
          : map['accessControlMaxAgeSec'] as int,
      originOverride: map['originOverride'] as bool,
    );
  }
}
