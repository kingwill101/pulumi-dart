// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'response_headers_policy_cors_config.dart';
import 'response_headers_policy_custom_headers_config.dart';
import 'response_headers_policy_remove_headers_config.dart';
import 'response_headers_policy_security_headers_config.dart';
import 'response_headers_policy_server_timing_headers_config.dart';

/// {@template pulumi_cloudfront_response_headers_policy_response_headers_policy_args_doc}
/// The set of arguments for ResponseHeadersPolicy.
/// {@endtemplate}
/// {@macro pulumi_cloudfront_response_headers_policy_response_headers_policy_args_doc}
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

  /// Creates a new [ResponseHeadersPolicyArgs].
  /// [comment] A comment to describe the response headers policy. The comment cannot be longer than 128 characters.
  /// [corsConfig] A configuration for a set of HTTP response headers that are used for Cross-Origin Resource Sharing (CORS). See Cors Config for more information.
  /// [customHeadersConfig] Object that contains an attribute `items` that contains a list of custom headers. See Custom Header for more information.
  /// [name] A unique name to identify the response headers policy.
  /// [removeHeadersConfig] A configuration for a set of HTTP headers to remove from the HTTP response. Object that contains an attribute `items` that contains a list of headers. See Remove Header for more information.
  /// [securityHeadersConfig] A configuration for a set of security-related HTTP response headers. See Security Headers Config for more information.
  /// [serverTimingHeadersConfig] A configuration for enabling the Server-Timing header in HTTP responses sent from CloudFront. See Server Timing Headers Config for more information.
  ResponseHeadersPolicyArgs({
    String? comment,
    ResponseHeadersPolicyCorsConfig? corsConfig,
    ResponseHeadersPolicyCustomHeadersConfig? customHeadersConfig,
    String? name,
    ResponseHeadersPolicyRemoveHeadersConfig? removeHeadersConfig,
    ResponseHeadersPolicySecurityHeadersConfig? securityHeadersConfig,
    ResponseHeadersPolicyServerTimingHeadersConfig? serverTimingHeadersConfig,
  }) : comment = pulumi.Input.asOptionalInput<String>(comment),
       corsConfig = pulumi
           .Input.asOptionalInput<ResponseHeadersPolicyCorsConfig>(corsConfig),
       customHeadersConfig =
           pulumi.Input.asOptionalInput<
             ResponseHeadersPolicyCustomHeadersConfig
           >(customHeadersConfig),
       name = pulumi.Input.asOptionalInput<String>(name),
       removeHeadersConfig =
           pulumi.Input.asOptionalInput<
             ResponseHeadersPolicyRemoveHeadersConfig
           >(removeHeadersConfig),
       securityHeadersConfig =
           pulumi.Input.asOptionalInput<
             ResponseHeadersPolicySecurityHeadersConfig
           >(securityHeadersConfig),
       serverTimingHeadersConfig =
           pulumi.Input.asOptionalInput<
             ResponseHeadersPolicyServerTimingHeadersConfig
           >(serverTimingHeadersConfig);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': ?comment,
      'corsConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ResponseHeadersPolicyCorsConfig,
            Map<String, dynamic>
          >(corsConfig, (value) => value.toMap()),
      'customHeadersConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ResponseHeadersPolicyCustomHeadersConfig,
            Map<String, dynamic>
          >(customHeadersConfig, (value) => value.toMap()),
      'name': ?name,
      'removeHeadersConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ResponseHeadersPolicyRemoveHeadersConfig,
            Map<String, dynamic>
          >(removeHeadersConfig, (value) => value.toMap()),
      'securityHeadersConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ResponseHeadersPolicySecurityHeadersConfig,
            Map<String, dynamic>
          >(securityHeadersConfig, (value) => value.toMap()),
      'serverTimingHeadersConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ResponseHeadersPolicyServerTimingHeadersConfig,
            Map<String, dynamic>
          >(serverTimingHeadersConfig, (value) => value.toMap()),
    };
  }

  factory ResponseHeadersPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ResponseHeadersPolicyArgs(
      comment: map['comment'] == null ? null : map['comment'] as String,
      corsConfig: map['corsConfig'] == null
          ? null
          : ResponseHeadersPolicyCorsConfig.fromMap(
              (map['corsConfig'] as Map).cast<String, dynamic>(),
            ),
      customHeadersConfig: map['customHeadersConfig'] == null
          ? null
          : ResponseHeadersPolicyCustomHeadersConfig.fromMap(
              (map['customHeadersConfig'] as Map).cast<String, dynamic>(),
            ),
      name: map['name'] == null ? null : map['name'] as String,
      removeHeadersConfig: map['removeHeadersConfig'] == null
          ? null
          : ResponseHeadersPolicyRemoveHeadersConfig.fromMap(
              (map['removeHeadersConfig'] as Map).cast<String, dynamic>(),
            ),
      securityHeadersConfig: map['securityHeadersConfig'] == null
          ? null
          : ResponseHeadersPolicySecurityHeadersConfig.fromMap(
              (map['securityHeadersConfig'] as Map).cast<String, dynamic>(),
            ),
      serverTimingHeadersConfig: map['serverTimingHeadersConfig'] == null
          ? null
          : ResponseHeadersPolicyServerTimingHeadersConfig.fromMap(
              (map['serverTimingHeadersConfig'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
