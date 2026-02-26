// ignore_for_file: unused_element, unnecessary_cast

class AwsClusterBinaryAuthorization {
  /// Mode of operation for Binary Authorization policy evaluation. Possible values: DISABLED, PROJECT_SINGLETON_POLICY_ENFORCE
  final String? evaluationMode;

  AwsClusterBinaryAuthorization({
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

  factory AwsClusterBinaryAuthorization.fromMap(Map<String, dynamic> map) {
    return AwsClusterBinaryAuthorization(
      evaluationMode: map['evaluationMode'] == null
          ? null
          : map['evaluationMode'] as String,
    );
  }
}
