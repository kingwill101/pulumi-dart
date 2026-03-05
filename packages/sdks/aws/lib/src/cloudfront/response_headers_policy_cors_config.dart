// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'response_headers_policy_cors_config_access_control_allow_headers.dart';
import 'response_headers_policy_cors_config_access_control_allow_methods.dart';
import 'response_headers_policy_cors_config_access_control_allow_origins.dart';
import 'response_headers_policy_cors_config_access_control_expose_headers.dart';

class ResponseHeadersPolicyCorsConfig {
  /// A Boolean value that CloudFront uses as the value for the `Access-Control-Allow-Credentials` HTTP response header.
  final pulumi.Input<bool> accessControlAllowCredentials;
  /// Object that contains an attribute `items` that contains a list of HTTP header names that CloudFront includes as values for the `Access-Control-Allow-Headers` HTTP response header.
  final pulumi.Input<ResponseHeadersPolicyCorsConfigAccessControlAllowHeaders> accessControlAllowHeaders;
  /// Object that contains an attribute `items` that contains a list of HTTP methods that CloudFront includes as values for the `Access-Control-Allow-Methods` HTTP response header. Valid values: `GET` | `POST` | `OPTIONS` | `PUT` | `DELETE` | `HEAD` | `ALL`
  final pulumi.Input<ResponseHeadersPolicyCorsConfigAccessControlAllowMethods> accessControlAllowMethods;
  /// Object that contains an attribute `items` that contains a list of origins that CloudFront can use as the value for the `Access-Control-Allow-Origin` HTTP response header.
  final pulumi.Input<ResponseHeadersPolicyCorsConfigAccessControlAllowOrigins> accessControlAllowOrigins;
  /// Object that contains an attribute `items` that contains a list of HTTP headers that CloudFront includes as values for the `Access-Control-Expose-Headers` HTTP response header.
  final pulumi.Input<ResponseHeadersPolicyCorsConfigAccessControlExposeHeaders>? accessControlExposeHeaders;
  /// A number that CloudFront uses as the value for the `Access-Control-Max-Age` HTTP response header.
  final pulumi.Input<int>? accessControlMaxAgeSec;
  /// A Boolean value that determines how CloudFront behaves for the HTTP response header.
  final pulumi.Input<bool> originOverride;

  /// Creates a new [ResponseHeadersPolicyCorsConfig].
  /// [accessControlAllowCredentials] A Boolean value that CloudFront uses as the value for the `Access-Control-Allow-Credentials` HTTP response header.
  /// [accessControlAllowHeaders] Object that contains an attribute `items` that contains a list of HTTP header names that CloudFront includes as values for the `Access-Control-Allow-Headers` HTTP response header.
  /// [accessControlAllowMethods] Object that contains an attribute `items` that contains a list of HTTP methods that CloudFront includes as values for the `Access-Control-Allow-Methods` HTTP response header. Valid values: `GET` | `POST` | `OPTIONS` | `PUT` | `DELETE` | `HEAD` | `ALL`
  /// [accessControlAllowOrigins] Object that contains an attribute `items` that contains a list of origins that CloudFront can use as the value for the `Access-Control-Allow-Origin` HTTP response header.
  /// [accessControlExposeHeaders] Object that contains an attribute `items` that contains a list of HTTP headers that CloudFront includes as values for the `Access-Control-Expose-Headers` HTTP response header.
  /// [accessControlMaxAgeSec] A number that CloudFront uses as the value for the `Access-Control-Max-Age` HTTP response header.
  /// [originOverride] A Boolean value that determines how CloudFront behaves for the HTTP response header.
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
    return <String, dynamic>{
      'accessControlAllowCredentials': accessControlAllowCredentials,
      'accessControlAllowHeaders': pulumi.Input.mapInputValue<ResponseHeadersPolicyCorsConfigAccessControlAllowHeaders, Map<String, dynamic>>(accessControlAllowHeaders, (value) => value.toMap()),
      'accessControlAllowMethods': pulumi.Input.mapInputValue<ResponseHeadersPolicyCorsConfigAccessControlAllowMethods, Map<String, dynamic>>(accessControlAllowMethods, (value) => value.toMap()),
      'accessControlAllowOrigins': pulumi.Input.mapInputValue<ResponseHeadersPolicyCorsConfigAccessControlAllowOrigins, Map<String, dynamic>>(accessControlAllowOrigins, (value) => value.toMap()),
      'accessControlExposeHeaders': ?pulumi.Input.mapOptionalInputValue<ResponseHeadersPolicyCorsConfigAccessControlExposeHeaders, Map<String, dynamic>>(accessControlExposeHeaders, (value) => value.toMap()),
      'accessControlMaxAgeSec': ?accessControlMaxAgeSec,
      'originOverride': originOverride,
    };
  }

  factory ResponseHeadersPolicyCorsConfig.fromMap(Map<String, dynamic> map) {
    return ResponseHeadersPolicyCorsConfig(
      accessControlAllowCredentials: pulumi.Input.fromValue(map['accessControlAllowCredentials'] as bool),
      accessControlAllowHeaders: pulumi.Input.fromValue(ResponseHeadersPolicyCorsConfigAccessControlAllowHeaders.fromMap((map['accessControlAllowHeaders']! as Map).cast<String, dynamic>())),
      accessControlAllowMethods: pulumi.Input.fromValue(ResponseHeadersPolicyCorsConfigAccessControlAllowMethods.fromMap((map['accessControlAllowMethods']! as Map).cast<String, dynamic>())),
      accessControlAllowOrigins: pulumi.Input.fromValue(ResponseHeadersPolicyCorsConfigAccessControlAllowOrigins.fromMap((map['accessControlAllowOrigins']! as Map).cast<String, dynamic>())),
      accessControlExposeHeaders: (() { final guardedValue = map['accessControlExposeHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResponseHeadersPolicyCorsConfigAccessControlExposeHeaders.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      accessControlMaxAgeSec: (() { final guardedValue = map['accessControlMaxAgeSec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      originOverride: pulumi.Input.fromValue(map['originOverride'] as bool),
    );
  }
}

