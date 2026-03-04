// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cors_rule_response.dart';

/// Definition of CorsConfiguration
class CorsConfigurationResponse {
  /// A set of origins and methods (cross-origin access that you want to allow). You can add up to 100 rules to the configuration.
  final pulumi.Input<List<CorsRuleResponse>>? corsRules;

  /// Creates a new [CorsConfigurationResponse].
  /// [corsRules] A set of origins and methods (cross-origin access that you want to allow). You can add up to 100 rules to the configuration.
  CorsConfigurationResponse({this.corsRules});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'corsRules':
          ?pulumi.Input.mapOptionalInputValue<
            List<CorsRuleResponse>,
            List<Map<String, dynamic>>
          >(
            corsRules,
            (value) =>
                pulumi.Input.encodeList<CorsRuleResponse, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
    };
  }

  factory CorsConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return CorsConfigurationResponse(
      corsRules: (() {
        final guardedValue = map['corsRules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<CorsRuleResponse>(
            guardedValue,
            (value) => CorsRuleResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
