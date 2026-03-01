// ignore_for_file: unused_element, unnecessary_cast


/// SelfSubjectRulesReviewSpec defines the specification for SelfSubjectRulesReview.
class SelfSubjectRulesReviewSpecPatch {
  /// Namespace to evaluate rules for. Required.
  final String? namespace;

  /// Creates a new [SelfSubjectRulesReviewSpecPatch].
  /// [namespace] Namespace to evaluate rules for. Required.
  SelfSubjectRulesReviewSpecPatch({
    this.namespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespace': ?namespace,
    };
  }

  factory SelfSubjectRulesReviewSpecPatch.fromMap(Map<String, dynamic> map) {
    return SelfSubjectRulesReviewSpecPatch(
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
    );
  }
}

