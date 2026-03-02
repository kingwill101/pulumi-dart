// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'origin_request_policy_cookies_config.dart';
import 'origin_request_policy_headers_config.dart';
import 'origin_request_policy_query_strings_config.dart';

/// Input properties used for looking up and filtering OriginRequestPolicy resources.
class OriginRequestPolicyState {
  /// The origin request policy ARN.
  final pulumi.Input<String>? arn;
  /// Comment to describe the origin request policy.
  final pulumi.Input<String>? comment;
  /// Object that determines whether any cookies in viewer requests (and if so, which cookies) are included in the origin request key and automatically included in requests that CloudFront sends to the origin. See Cookies Config for more information.
  final pulumi.Input<OriginRequestPolicyCookiesConfig>? cookiesConfig;
  /// The current version of the origin request policy.
  final pulumi.Input<String>? etag;
  /// Object that determines whether any HTTP headers (and if so, which headers) are included in the origin request key and automatically included in requests that CloudFront sends to the origin. See Headers Config for more information.
  final pulumi.Input<OriginRequestPolicyHeadersConfig>? headersConfig;
  /// Unique name to identify the origin request policy.
  final pulumi.Input<String>? name;
  /// Object that determines whether any URL query strings in viewer requests (and if so, which query strings) are included in the origin request key and automatically included in requests that CloudFront sends to the origin. See Query String Config for more information.
  final pulumi.Input<OriginRequestPolicyQueryStringsConfig>? queryStringsConfig;

  /// Creates a new [OriginRequestPolicyState].
  /// [arn] The origin request policy ARN.
  /// [comment] Comment to describe the origin request policy.
  /// [cookiesConfig] Object that determines whether any cookies in viewer requests (and if so, which cookies) are included in the origin request key and automatically included in requests that CloudFront sends to the origin. See Cookies Config for more information.
  /// [etag] The current version of the origin request policy.
  /// [headersConfig] Object that determines whether any HTTP headers (and if so, which headers) are included in the origin request key and automatically included in requests that CloudFront sends to the origin. See Headers Config for more information.
  /// [name] Unique name to identify the origin request policy.
  /// [queryStringsConfig] Object that determines whether any URL query strings in viewer requests (and if so, which query strings) are included in the origin request key and automatically included in requests that CloudFront sends to the origin. See Query String Config for more information.
  OriginRequestPolicyState({
    this.arn,
    this.comment,
    this.cookiesConfig,
    this.etag,
    this.headersConfig,
    this.name,
    this.queryStringsConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'comment': ?comment,
      'cookiesConfig': ?pulumi.Input.mapOptionalInputValue<OriginRequestPolicyCookiesConfig, Map<String, dynamic>>(cookiesConfig, (value) => value.toMap()),
      'etag': ?etag,
      'headersConfig': ?pulumi.Input.mapOptionalInputValue<OriginRequestPolicyHeadersConfig, Map<String, dynamic>>(headersConfig, (value) => value.toMap()),
      'name': ?name,
      'queryStringsConfig': ?pulumi.Input.mapOptionalInputValue<OriginRequestPolicyQueryStringsConfig, Map<String, dynamic>>(queryStringsConfig, (value) => value.toMap()),
    };
  }

  factory OriginRequestPolicyState.fromMap(Map<String, dynamic> map) {
    return OriginRequestPolicyState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      comment: map['comment'] == null ? null : (map['comment'] as String).input(),
      cookiesConfig: map['cookiesConfig'] == null ? null : (OriginRequestPolicyCookiesConfig.fromMap((map['cookiesConfig'] as Map).cast<String, dynamic>())).input(),
      etag: map['etag'] == null ? null : (map['etag'] as String).input(),
      headersConfig: map['headersConfig'] == null ? null : (OriginRequestPolicyHeadersConfig.fromMap((map['headersConfig'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      queryStringsConfig: map['queryStringsConfig'] == null ? null : (OriginRequestPolicyQueryStringsConfig.fromMap((map['queryStringsConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

