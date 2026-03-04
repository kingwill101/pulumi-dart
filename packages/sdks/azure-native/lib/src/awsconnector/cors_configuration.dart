// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cors_rule.dart';

/// Definition of CorsConfiguration
class CorsConfiguration {
  /// A set of origins and methods (cross-origin access that you want to allow). You can add up to 100 rules to the configuration.
  final pulumi.Input<List<CorsRule>>? corsRules;

  /// Creates a new [CorsConfiguration].
  /// [corsRules] A set of origins and methods (cross-origin access that you want to allow). You can add up to 100 rules to the configuration.
  CorsConfiguration({this.corsRules});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'corsRules':
          ?pulumi.Input.mapOptionalInputValue<
            List<CorsRule>,
            List<Map<String, dynamic>>
          >(
            corsRules,
            (value) => pulumi.Input.encodeList<CorsRule, Map<String, dynamic>>(
              value,
              (value) => value.toMap(),
            ),
          ),
    };
  }

  factory CorsConfiguration.fromMap(Map<String, dynamic> map) {
    return CorsConfiguration(
      corsRules: (() {
        final guardedValue = map['corsRules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<CorsRule>(
            guardedValue,
            (value) => CorsRule.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
    );
  }
}
