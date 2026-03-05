// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of OwnershipControlsRule
class OwnershipControlsRule {
  /// Specifies an object ownership rule.
  final pulumi.Input<String>? objectOwnership;

  /// Creates a new [OwnershipControlsRule].
  /// [objectOwnership] Specifies an object ownership rule.
  OwnershipControlsRule({
    this.objectOwnership,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectOwnership': ?objectOwnership,
    };
  }

  factory OwnershipControlsRule.fromMap(Map<String, dynamic> map) {
    return OwnershipControlsRule(
      objectOwnership: (() { final guardedValue = map['objectOwnership']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

