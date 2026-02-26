// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_origin_request_policy_cookies_config/get_origin_request_policy_cookies_config.dart';
import '../get_origin_request_policy_headers_config/get_origin_request_policy_headers_config.dart';
import '../get_origin_request_policy_query_strings_config/get_origin_request_policy_query_strings_config.dart';

/// Result data returned by getOriginRequestPolicy.
class GetOriginRequestPolicyResult {
  /// The origin request policy ARN.
  final String arn;

  /// Comment to describe the origin request policy.
  final String comment;

  /// Object that determines whether any cookies in viewer requests (and if so, which cookies) are included in the origin request key and automatically included in requests that CloudFront sends to the origin. See Cookies Config for more information.
  final List<GetOriginRequestPolicyCookiesConfig> cookiesConfigs;

  /// Current version of the origin request policy.
  final String etag;

  /// Object that determines whether any HTTP headers (and if so, which headers) are included in the origin request key and automatically included in requests that CloudFront sends to the origin. See Headers Config for more information.
  final List<GetOriginRequestPolicyHeadersConfig> headersConfigs;
  final String? id;
  final String? name;

  /// Object that determines whether any URL query strings in viewer requests (and if so, which query strings) are included in the origin request key and automatically included in requests that CloudFront sends to the origin. See Query String Config for more information.
  final List<GetOriginRequestPolicyQueryStringsConfig> queryStringsConfigs;

  GetOriginRequestPolicyResult({
    required this.arn,
    required this.comment,
    required this.cookiesConfigs,
    required this.etag,
    required this.headersConfigs,
    this.id,
    this.name,
    required this.queryStringsConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['comment'] = comment;
    map['cookiesConfigs'] = Input.encodeList<
        GetOriginRequestPolicyCookiesConfig,
        Map<String, dynamic>>(cookiesConfigs, (value) => value.toMap());
    map['etag'] = etag;
    map['headersConfigs'] = Input.encodeList<
        GetOriginRequestPolicyHeadersConfig,
        Map<String, dynamic>>(headersConfigs, (value) => value.toMap());
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['queryStringsConfigs'] = Input.encodeList<
        GetOriginRequestPolicyQueryStringsConfig,
        Map<String, dynamic>>(queryStringsConfigs, (value) => value.toMap());
    return map;
  }

  factory GetOriginRequestPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetOriginRequestPolicyResult(
      arn: map['arn'] as String,
      comment: map['comment'] as String,
      cookiesConfigs: Input.decodeList<GetOriginRequestPolicyCookiesConfig>(
          map['cookiesConfigs'],
          (value) => GetOriginRequestPolicyCookiesConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
      etag: map['etag'] as String,
      headersConfigs: Input.decodeList<GetOriginRequestPolicyHeadersConfig>(
          map['headersConfigs'],
          (value) => GetOriginRequestPolicyHeadersConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      queryStringsConfigs:
          Input.decodeList<GetOriginRequestPolicyQueryStringsConfig>(
              map['queryStringsConfigs'],
              (value) => GetOriginRequestPolicyQueryStringsConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
