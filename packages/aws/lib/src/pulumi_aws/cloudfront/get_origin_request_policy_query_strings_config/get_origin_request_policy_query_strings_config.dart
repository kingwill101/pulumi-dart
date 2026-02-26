// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_origin_request_policy_query_strings_config_query_string/get_origin_request_policy_query_strings_config_query_string.dart';

class GetOriginRequestPolicyQueryStringsConfig {
  final String queryStringBehavior;
  final List<GetOriginRequestPolicyQueryStringsConfigQueryString> queryStrings;

  GetOriginRequestPolicyQueryStringsConfig({
    required this.queryStringBehavior,
    required this.queryStrings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['queryStringBehavior'] = queryStringBehavior;
    map['queryStrings'] = Input.encodeList<
        GetOriginRequestPolicyQueryStringsConfigQueryString,
        Map<String, dynamic>>(queryStrings, (value) => value.toMap());
    return map;
  }

  factory GetOriginRequestPolicyQueryStringsConfig.fromMap(
      Map<String, dynamic> map) {
    return GetOriginRequestPolicyQueryStringsConfig(
      queryStringBehavior: map['queryStringBehavior'] as String,
      queryStrings:
          Input.decodeList<GetOriginRequestPolicyQueryStringsConfigQueryString>(
              map['queryStrings'],
              (value) =>
                  GetOriginRequestPolicyQueryStringsConfigQueryString.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
