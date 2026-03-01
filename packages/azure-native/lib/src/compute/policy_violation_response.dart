// ignore_for_file: unused_element, unnecessary_cast


/// A policy violation reported against a gallery artifact.
class PolicyViolationResponse {
  /// Describes the nature of the policy violation.
  final String? category;
  /// Describes specific details about why this policy violation was reported.
  final String? details;

  /// Creates a new [PolicyViolationResponse].
  /// [category] Describes the nature of the policy violation.
  /// [details] Describes specific details about why this policy violation was reported.
  PolicyViolationResponse({
    this.category,
    this.details,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'details': ?details,
    };
  }

  factory PolicyViolationResponse.fromMap(Map<String, dynamic> map) {
    return PolicyViolationResponse(
      category: map['category'] == null ? null : map['category'] as String,
      details: map['details'] == null ? null : map['details'] as String,
    );
  }
}

