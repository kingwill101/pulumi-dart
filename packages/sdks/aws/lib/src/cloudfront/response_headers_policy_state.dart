// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'response_headers_policy_cors_config.dart';
import 'response_headers_policy_custom_headers_config.dart';
import 'response_headers_policy_remove_headers_config.dart';
import 'response_headers_policy_security_headers_config.dart';
import 'response_headers_policy_server_timing_headers_config.dart';

/// Input properties used for looking up and filtering ResponseHeadersPolicy resources.
class ResponseHeadersPolicyState {
  /// The response headers policy ARN.
  final pulumi.Input<String>? arn;
  /// A comment to describe the response headers policy. The comment cannot be longer than 128 characters.
  final pulumi.Input<String>? comment;
  /// A configuration for a set of HTTP response headers that are used for Cross-Origin Resource Sharing (CORS). See Cors Config for more information.
  final pulumi.Input<ResponseHeadersPolicyCorsConfig>? corsConfig;
  /// Object that contains an attribute `items` that contains a list of custom headers. See Custom Header for more information.
  final pulumi.Input<ResponseHeadersPolicyCustomHeadersConfig>? customHeadersConfig;
  /// The current version of the response headers policy.
  final pulumi.Input<String>? etag;
  /// A unique name to identify the response headers policy.
  final pulumi.Input<String>? name;
  /// A configuration for a set of HTTP headers to remove from the HTTP response. Object that contains an attribute `items` that contains a list of headers. See Remove Header for more information.
  final pulumi.Input<ResponseHeadersPolicyRemoveHeadersConfig>? removeHeadersConfig;
  /// A configuration for a set of security-related HTTP response headers. See Security Headers Config for more information.
  final pulumi.Input<ResponseHeadersPolicySecurityHeadersConfig>? securityHeadersConfig;
  /// A configuration for enabling the Server-Timing header in HTTP responses sent from CloudFront. See Server Timing Headers Config for more information.
  final pulumi.Input<ResponseHeadersPolicyServerTimingHeadersConfig>? serverTimingHeadersConfig;

  /// Creates a new [ResponseHeadersPolicyState].
  /// [arn] The response headers policy ARN.
  /// [comment] A comment to describe the response headers policy. The comment cannot be longer than 128 characters.
  /// [corsConfig] A configuration for a set of HTTP response headers that are used for Cross-Origin Resource Sharing (CORS). See Cors Config for more information.
  /// [customHeadersConfig] Object that contains an attribute `items` that contains a list of custom headers. See Custom Header for more information.
  /// [etag] The current version of the response headers policy.
  /// [name] A unique name to identify the response headers policy.
  /// [removeHeadersConfig] A configuration for a set of HTTP headers to remove from the HTTP response. Object that contains an attribute `items` that contains a list of headers. See Remove Header for more information.
  /// [securityHeadersConfig] A configuration for a set of security-related HTTP response headers. See Security Headers Config for more information.
  /// [serverTimingHeadersConfig] A configuration for enabling the Server-Timing header in HTTP responses sent from CloudFront. See Server Timing Headers Config for more information.
  ResponseHeadersPolicyState({
    this.arn,
    this.comment,
    this.corsConfig,
    this.customHeadersConfig,
    this.etag,
    this.name,
    this.removeHeadersConfig,
    this.securityHeadersConfig,
    this.serverTimingHeadersConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'comment': ?comment,
      'corsConfig': ?pulumi.Input.mapOptionalInputValue<ResponseHeadersPolicyCorsConfig, Map<String, dynamic>>(corsConfig, (value) => value.toMap()),
      'customHeadersConfig': ?pulumi.Input.mapOptionalInputValue<ResponseHeadersPolicyCustomHeadersConfig, Map<String, dynamic>>(customHeadersConfig, (value) => value.toMap()),
      'etag': ?etag,
      'name': ?name,
      'removeHeadersConfig': ?pulumi.Input.mapOptionalInputValue<ResponseHeadersPolicyRemoveHeadersConfig, Map<String, dynamic>>(removeHeadersConfig, (value) => value.toMap()),
      'securityHeadersConfig': ?pulumi.Input.mapOptionalInputValue<ResponseHeadersPolicySecurityHeadersConfig, Map<String, dynamic>>(securityHeadersConfig, (value) => value.toMap()),
      'serverTimingHeadersConfig': ?pulumi.Input.mapOptionalInputValue<ResponseHeadersPolicyServerTimingHeadersConfig, Map<String, dynamic>>(serverTimingHeadersConfig, (value) => value.toMap()),
    };
  }

  factory ResponseHeadersPolicyState.fromMap(Map<String, dynamic> map) {
    return ResponseHeadersPolicyState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      corsConfig: (() { final guardedValue = map['corsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResponseHeadersPolicyCorsConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      customHeadersConfig: (() { final guardedValue = map['customHeadersConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResponseHeadersPolicyCustomHeadersConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      removeHeadersConfig: (() { final guardedValue = map['removeHeadersConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResponseHeadersPolicyRemoveHeadersConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      securityHeadersConfig: (() { final guardedValue = map['securityHeadersConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResponseHeadersPolicySecurityHeadersConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serverTimingHeadersConfig: (() { final guardedValue = map['serverTimingHeadersConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResponseHeadersPolicyServerTimingHeadersConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

