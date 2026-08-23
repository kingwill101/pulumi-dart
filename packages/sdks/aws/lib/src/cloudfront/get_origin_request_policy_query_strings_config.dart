// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_origin_request_policy_query_strings_config_query_string.dart';

class GetOriginRequestPolicyQueryStringsConfig {
  final pulumi.Input<String> queryStringBehavior;
  final pulumi.Input<List<GetOriginRequestPolicyQueryStringsConfigQueryString>> queryStrings;

  /// Creates a new [GetOriginRequestPolicyQueryStringsConfig].
  /// [queryStringBehavior] Required.
  /// [queryStrings] Required.
  const GetOriginRequestPolicyQueryStringsConfig({
    required this.queryStringBehavior,
    required this.queryStrings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'queryStringBehavior': queryStringBehavior,
      'queryStrings': pulumi.Input.mapInputValue<List<GetOriginRequestPolicyQueryStringsConfigQueryString>, List<Map<String, dynamic>>>(queryStrings, (value) => pulumi.Input.encodeList<GetOriginRequestPolicyQueryStringsConfigQueryString, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetOriginRequestPolicyQueryStringsConfig.fromMap(Map<String, dynamic> map) {
    return GetOriginRequestPolicyQueryStringsConfig(
      queryStringBehavior: pulumi.Input.fromValue(map['queryStringBehavior'] as String),
      queryStrings: pulumi.Input.fromValue(pulumi.Input.decodeList<GetOriginRequestPolicyQueryStringsConfigQueryString>(map['queryStrings']!, (value) => GetOriginRequestPolicyQueryStringsConfigQueryString.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
