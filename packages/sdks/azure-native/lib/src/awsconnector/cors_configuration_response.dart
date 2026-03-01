// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cors_rule_response.dart';

/// Definition of CorsConfiguration
class CorsConfigurationResponse {
  /// A set of origins and methods (cross-origin access that you want to allow). You can add up to 100 rules to the configuration.
  final List<CorsRuleResponse>? corsRules;

  /// Creates a new [CorsConfigurationResponse].
  /// [corsRules] A set of origins and methods (cross-origin access that you want to allow). You can add up to 100 rules to the configuration.
  CorsConfigurationResponse({
    this.corsRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'corsRules': ?corsRules == null ? null : pulumi.Input.encodeList<CorsRuleResponse, Map<String, dynamic>>(corsRules!, (value) => value.toMap()),
    };
  }

  factory CorsConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return CorsConfigurationResponse(
      corsRules: map['corsRules'] == null ? null : pulumi.Input.decodeList<CorsRuleResponse>(map['corsRules'], (value) => CorsRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

