// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// TBD. Relevant only for rules of the kind LogAlert.
class RuleResolveConfiguration {
  /// The flag that indicates whether or not to auto resolve a fired alert.
  final pulumi.Input<bool>? autoResolved;
  /// The duration a rule must evaluate as healthy before the fired alert is automatically resolved represented in ISO 8601 duration format.
  final pulumi.Input<String>? timeToResolve;

  /// Creates a new [RuleResolveConfiguration].
  /// [autoResolved] The flag that indicates whether or not to auto resolve a fired alert.
  /// [timeToResolve] The duration a rule must evaluate as healthy before the fired alert is automatically resolved represented in ISO 8601 duration format.
  const RuleResolveConfiguration({
    this.autoResolved,
    this.timeToResolve,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoResolved': ?autoResolved,
      'timeToResolve': ?timeToResolve,
    };
  }

  factory RuleResolveConfiguration.fromMap(Map<String, dynamic> map) {
    return RuleResolveConfiguration(
      autoResolved: (() { final guardedValue = map['autoResolved']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      timeToResolve: (() { final guardedValue = map['timeToResolve']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

