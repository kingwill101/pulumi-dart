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
  final String? arn;
  /// Comment to describe the response headers policy. The comment cannot be longer than 128 characters.
  final String? comment;
  /// Configuration for a set of HTTP response headers that are used for Cross-Origin Resource Sharing (CORS). See Cors Config for more information.
  final List<GetResponseHeadersPolicyCorsConfig>? corsConfigs;
  /// Object that contains an attribute `items` that contains a list of Custom Headers. See Custom Header for more information.
  final List<GetResponseHeadersPolicyCustomHeadersConfig>? customHeadersConfigs;
  /// Current version of the response headers policy.
  final String? etag;
  final String? id;
  final String? name;
  /// Object that contains an attribute `items` that contains a list of Remove Headers. See Remove Header for more information.
  final List<GetResponseHeadersPolicyRemoveHeadersConfig>? removeHeadersConfigs;
  /// A configuration for a set of security-related HTTP response headers. See Security Headers Config for more information.
  final List<GetResponseHeadersPolicySecurityHeadersConfig>? securityHeadersConfigs;
  /// (Optional) Configuration for enabling the Server-Timing header in HTTP responses sent from CloudFront. See Server Timing Headers Config for more information.
  final List<GetResponseHeadersPolicyServerTimingHeadersConfig>? serverTimingHeadersConfigs;

  /// Creates a new [GetResponseHeadersPolicyResult].
  /// [arn] The response headers policy ARN.
  /// [comment] Comment to describe the response headers policy. The comment cannot be longer than 128 characters.
  /// [corsConfigs] Configuration for a set of HTTP response headers that are used for Cross-Origin Resource Sharing (CORS). See Cors Config for more information.
  /// [customHeadersConfigs] Object that contains an attribute `items` that contains a list of Custom Headers. See Custom Header for more information.
  /// [etag] Current version of the response headers policy.
  /// [id] Optional.
  /// [name] Optional.
  /// [removeHeadersConfigs] Object that contains an attribute `items` that contains a list of Remove Headers. See Remove Header for more information.
  /// [securityHeadersConfigs] A configuration for a set of security-related HTTP response headers. See Security Headers Config for more information.
  /// [serverTimingHeadersConfigs] (Optional) Configuration for enabling the Server-Timing header in HTTP responses sent from CloudFront. See Server Timing Headers Config for more information.
  const GetResponseHeadersPolicyResult({
    this.arn,
    this.comment,
    this.corsConfigs,
    this.customHeadersConfigs,
    this.etag,
    this.id,
    this.name,
    this.removeHeadersConfigs,
    this.securityHeadersConfigs,
    this.serverTimingHeadersConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'comment': ?comment,
      'corsConfigs': ?(() { final guardedValue = corsConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetResponseHeadersPolicyCorsConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'customHeadersConfigs': ?(() { final guardedValue = customHeadersConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetResponseHeadersPolicyCustomHeadersConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'etag': ?etag,
      'id': ?id,
      'name': ?name,
      'removeHeadersConfigs': ?(() { final guardedValue = removeHeadersConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetResponseHeadersPolicyRemoveHeadersConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'securityHeadersConfigs': ?(() { final guardedValue = securityHeadersConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetResponseHeadersPolicySecurityHeadersConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'serverTimingHeadersConfigs': ?(() { final guardedValue = serverTimingHeadersConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetResponseHeadersPolicyServerTimingHeadersConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetResponseHeadersPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetResponseHeadersPolicyResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return guardedValue as String; })(),
      corsConfigs: (() { final guardedValue = map['corsConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetResponseHeadersPolicyCorsConfig>(guardedValue, (value) => GetResponseHeadersPolicyCorsConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      customHeadersConfigs: (() { final guardedValue = map['customHeadersConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetResponseHeadersPolicyCustomHeadersConfig>(guardedValue, (value) => GetResponseHeadersPolicyCustomHeadersConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      removeHeadersConfigs: (() { final guardedValue = map['removeHeadersConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetResponseHeadersPolicyRemoveHeadersConfig>(guardedValue, (value) => GetResponseHeadersPolicyRemoveHeadersConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      securityHeadersConfigs: (() { final guardedValue = map['securityHeadersConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetResponseHeadersPolicySecurityHeadersConfig>(guardedValue, (value) => GetResponseHeadersPolicySecurityHeadersConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      serverTimingHeadersConfigs: (() { final guardedValue = map['serverTimingHeadersConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetResponseHeadersPolicyServerTimingHeadersConfig>(guardedValue, (value) => GetResponseHeadersPolicyServerTimingHeadersConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
