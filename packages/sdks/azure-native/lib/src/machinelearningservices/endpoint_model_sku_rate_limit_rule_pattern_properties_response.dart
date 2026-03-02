// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointModelSkuRateLimitRulePatternPropertiesResponse {
  final pulumi.Input<String>? method;
  final pulumi.Input<String>? path;

  /// Creates a new [EndpointModelSkuRateLimitRulePatternPropertiesResponse].
  /// [method] Optional.
  /// [path] Optional.
  EndpointModelSkuRateLimitRulePatternPropertiesResponse({
    this.method,
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'method': ?method,
      'path': ?path,
    };
  }

  factory EndpointModelSkuRateLimitRulePatternPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return EndpointModelSkuRateLimitRulePatternPropertiesResponse(
      method: map['method'] == null ? null : (map['method'] as String).input(),
      path: map['path'] == null ? null : (map['path'] as String).input(),
    );
  }
}

