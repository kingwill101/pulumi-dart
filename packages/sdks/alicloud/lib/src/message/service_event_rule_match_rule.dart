// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceEventRuleMatchRule {
  /// Match state. valid values: `true`, `false`.
  final pulumi.Input<String>? matchState;
  final pulumi.Input<String>? name;
  /// Prefix matching rule.
  final pulumi.Input<String>? prefix;
  /// Suffix matching rule.
  final pulumi.Input<String>? suffix;

  /// Creates a new [ServiceEventRuleMatchRule].
  /// [matchState] Match state. valid values: `true`, `false`.
  /// [name] Optional.
  /// [prefix] Prefix matching rule.
  /// [suffix] Suffix matching rule.
  ServiceEventRuleMatchRule({
    this.matchState,
    this.name,
    this.prefix,
    this.suffix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchState': ?matchState,
      'name': ?name,
      'prefix': ?prefix,
      'suffix': ?suffix,
    };
  }

  factory ServiceEventRuleMatchRule.fromMap(Map<String, dynamic> map) {
    return ServiceEventRuleMatchRule(
      matchState: map['matchState'] == null ? null : (map['matchState'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      prefix: map['prefix'] == null ? null : (map['prefix'] as String).input(),
      suffix: map['suffix'] == null ? null : (map['suffix'] as String).input(),
    );
  }
}

