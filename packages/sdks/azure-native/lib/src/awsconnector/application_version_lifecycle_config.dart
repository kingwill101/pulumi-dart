// ignore_for_file: unused_element, unnecessary_cast

import 'max_age_rule.dart';
import 'max_count_rule.dart';

/// Definition of ApplicationVersionLifecycleConfig
class ApplicationVersionLifecycleConfig {
  /// Specify a max age rule to restrict the length of time that application versions are retained for an application.
  final MaxAgeRule? maxAgeRule;
  /// Specify a max count rule to restrict the number of application versions that are retained for an application.
  final MaxCountRule? maxCountRule;

  /// Creates a new [ApplicationVersionLifecycleConfig].
  /// [maxAgeRule] Specify a max age rule to restrict the length of time that application versions are retained for an application.
  /// [maxCountRule] Specify a max count rule to restrict the number of application versions that are retained for an application.
  ApplicationVersionLifecycleConfig({
    this.maxAgeRule,
    this.maxCountRule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxAgeRule': ?maxAgeRule == null ? null : maxAgeRule!.toMap(),
      'maxCountRule': ?maxCountRule == null ? null : maxCountRule!.toMap(),
    };
  }

  factory ApplicationVersionLifecycleConfig.fromMap(Map<String, dynamic> map) {
    return ApplicationVersionLifecycleConfig(
      maxAgeRule: map['maxAgeRule'] == null ? null : MaxAgeRule.fromMap((map['maxAgeRule'] as Map).cast<String, dynamic>()),
      maxCountRule: map['maxCountRule'] == null ? null : MaxCountRule.fromMap((map['maxCountRule'] as Map).cast<String, dynamic>()),
    );
  }
}

