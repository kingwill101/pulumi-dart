// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_model_sku_rate_limit_rule_pattern_properties_response.dart';

class EndpointModelSkuRateLimitRulePropertiesResponse {
  final double? count;
  /// If the dynamic throttling is enabled.
  final bool? dynamicThrottlingEnabled;
  final String? key;
  final List<EndpointModelSkuRateLimitRulePatternPropertiesResponse>? matchPatterns;
  final double? minCount;
  final double? renewalPeriod;

  /// Creates a new [EndpointModelSkuRateLimitRulePropertiesResponse].
  /// [count] Optional.
  /// [dynamicThrottlingEnabled] If the dynamic throttling is enabled.
  /// [key] Optional.
  /// [matchPatterns] Optional.
  /// [minCount] Optional.
  /// [renewalPeriod] Optional.
  EndpointModelSkuRateLimitRulePropertiesResponse({
    this.count,
    this.dynamicThrottlingEnabled,
    this.key,
    this.matchPatterns,
    this.minCount,
    this.renewalPeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'dynamicThrottlingEnabled': ?dynamicThrottlingEnabled,
      'key': ?key,
      'matchPatterns': ?matchPatterns == null ? null : pulumi.Input.encodeList<EndpointModelSkuRateLimitRulePatternPropertiesResponse, Map<String, dynamic>>(matchPatterns!, (value) => value.toMap()),
      'minCount': ?minCount,
      'renewalPeriod': ?renewalPeriod,
    };
  }

  factory EndpointModelSkuRateLimitRulePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return EndpointModelSkuRateLimitRulePropertiesResponse(
      count: map['count'] == null ? null : map['count'] as double,
      dynamicThrottlingEnabled: map['dynamicThrottlingEnabled'] == null ? null : map['dynamicThrottlingEnabled'] as bool,
      key: map['key'] == null ? null : map['key'] as String,
      matchPatterns: map['matchPatterns'] == null ? null : pulumi.Input.decodeList<EndpointModelSkuRateLimitRulePatternPropertiesResponse>(map['matchPatterns'], (value) => EndpointModelSkuRateLimitRulePatternPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())),
      minCount: map['minCount'] == null ? null : map['minCount'] as double,
      renewalPeriod: map['renewalPeriod'] == null ? null : map['renewalPeriod'] as double,
    );
  }
}

