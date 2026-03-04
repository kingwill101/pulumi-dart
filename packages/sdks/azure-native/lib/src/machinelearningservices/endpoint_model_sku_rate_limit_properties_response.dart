// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_model_sku_rate_limit_rule_properties_response.dart';

class EndpointModelSkuRateLimitPropertiesResponse {
  /// The count value of Call Rate Limit.
  final pulumi.Input<double>? count;

  /// The renewal period in seconds of Call Rate Limit.
  final pulumi.Input<double>? renewalPeriod;

  /// The call rate limit for the model.
  final pulumi.Input<List<EndpointModelSkuRateLimitRulePropertiesResponse>>?
  rules;

  /// Creates a new [EndpointModelSkuRateLimitPropertiesResponse].
  /// [count] The count value of Call Rate Limit.
  /// [renewalPeriod] The renewal period in seconds of Call Rate Limit.
  /// [rules] The call rate limit for the model.
  EndpointModelSkuRateLimitPropertiesResponse({
    this.count,
    this.renewalPeriod,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'renewalPeriod': ?renewalPeriod,
      'rules':
          ?pulumi.Input.mapOptionalInputValue<
            List<EndpointModelSkuRateLimitRulePropertiesResponse>,
            List<Map<String, dynamic>>
          >(
            rules,
            (value) =>
                pulumi.Input.encodeList<
                  EndpointModelSkuRateLimitRulePropertiesResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory EndpointModelSkuRateLimitPropertiesResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return EndpointModelSkuRateLimitPropertiesResponse(
      count: (() {
        final guardedValue = map['count'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      renewalPeriod: (() {
        final guardedValue = map['renewalPeriod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      rules: (() {
        final guardedValue = map['rules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            EndpointModelSkuRateLimitRulePropertiesResponse
          >(
            guardedValue,
            (value) => EndpointModelSkuRateLimitRulePropertiesResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
