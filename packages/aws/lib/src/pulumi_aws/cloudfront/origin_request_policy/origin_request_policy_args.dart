// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../origin_request_policy_cookies_config/origin_request_policy_cookies_config.dart';
import '../origin_request_policy_headers_config/origin_request_policy_headers_config.dart';
import '../origin_request_policy_query_strings_config/origin_request_policy_query_strings_config.dart';

/// The set of arguments for OriginRequestPolicy.
class OriginRequestPolicyArgs {
  /// Comment to describe the origin request policy.
  final pulumi.Input<String>? comment;

  /// Object that determines whether any cookies in viewer requests (and if so, which cookies) are included in the origin request key and automatically included in requests that CloudFront sends to the origin. See Cookies Config for more information.
  final pulumi.Input<OriginRequestPolicyCookiesConfig> cookiesConfig;

  /// Object that determines whether any HTTP headers (and if so, which headers) are included in the origin request key and automatically included in requests that CloudFront sends to the origin. See Headers Config for more information.
  final pulumi.Input<OriginRequestPolicyHeadersConfig> headersConfig;

  /// Unique name to identify the origin request policy.
  final pulumi.Input<String>? name;

  /// Object that determines whether any URL query strings in viewer requests (and if so, which query strings) are included in the origin request key and automatically included in requests that CloudFront sends to the origin. See Query String Config for more information.
  final pulumi.Input<OriginRequestPolicyQueryStringsConfig> queryStringsConfig;

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
    map['cookiesConfig'] = pulumi.Input.mapInputValue<
        OriginRequestPolicyCookiesConfig,
        Map<String, dynamic>>(cookiesConfig, (value) => value.toMap());
    map['headersConfig'] = pulumi.Input.mapInputValue<
        OriginRequestPolicyHeadersConfig,
        Map<String, dynamic>>(headersConfig, (value) => value.toMap());
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['queryStringsConfig'] = pulumi.Input.mapInputValue<
        OriginRequestPolicyQueryStringsConfig,
        Map<String, dynamic>>(queryStringsConfig, (value) => value.toMap());
    return map;
  }

  factory OriginRequestPolicyArgs.fromMap(Map<String, dynamic> map) {
    return OriginRequestPolicyArgs(
      comment: pulumi.Input.asOptionalInput<String>(map['comment']),
      cookiesConfig: pulumi.Input.asInput<OriginRequestPolicyCookiesConfig>(
          map['cookiesConfig']),
      headersConfig: pulumi.Input.asInput<OriginRequestPolicyHeadersConfig>(
          map['headersConfig']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      queryStringsConfig:
          pulumi.Input.asInput<OriginRequestPolicyQueryStringsConfig>(
              map['queryStringsConfig']),
    );
  }
}
