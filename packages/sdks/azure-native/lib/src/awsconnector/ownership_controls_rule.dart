// ignore_for_file: unused_element, unnecessary_cast


/// Definition of OwnershipControlsRule
class OwnershipControlsRule {
  /// Specifies an object ownership rule.
  final String? objectOwnership;

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
      objectOwnership: map['objectOwnership'] == null ? null : map['objectOwnership'] as String,
    );
  }
}

