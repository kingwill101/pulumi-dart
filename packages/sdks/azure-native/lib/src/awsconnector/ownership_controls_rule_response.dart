// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of OwnershipControlsRule
class OwnershipControlsRuleResponse {
  /// Specifies an object ownership rule.
  final pulumi.Input<String?>? objectOwnership;

  /// Creates a new [OwnershipControlsRuleResponse].
  /// [objectOwnership] Specifies an object ownership rule.
  const OwnershipControlsRuleResponse({
    this.objectOwnership,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectOwnership': ?objectOwnership,
    };
  }

  factory OwnershipControlsRuleResponse.fromMap(Map<String, dynamic> map) {
    return OwnershipControlsRuleResponse(
      objectOwnership: (() { final guardedValue = map['objectOwnership']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
