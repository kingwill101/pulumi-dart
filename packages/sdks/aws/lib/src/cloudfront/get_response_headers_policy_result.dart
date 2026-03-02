// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_response_headers_policy_cors_config.dart';
import 'get_response_headers_policy_custom_headers_config.dart';
import 'get_response_headers_policy_remove_headers_config.dart';
import 'get_response_headers_policy_security_headers_config.dart';
import 'get_response_headers_policy_server_timing_headers_config.dart';

/// Result data returned by getResponseHeadersPolicy.
class GetResponseHeadersPolicyResult {
  /// The response headers policy ARN.
  final String arn;
  /// Comment to describe the response headers policy. The comment cannot be longer than 128 characters.
  final String comment;
  /// Configuration for a set of HTTP response headers that are used for Cross-Origin Resource Sharing (CORS). See Cors Config for more information.
  final List<GetResponseHeadersPolicyCorsConfig> corsConfigs;
  /// Object that contains an attribute `items` that contains a list of Custom Headers. See Custom Header for more information.
  final List<GetResponseHeadersPolicyCustomHeadersConfig> customHeadersConfigs;
  /// Current version of the response headers policy.
  final String etag;
  final String id;
  final String name;
  /// Object that contains an attribute `items` that contains a list of Remove Headers. See Remove Header for more information.
  final List<GetResponseHeadersPolicyRemoveHeadersConfig> removeHeadersConfigs;
  /// A configuration for a set of security-related HTTP response headers. See Security Headers Config for more information.
  final List<GetResponseHeadersPolicySecurityHeadersConfig> securityHeadersConfigs;
  /// (Optional) Configuration for enabling the Server-Timing header in HTTP responses sent from CloudFront. See Server Timing Headers Config for more information.
  final List<GetResponseHeadersPolicyServerTimingHeadersConfig> serverTimingHeadersConfigs;

  /// Creates a new [GetResponseHeadersPolicyResult].
  /// [arn] The response headers policy ARN.
  /// [comment] Comment to describe the response headers policy. The comment cannot be longer than 128 characters.
  /// [corsConfigs] Configuration for a set of HTTP response headers that are used for Cross-Origin Resource Sharing (CORS). See Cors Config for more information.
  /// [customHeadersConfigs] Object that contains an attribute `items` that contains a list of Custom Headers. See Custom Header for more information.
  /// [etag] Current version of the response headers policy.
  /// [id] Required.
  /// [name] Required.
  /// [removeHeadersConfigs] Object that contains an attribute `items` that contains a list of Remove Headers. See Remove Header for more information.
  /// [securityHeadersConfigs] A configuration for a set of security-related HTTP response headers. See Security Headers Config for more information.
  /// [serverTimingHeadersConfigs] (Optional) Configuration for enabling the Server-Timing header in HTTP responses sent from CloudFront. See Server Timing Headers Config for more information.
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
    return <String, dynamic>{
      'arn': arn,
      'comment': comment,
      'corsConfigs': pulumi.Input.encodeList<GetResponseHeadersPolicyCorsConfig, Map<String, dynamic>>(corsConfigs, (value) => value.toMap()),
      'customHeadersConfigs': pulumi.Input.encodeList<GetResponseHeadersPolicyCustomHeadersConfig, Map<String, dynamic>>(customHeadersConfigs, (value) => value.toMap()),
      'etag': etag,
      'id': id,
      'name': name,
      'removeHeadersConfigs': pulumi.Input.encodeList<GetResponseHeadersPolicyRemoveHeadersConfig, Map<String, dynamic>>(removeHeadersConfigs, (value) => value.toMap()),
      'securityHeadersConfigs': pulumi.Input.encodeList<GetResponseHeadersPolicySecurityHeadersConfig, Map<String, dynamic>>(securityHeadersConfigs, (value) => value.toMap()),
      'serverTimingHeadersConfigs': pulumi.Input.encodeList<GetResponseHeadersPolicyServerTimingHeadersConfig, Map<String, dynamic>>(serverTimingHeadersConfigs, (value) => value.toMap()),
    };
  }

  factory GetResponseHeadersPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetResponseHeadersPolicyResult(
      arn: map['arn'] as String,
      comment: map['comment'] as String,
      corsConfigs: pulumi.Input.decodeList<GetResponseHeadersPolicyCorsConfig>(map['corsConfigs']!, (value) => GetResponseHeadersPolicyCorsConfig.fromMap((value as Map).cast<String, dynamic>())),
      customHeadersConfigs: pulumi.Input.decodeList<GetResponseHeadersPolicyCustomHeadersConfig>(map['customHeadersConfigs']!, (value) => GetResponseHeadersPolicyCustomHeadersConfig.fromMap((value as Map).cast<String, dynamic>())),
      etag: map['etag'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      removeHeadersConfigs: pulumi.Input.decodeList<GetResponseHeadersPolicyRemoveHeadersConfig>(map['removeHeadersConfigs']!, (value) => GetResponseHeadersPolicyRemoveHeadersConfig.fromMap((value as Map).cast<String, dynamic>())),
      securityHeadersConfigs: pulumi.Input.decodeList<GetResponseHeadersPolicySecurityHeadersConfig>(map['securityHeadersConfigs']!, (value) => GetResponseHeadersPolicySecurityHeadersConfig.fromMap((value as Map).cast<String, dynamic>())),
      serverTimingHeadersConfigs: pulumi.Input.decodeList<GetResponseHeadersPolicyServerTimingHeadersConfig>(map['serverTimingHeadersConfigs']!, (value) => GetResponseHeadersPolicyServerTimingHeadersConfig.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

