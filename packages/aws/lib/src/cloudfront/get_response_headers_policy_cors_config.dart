// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_response_headers_policy_cors_config_access_control_allow_header.dart';
import 'get_response_headers_policy_cors_config_access_control_allow_method.dart';
import 'get_response_headers_policy_cors_config_access_control_allow_origin.dart';
import 'get_response_headers_policy_cors_config_access_control_expose_header.dart';

class GetResponseHeadersPolicyCorsConfig {
  /// A Boolean value that CloudFront uses as the value for the Access-Control-Allow-Credentials HTTP response header.
  final bool accessControlAllowCredentials;

  /// Object that contains an attribute `items` that contains a list of HTTP header names that CloudFront includes as values for the Access-Control-Allow-Headers HTTP response header.
  final List<GetResponseHeadersPolicyCorsConfigAccessControlAllowHeader>
  accessControlAllowHeaders;

  /// Object that contains an attribute `items` that contains a list of HTTP methods that CloudFront includes as values for the Access-Control-Allow-Methods HTTP response header. Valid values: `GET` | `POST` | `OPTIONS` | `PUT` | `DELETE` | `HEAD` | `ALL`
  final List<GetResponseHeadersPolicyCorsConfigAccessControlAllowMethod>
  accessControlAllowMethods;

  /// Object that contains an attribute `items` that contains a list of origins that CloudFront can use as the value for the Access-Control-Allow-Origin HTTP response header.
  final List<GetResponseHeadersPolicyCorsConfigAccessControlAllowOrigin>
  accessControlAllowOrigins;

  /// Object that contains an attribute `items` that contains a list of HTTP headers that CloudFront includes as values for the Access-Control-Expose-Headers HTTP response header.
  final List<GetResponseHeadersPolicyCorsConfigAccessControlExposeHeader>
  accessControlExposeHeaders;

  /// A number that CloudFront uses as the value for the max-age directive in the Strict-Transport-Security HTTP response header.
  final int accessControlMaxAgeSec;
  final bool originOverride;

  /// Creates a new [GetResponseHeadersPolicyCorsConfig].
  /// [accessControlAllowCredentials] A Boolean value that CloudFront uses as the value for the Access-Control-Allow-Credentials HTTP response header.
  /// [accessControlAllowHeaders] Object that contains an attribute `items` that contains a list of HTTP header names that CloudFront includes as values for the Access-Control-Allow-Headers HTTP response header.
  /// [accessControlAllowMethods] Object that contains an attribute `items` that contains a list of HTTP methods that CloudFront includes as values for the Access-Control-Allow-Methods HTTP response header. Valid values: `GET` | `POST` | `OPTIONS` | `PUT` | `DELETE` | `HEAD` | `ALL`
  /// [accessControlAllowOrigins] Object that contains an attribute `items` that contains a list of origins that CloudFront can use as the value for the Access-Control-Allow-Origin HTTP response header.
  /// [accessControlExposeHeaders] Object that contains an attribute `items` that contains a list of HTTP headers that CloudFront includes as values for the Access-Control-Expose-Headers HTTP response header.
  /// [accessControlMaxAgeSec] A number that CloudFront uses as the value for the max-age directive in the Strict-Transport-Security HTTP response header.
  /// [originOverride] Required.
  GetResponseHeadersPolicyCorsConfig({
    required this.accessControlAllowCredentials,
    required this.accessControlAllowHeaders,
    required this.accessControlAllowMethods,
    required this.accessControlAllowOrigins,
    required this.accessControlExposeHeaders,
    required this.accessControlMaxAgeSec,
    required this.originOverride,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessControlAllowCredentials': accessControlAllowCredentials,
      'accessControlAllowHeaders':
          pulumi.Input.encodeList<
            GetResponseHeadersPolicyCorsConfigAccessControlAllowHeader,
            Map<String, dynamic>
          >(accessControlAllowHeaders, (value) => value.toMap()),
      'accessControlAllowMethods':
          pulumi.Input.encodeList<
            GetResponseHeadersPolicyCorsConfigAccessControlAllowMethod,
            Map<String, dynamic>
          >(accessControlAllowMethods, (value) => value.toMap()),
      'accessControlAllowOrigins':
          pulumi.Input.encodeList<
            GetResponseHeadersPolicyCorsConfigAccessControlAllowOrigin,
            Map<String, dynamic>
          >(accessControlAllowOrigins, (value) => value.toMap()),
      'accessControlExposeHeaders':
          pulumi.Input.encodeList<
            GetResponseHeadersPolicyCorsConfigAccessControlExposeHeader,
            Map<String, dynamic>
          >(accessControlExposeHeaders, (value) => value.toMap()),
      'accessControlMaxAgeSec': accessControlMaxAgeSec,
      'originOverride': originOverride,
    };
  }

  factory GetResponseHeadersPolicyCorsConfig.fromMap(Map<String, dynamic> map) {
    return GetResponseHeadersPolicyCorsConfig(
      accessControlAllowCredentials:
          map['accessControlAllowCredentials'] as bool,
      accessControlAllowHeaders:
          pulumi.Input.decodeList<
            GetResponseHeadersPolicyCorsConfigAccessControlAllowHeader
          >(
            map['accessControlAllowHeaders'],
            (value) =>
                GetResponseHeadersPolicyCorsConfigAccessControlAllowHeader.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      accessControlAllowMethods:
          pulumi.Input.decodeList<
            GetResponseHeadersPolicyCorsConfigAccessControlAllowMethod
          >(
            map['accessControlAllowMethods'],
            (value) =>
                GetResponseHeadersPolicyCorsConfigAccessControlAllowMethod.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      accessControlAllowOrigins:
          pulumi.Input.decodeList<
            GetResponseHeadersPolicyCorsConfigAccessControlAllowOrigin
          >(
            map['accessControlAllowOrigins'],
            (value) =>
                GetResponseHeadersPolicyCorsConfigAccessControlAllowOrigin.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      accessControlExposeHeaders:
          pulumi.Input.decodeList<
            GetResponseHeadersPolicyCorsConfigAccessControlExposeHeader
          >(
            map['accessControlExposeHeaders'],
            (value) =>
                GetResponseHeadersPolicyCorsConfigAccessControlExposeHeader.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      accessControlMaxAgeSec: map['accessControlMaxAgeSec'] as int,
      originOverride: map['originOverride'] as bool,
    );
  }
}
