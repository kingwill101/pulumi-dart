// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../origin_request_policy_cookies_config/origin_request_policy_cookies_config.dart';
import '../origin_request_policy_headers_config/origin_request_policy_headers_config.dart';
import '../origin_request_policy_query_strings_config/origin_request_policy_query_strings_config.dart';

/// The set of arguments for OriginRequestPolicy.
class OriginRequestPolicyArgs {
  /// Comment to describe the origin request policy.
  final Input<String>? comment;

  /// Object that determines whether any cookies in viewer requests (and if so, which cookies) are included in the origin request key and automatically included in requests that CloudFront sends to the origin. See Cookies Config for more information.
  final Input<OriginRequestPolicyCookiesConfig> cookiesConfig;

  /// Object that determines whether any HTTP headers (and if so, which headers) are included in the origin request key and automatically included in requests that CloudFront sends to the origin. See Headers Config for more information.
  final Input<OriginRequestPolicyHeadersConfig> headersConfig;

  /// Unique name to identify the origin request policy.
  final Input<String>? name;

  /// Object that determines whether any URL query strings in viewer requests (and if so, which query strings) are included in the origin request key and automatically included in requests that CloudFront sends to the origin. See Query String Config for more information.
  final Input<OriginRequestPolicyQueryStringsConfig> queryStringsConfig;

  OriginRequestPolicyArgs({
    this.comment,
    required this.cookiesConfig,
    required this.headersConfig,
    this.name,
    required this.queryStringsConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final commentValue = comment;
    if (commentValue != null) {
      map['comment'] = commentValue;
    }
    map['cookiesConfig'] = Input.mapInputValue<OriginRequestPolicyCookiesConfig,
        Map<String, dynamic>>(cookiesConfig, (value) => value.toMap());
    map['headersConfig'] = Input.mapInputValue<OriginRequestPolicyHeadersConfig,
        Map<String, dynamic>>(headersConfig, (value) => value.toMap());
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['queryStringsConfig'] = Input.mapInputValue<
        OriginRequestPolicyQueryStringsConfig,
        Map<String, dynamic>>(queryStringsConfig, (value) => value.toMap());
    return map;
  }

  factory OriginRequestPolicyArgs.fromMap(Map<String, dynamic> map) {
    return OriginRequestPolicyArgs(
      comment: Input.asOptionalInput<String>(map['comment']),
      cookiesConfig:
          Input.asInput<OriginRequestPolicyCookiesConfig>(map['cookiesConfig']),
      headersConfig:
          Input.asInput<OriginRequestPolicyHeadersConfig>(map['headersConfig']),
      name: Input.asOptionalInput<String>(map['name']),
      queryStringsConfig: Input.asInput<OriginRequestPolicyQueryStringsConfig>(
          map['queryStringsConfig']),
    );
  }
}
