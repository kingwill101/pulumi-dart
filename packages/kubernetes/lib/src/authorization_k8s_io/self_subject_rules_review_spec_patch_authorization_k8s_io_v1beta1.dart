// ignore_for_file: unused_element, unnecessary_cast


class SelfSubjectRulesReviewSpecPatchAuthorizationK8sIoV1beta1 {
  /// Namespace to evaluate rules for. Required.
  final String? namespace;

  /// Creates a new [SelfSubjectRulesReviewSpecPatchAuthorizationK8sIoV1beta1].
  /// [namespace] Namespace to evaluate rules for. Required.
  SelfSubjectRulesReviewSpecPatchAuthorizationK8sIoV1beta1({
    this.namespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespace': ?namespace,
    };
  }

  factory SelfSubjectRulesReviewSpecPatchAuthorizationK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return SelfSubjectRulesReviewSpecPatchAuthorizationK8sIoV1beta1(
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
    );
  }
}

