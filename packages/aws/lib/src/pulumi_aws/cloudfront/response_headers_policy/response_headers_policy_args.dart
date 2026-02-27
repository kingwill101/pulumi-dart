// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../response_headers_policy_cors_config/response_headers_policy_cors_config.dart';
import '../response_headers_policy_custom_headers_config/response_headers_policy_custom_headers_config.dart';
import '../response_headers_policy_remove_headers_config/response_headers_policy_remove_headers_config.dart';
import '../response_headers_policy_security_headers_config/response_headers_policy_security_headers_config.dart';
import '../response_headers_policy_server_timing_headers_config/response_headers_policy_server_timing_headers_config.dart';

/// The set of arguments for ResponseHeadersPolicy.
class ResponseHeadersPolicyArgs {
  /// A comment to describe the response headers policy. The comment cannot be longer than 128 characters.
  final pulumi.Input<String>? comment;

  /// A configuration for a set of HTTP response headers that are used for Cross-Origin Resource Sharing (CORS). See Cors Config for more information.
  final pulumi.Input<ResponseHeadersPolicyCorsConfig>? corsConfig;

  /// Object that contains an attribute `items` that contains a list of custom headers. See Custom Header for more information.
  final pulumi.Input<ResponseHeadersPolicyCustomHeadersConfig>?
      customHeadersConfig;

  /// A unique name to identify the response headers policy.
  final pulumi.Input<String>? name;

  /// A configuration for a set of HTTP headers to remove from the HTTP response. Object that contains an attribute `items` that contains a list of headers. See Remove Header for more information.
  final pulumi.Input<ResponseHeadersPolicyRemoveHeadersConfig>?
      removeHeadersConfig;

  /// A configuration for a set of security-related HTTP response headers. See Security Headers Config for more information.
  final pulumi.Input<ResponseHeadersPolicySecurityHeadersConfig>?
      securityHeadersConfig;

  /// A configuration for enabling the Server-Timing header in HTTP responses sent from CloudFront. See Server Timing Headers Config for more information.
  final pulumi.Input<ResponseHeadersPolicyServerTimingHeadersConfig>?
      serverTimingHeadersConfig;

  ResponseHeadersPolicyArgs({
    this.comment,
    this.corsConfig,
    this.customHeadersConfig,
    this.name,
    this.removeHeadersConfig,
    this.securityHeadersConfig,
    this.serverTimingHeadersConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final commentValue = comment;
    if (commentValue != null) {
      map['comment'] = commentValue;
    }
    final corsConfigValue = corsConfig;
    if (corsConfigValue != null) {
      map['corsConfig'] = pulumi.Input.mapOptionalInputValue<
          ResponseHeadersPolicyCorsConfig,
          Map<String, dynamic>>(corsConfigValue, (value) => value.toMap());
    }
    final customHeadersConfigValue = customHeadersConfig;
    if (customHeadersConfigValue != null) {
      map['customHeadersConfig'] = pulumi.Input.mapOptionalInputValue<
              ResponseHeadersPolicyCustomHeadersConfig, Map<String, dynamic>>(
          customHeadersConfigValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final removeHeadersConfigValue = removeHeadersConfig;
    if (removeHeadersConfigValue != null) {
      map['removeHeadersConfig'] = pulumi.Input.mapOptionalInputValue<
              ResponseHeadersPolicyRemoveHeadersConfig, Map<String, dynamic>>(
          removeHeadersConfigValue, (value) => value.toMap());
    }
    final securityHeadersConfigValue = securityHeadersConfig;
    if (securityHeadersConfigValue != null) {
      map['securityHeadersConfig'] = pulumi.Input.mapOptionalInputValue<
              ResponseHeadersPolicySecurityHeadersConfig, Map<String, dynamic>>(
          securityHeadersConfigValue, (value) => value.toMap());
    }
    final serverTimingHeadersConfigValue = serverTimingHeadersConfig;
    if (serverTimingHeadersConfigValue != null) {
      map['serverTimingHeadersConfig'] = pulumi.Input.mapOptionalInputValue<
              ResponseHeadersPolicyServerTimingHeadersConfig,
              Map<String, dynamic>>(
          serverTimingHeadersConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory ResponseHeadersPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ResponseHeadersPolicyArgs(
      comment: pulumi.Input.asOptionalInput<String>(map['comment']),
      corsConfig: pulumi.Input.asOptionalInput<ResponseHeadersPolicyCorsConfig>(
          map['corsConfig']),
      customHeadersConfig: pulumi.Input.asOptionalInput<
          ResponseHeadersPolicyCustomHeadersConfig>(map['customHeadersConfig']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      removeHeadersConfig: pulumi.Input.asOptionalInput<
          ResponseHeadersPolicyRemoveHeadersConfig>(map['removeHeadersConfig']),
      securityHeadersConfig: pulumi.Input.asOptionalInput<
              ResponseHeadersPolicySecurityHeadersConfig>(
          map['securityHeadersConfig']),
      serverTimingHeadersConfig: pulumi.Input.asOptionalInput<
              ResponseHeadersPolicyServerTimingHeadersConfig>(
          map['serverTimingHeadersConfig']),
    );
  }
}
