// ignore_for_file: unused_element, unnecessary_cast

class AttachedClusterBinaryAuthorization {
  /// Configure Binary Authorization evaluation mode.
  /// Possible values are: `DISABLED`, `PROJECT_SINGLETON_POLICY_ENFORCE`.
  final String? evaluationMode;

  AttachedClusterBinaryAuthorization({
    this.evaluationMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final evaluationModeValue = evaluationMode;
    if (evaluationModeValue != null) {
      map['evaluationMode'] = evaluationModeValue;
    }
    return map;
  }

  factory AttachedClusterBinaryAuthorization.fromMap(Map<String, dynamic> map) {
    return AttachedClusterBinaryAuthorization(
      evaluationMode: map['evaluationMode'] == null
          ? null
          : map['evaluationMode'] as String,
    );
  }
}
