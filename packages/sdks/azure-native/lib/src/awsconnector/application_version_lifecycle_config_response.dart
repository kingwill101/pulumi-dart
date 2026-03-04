// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'max_age_rule_response.dart';
import 'max_count_rule_response.dart';

/// Definition of ApplicationVersionLifecycleConfig
class ApplicationVersionLifecycleConfigResponse {
  /// Specify a max age rule to restrict the length of time that application versions are retained for an application.
  final pulumi.Input<MaxAgeRuleResponse>? maxAgeRule;

  /// Specify a max count rule to restrict the number of application versions that are retained for an application.
  final pulumi.Input<MaxCountRuleResponse>? maxCountRule;

  /// Creates a new [ApplicationVersionLifecycleConfigResponse].
  /// [maxAgeRule] Specify a max age rule to restrict the length of time that application versions are retained for an application.
  /// [maxCountRule] Specify a max count rule to restrict the number of application versions that are retained for an application.
  ApplicationVersionLifecycleConfigResponse({
    this.maxAgeRule,
    this.maxCountRule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxAgeRule':
          ?pulumi.Input.mapOptionalInputValue<
            MaxAgeRuleResponse,
            Map<String, dynamic>
          >(maxAgeRule, (value) => value.toMap()),
      'maxCountRule':
          ?pulumi.Input.mapOptionalInputValue<
            MaxCountRuleResponse,
            Map<String, dynamic>
          >(maxCountRule, (value) => value.toMap()),
    };
  }

  factory ApplicationVersionLifecycleConfigResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ApplicationVersionLifecycleConfigResponse(
      maxAgeRule: (() {
        final guardedValue = map['maxAgeRule'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MaxAgeRuleResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      maxCountRule: (() {
        final guardedValue = map['maxCountRule'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MaxCountRuleResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
