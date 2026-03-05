// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_model_sku_rate_limit_rule_pattern_properties_response.dart';

class EndpointModelSkuRateLimitRulePropertiesResponse {
  final pulumi.Input<double>? count;
  /// If the dynamic throttling is enabled.
  final pulumi.Input<bool>? dynamicThrottlingEnabled;
  final pulumi.Input<String>? key;
  final pulumi.Input<List<EndpointModelSkuRateLimitRulePatternPropertiesResponse>>? matchPatterns;
  final pulumi.Input<double>? minCount;
  final pulumi.Input<double>? renewalPeriod;

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
      'matchPatterns': ?pulumi.Input.mapOptionalInputValue<List<EndpointModelSkuRateLimitRulePatternPropertiesResponse>, List<Map<String, dynamic>>>(matchPatterns, (value) => pulumi.Input.encodeList<EndpointModelSkuRateLimitRulePatternPropertiesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'minCount': ?minCount,
      'renewalPeriod': ?renewalPeriod,
    };
  }

  factory EndpointModelSkuRateLimitRulePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return EndpointModelSkuRateLimitRulePropertiesResponse(
      count: (() { final guardedValue = map['count']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      dynamicThrottlingEnabled: (() { final guardedValue = map['dynamicThrottlingEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      matchPatterns: (() { final guardedValue = map['matchPatterns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EndpointModelSkuRateLimitRulePatternPropertiesResponse>(guardedValue, (value) => EndpointModelSkuRateLimitRulePatternPropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      minCount: (() { final guardedValue = map['minCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      renewalPeriod: (() { final guardedValue = map['renewalPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

