// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_response_headers_policy_cors_config/get_response_headers_policy_cors_config.dart';
import '../get_response_headers_policy_custom_headers_config/get_response_headers_policy_custom_headers_config.dart';
import '../get_response_headers_policy_remove_headers_config/get_response_headers_policy_remove_headers_config.dart';
import '../get_response_headers_policy_security_headers_config/get_response_headers_policy_security_headers_config.dart';
import '../get_response_headers_policy_server_timing_headers_config/get_response_headers_policy_server_timing_headers_config.dart';

/// Result data returned by getResponseHeadersPolicy.
class GetResponseHeadersPolicyResult {
  /// The response headers policy ARN.
  final String arn;

  /// Comment to describe the response headers policy. The comment cannot be longer than 128 characters.
  final String comment;

  /// Configuration for a set of HTTP response headers that are used for Cross-Origin Resource Sharing (CORS). See Cors Config for more information.
  final List<GetResponseHeadersPolicyCorsConfig> corsConfigs;

  /// Object that contains an attribute <span pulumi-lang-nodejs="`items`" pulumi-lang-dotnet="`Items`" pulumi-lang-go="`items`" pulumi-lang-python="`items`" pulumi-lang-yaml="`items`" pulumi-lang-java="`items`">`items`</span> that contains a list of Custom Headers. See Custom Header for more information.
  final List<GetResponseHeadersPolicyCustomHeadersConfig> customHeadersConfigs;

  /// Current version of the response headers policy.
  final String etag;
  final String id;
  final String name;

  /// Object that contains an attribute <span pulumi-lang-nodejs="`items`" pulumi-lang-dotnet="`Items`" pulumi-lang-go="`items`" pulumi-lang-python="`items`" pulumi-lang-yaml="`items`" pulumi-lang-java="`items`">`items`</span> that contains a list of Remove Headers. See Remove Header for more information.
  final List<GetResponseHeadersPolicyRemoveHeadersConfig> removeHeadersConfigs;

  /// A configuration for a set of security-related HTTP response headers. See Security Headers Config for more information.
  final List<GetResponseHeadersPolicySecurityHeadersConfig>
      securityHeadersConfigs;

  /// (Optional) Configuration for enabling the Server-Timing header in HTTP responses sent from CloudFront. See Server Timing Headers Config for more information.
  final List<GetResponseHeadersPolicyServerTimingHeadersConfig>
      serverTimingHeadersConfigs;

  GetResponseHeadersPolicyResult({
    required this.arn,
    required this.comment,
    required this.corsConfigs,
    required this.customHeadersConfigs,
    required this.etag,
    required this.id,
    required this.name,
    required this.removeHeadersConfigs,
    required this.securityHeadersConfigs,
    required this.serverTimingHeadersConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['comment'] = comment;
    map['corsConfigs'] = Input.encodeList<GetResponseHeadersPolicyCorsConfig,
        Map<String, dynamic>>(corsConfigs, (value) => value.toMap());
    map['customHeadersConfigs'] = Input.encodeList<
        GetResponseHeadersPolicyCustomHeadersConfig,
        Map<String, dynamic>>(customHeadersConfigs, (value) => value.toMap());
    map['etag'] = etag;
    map['id'] = id;
    map['name'] = name;
    map['removeHeadersConfigs'] = Input.encodeList<
        GetResponseHeadersPolicyRemoveHeadersConfig,
        Map<String, dynamic>>(removeHeadersConfigs, (value) => value.toMap());
    map['securityHeadersConfigs'] = Input.encodeList<
        GetResponseHeadersPolicySecurityHeadersConfig,
        Map<String, dynamic>>(securityHeadersConfigs, (value) => value.toMap());
    map['serverTimingHeadersConfigs'] = Input.encodeList<
            GetResponseHeadersPolicyServerTimingHeadersConfig,
            Map<String, dynamic>>(
        serverTimingHeadersConfigs, (value) => value.toMap());
    return map;
  }

  factory GetResponseHeadersPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetResponseHeadersPolicyResult(
      arn: map['arn'] as String,
      comment: map['comment'] as String,
      corsConfigs: Input.decodeList<GetResponseHeadersPolicyCorsConfig>(
          map['corsConfigs'],
          (value) => GetResponseHeadersPolicyCorsConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
      customHeadersConfigs:
          Input.decodeList<GetResponseHeadersPolicyCustomHeadersConfig>(
              map['customHeadersConfigs'],
              (value) => GetResponseHeadersPolicyCustomHeadersConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      etag: map['etag'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      removeHeadersConfigs:
          Input.decodeList<GetResponseHeadersPolicyRemoveHeadersConfig>(
              map['removeHeadersConfigs'],
              (value) => GetResponseHeadersPolicyRemoveHeadersConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      securityHeadersConfigs:
          Input.decodeList<GetResponseHeadersPolicySecurityHeadersConfig>(
              map['securityHeadersConfigs'],
              (value) => GetResponseHeadersPolicySecurityHeadersConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      serverTimingHeadersConfigs:
          Input.decodeList<GetResponseHeadersPolicyServerTimingHeadersConfig>(
              map['serverTimingHeadersConfigs'],
              (value) =>
                  GetResponseHeadersPolicyServerTimingHeadersConfig.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
