// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A policy violation reported against a gallery artifact.
class PolicyViolationResponse {
  /// Describes the nature of the policy violation.
  final pulumi.Input<String>? category;
  /// Describes specific details about why this policy violation was reported.
  final pulumi.Input<String>? details;

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
      category: map['category'] == null ? null : (map['category'] as String).input(),
      details: map['details'] == null ? null : (map['details'] as String).input(),
    );
  }
}

