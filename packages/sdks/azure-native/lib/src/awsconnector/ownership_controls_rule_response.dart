// ignore_for_file: unused_element, unnecessary_cast


/// Definition of OwnershipControlsRule
class OwnershipControlsRuleResponse {
  /// Specifies an object ownership rule.
  final String? objectOwnership;

  /// Creates a new [OwnershipControlsRuleResponse].
  /// [objectOwnership] Specifies an object ownership rule.
  OwnershipControlsRuleResponse({
    this.objectOwnership,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectOwnership': ?objectOwnership,
    };
  }

  factory OwnershipControlsRuleResponse.fromMap(Map<String, dynamic> map) {
    return OwnershipControlsRuleResponse(
      objectOwnership: map['objectOwnership'] == null ? null : map['objectOwnership'] as String,
    );
  }
}

