// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'max_age_rule.dart';
import 'max_count_rule.dart';

/// Definition of ApplicationVersionLifecycleConfig
class ApplicationVersionLifecycleConfig {
  /// Specify a max age rule to restrict the length of time that application versions are retained for an application.
  final pulumi.Input<MaxAgeRule>? maxAgeRule;
  /// Specify a max count rule to restrict the number of application versions that are retained for an application.
  final pulumi.Input<MaxCountRule>? maxCountRule;

  /// Creates a new [ApplicationVersionLifecycleConfig].
  /// [maxAgeRule] Specify a max age rule to restrict the length of time that application versions are retained for an application.
  /// [maxCountRule] Specify a max count rule to restrict the number of application versions that are retained for an application.
  const ApplicationVersionLifecycleConfig({
    this.maxAgeRule,
    this.maxCountRule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxAgeRule': ?pulumi.Input.mapOptionalInputValue<MaxAgeRule, Map<String, dynamic>>(maxAgeRule, (value) => value.toMap()),
      'maxCountRule': ?pulumi.Input.mapOptionalInputValue<MaxCountRule, Map<String, dynamic>>(maxCountRule, (value) => value.toMap()),
    };
  }

  factory ApplicationVersionLifecycleConfig.fromMap(Map<String, dynamic> map) {
    return ApplicationVersionLifecycleConfig(
      maxAgeRule: (() { final guardedValue = map['maxAgeRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MaxAgeRule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maxCountRule: (() { final guardedValue = map['maxCountRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MaxCountRule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
