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
      matchState: (() { final guardedValue = map['matchState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      suffix: (() { final guardedValue = map['suffix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

