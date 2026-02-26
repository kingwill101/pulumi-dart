// ignore_for_file: unused_element, unnecessary_cast

class BareMetalClusterBinaryAuthorization {
  /// Mode of operation for binauthz policy evaluation. If unspecified,
  /// defaults to DISABLED.
  /// Possible values are: `DISABLED`, `PROJECT_SINGLETON_POLICY_ENFORCE`.
  final String? evaluationMode;

  BareMetalClusterBinaryAuthorization({
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

  factory BareMetalClusterBinaryAuthorization.fromMap(
      Map<String, dynamic> map) {
    return BareMetalClusterBinaryAuthorization(
      evaluationMode: map['evaluationMode'] == null
          ? null
          : map['evaluationMode'] as String,
    );
  }
}
