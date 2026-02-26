// ignore_for_file: unused_element, unnecessary_cast

import '../origin_request_policy_query_strings_config_query_strings/origin_request_policy_query_strings_config_query_strings.dart';

class OriginRequestPolicyQueryStringsConfig {
  final String queryStringBehavior;
  final OriginRequestPolicyQueryStringsConfigQueryStrings? queryStrings;

  OriginRequestPolicyQueryStringsConfig({
    required this.queryStringBehavior,
    this.queryStrings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['queryStringBehavior'] = queryStringBehavior;
    final queryStringsValue = queryStrings;
    if (queryStringsValue != null) {
      map['queryStrings'] = queryStringsValue.toMap();
    }
    return map;
  }

  factory OriginRequestPolicyQueryStringsConfig.fromMap(
      Map<String, dynamic> map) {
    return OriginRequestPolicyQueryStringsConfig(
      queryStringBehavior: map['queryStringBehavior'] as String,
      queryStrings: map['queryStrings'] == null
          ? null
          : OriginRequestPolicyQueryStringsConfigQueryStrings.fromMap(
              (map['queryStrings'] as Map).cast<String, dynamic>()),
    );
  }
}
