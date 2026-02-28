// ignore_for_file: unused_element, unnecessary_cast

class ClusterBinaryAuthorization {
  /// Enable Binary Authorization for this cluster.
  final bool? enabled;

  /// Mode of operation for Binary Authorization policy evaluation.
  final String? evaluationMode;

  /// Creates a new [ClusterBinaryAuthorization].
  /// [enabled] Enable Binary Authorization for this cluster.
  /// [evaluationMode] Mode of operation for Binary Authorization policy evaluation.
  ClusterBinaryAuthorization({
    this.enabled,
    this.evaluationMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final evaluationModeValue = evaluationMode;
    if (evaluationModeValue != null) {
      map['evaluationMode'] = evaluationModeValue;
    }
    return map;
  }

  factory ClusterBinaryAuthorization.fromMap(Map<String, dynamic> map) {
    return ClusterBinaryAuthorization(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      evaluationMode: map['evaluationMode'] == null
          ? null
          : map['evaluationMode'] as String,
    );
  }
}
