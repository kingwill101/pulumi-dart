// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_origin_request_policy_cookies_config.dart';
import 'get_origin_request_policy_headers_config.dart';
import 'get_origin_request_policy_query_strings_config.dart';

/// Result data returned by getOriginRequestPolicy.
class GetOriginRequestPolicyResult {
  /// The origin request policy ARN.
  final String? arn;
  /// Comment to describe the origin request policy.
  final String? comment;
  /// Object that determines whether any cookies in viewer requests (and if so, which cookies) are included in the origin request key and automatically included in requests that CloudFront sends to the origin. See Cookies Config for more information.
  final List<GetOriginRequestPolicyCookiesConfig>? cookiesConfigs;
  /// Current version of the origin request policy.
  final String? etag;
  /// Object that determines whether any HTTP headers (and if so, which headers) are included in the origin request key and automatically included in requests that CloudFront sends to the origin. See Headers Config for more information.
  final List<GetOriginRequestPolicyHeadersConfig>? headersConfigs;
  final String? id;
  final String? name;
  /// Object that determines whether any URL query strings in viewer requests (and if so, which query strings) are included in the origin request key and automatically included in requests that CloudFront sends to the origin. See Query String Config for more information.
  final List<GetOriginRequestPolicyQueryStringsConfig>? queryStringsConfigs;

  /// Creates a new [GetOriginRequestPolicyResult].
  /// [arn] The origin request policy ARN.
  /// [comment] Comment to describe the origin request policy.
  /// [cookiesConfigs] Object that determines whether any cookies in viewer requests (and if so, which cookies) are included in the origin request key and automatically included in requests that CloudFront sends to the origin. See Cookies Config for more information.
  /// [etag] Current version of the origin request policy.
  /// [headersConfigs] Object that determines whether any HTTP headers (and if so, which headers) are included in the origin request key and automatically included in requests that CloudFront sends to the origin. See Headers Config for more information.
  /// [id] Optional.
  /// [name] Optional.
  /// [queryStringsConfigs] Object that determines whether any URL query strings in viewer requests (and if so, which query strings) are included in the origin request key and automatically included in requests that CloudFront sends to the origin. See Query String Config for more information.
  const GetOriginRequestPolicyResult({
    this.arn,
    this.comment,
    this.cookiesConfigs,
    this.etag,
    this.headersConfigs,
    this.id,
    this.name,
    this.queryStringsConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'comment': ?comment,
      'cookiesConfigs': ?(() { final guardedValue = cookiesConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetOriginRequestPolicyCookiesConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'etag': ?etag,
      'headersConfigs': ?(() { final guardedValue = headersConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetOriginRequestPolicyHeadersConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'name': ?name,
      'queryStringsConfigs': ?(() { final guardedValue = queryStringsConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetOriginRequestPolicyQueryStringsConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetOriginRequestPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetOriginRequestPolicyResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cookiesConfigs: (() { final guardedValue = map['cookiesConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetOriginRequestPolicyCookiesConfig>(guardedValue, (value) => GetOriginRequestPolicyCookiesConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      headersConfigs: (() { final guardedValue = map['headersConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetOriginRequestPolicyHeadersConfig>(guardedValue, (value) => GetOriginRequestPolicyHeadersConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      queryStringsConfigs: (() { final guardedValue = map['queryStringsConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetOriginRequestPolicyQueryStringsConfig>(guardedValue, (value) => GetOriginRequestPolicyQueryStringsConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
