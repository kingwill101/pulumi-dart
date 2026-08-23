// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'origin_request_policy_query_strings_config_query_strings.dart';

class OriginRequestPolicyQueryStringsConfig {
  final pulumi.Input<String> queryStringBehavior;
  final pulumi.Input<OriginRequestPolicyQueryStringsConfigQueryStrings>? queryStrings;

  /// Creates a new [OriginRequestPolicyQueryStringsConfig].
  /// [queryStringBehavior] Required.
  /// [queryStrings] Optional.
  const OriginRequestPolicyQueryStringsConfig({
    required this.queryStringBehavior,
    this.queryStrings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'queryStringBehavior': queryStringBehavior,
      'queryStrings': ?pulumi.Input.mapOptionalInputValue<OriginRequestPolicyQueryStringsConfigQueryStrings, Map<String, dynamic>>(queryStrings, (value) => value.toMap()),
    };
  }

  factory OriginRequestPolicyQueryStringsConfig.fromMap(Map<String, dynamic> map) {
    return OriginRequestPolicyQueryStringsConfig(
      queryStringBehavior: pulumi.Input.fromValue(map['queryStringBehavior'] as String),
      queryStrings: (() { final guardedValue = map['queryStrings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OriginRequestPolicyQueryStringsConfigQueryStrings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
